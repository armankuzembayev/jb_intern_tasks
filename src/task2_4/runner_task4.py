#!/usr/bin/env python

import rospy
import numpy as np
from geometry_msgs.msg import Pose
from geometry_msgs.msg import PoseArray  
from std_srvs.srv import Trigger
from jb.srv import remove_runner # service for removing the runner

class Runner:
    def __init__(self, c):
        self.runnerConst = c
    def get_const(self):
        return self.runnerConst

class Run:
    def __init__(self):
        self.pub = rospy.Publisher('coordinates', PoseArray, queue_size=10)
        self.service_add = rospy.Service('add_runner', Trigger, self.callback_add_runner) # service
        self.service_remove = rospy.Service('remove_runner', remove_runner, self.callback_remove_runner) # service
        self.rate = rospy.Rate(10) # 10hz
        self.x = 0.0
        self.const = 1
        self.runners = [Runner(self.const)] # array of all runners
        self.loop()

    def callback_add_runner(self, req): # adding new runner
        self.const += 1
        runner = Runner(self.const)
        self.runners.append(runner)
        print('The number of runners is {}'.format(len(self.runners)))
        return True, 'New runner is added'

    def callback_remove_runner(self, req): # removing the runner
        if req.runner_id > len(self.runners):
            return False, 'No runner with such ID'
        self.runners.pop(req.runner_id - 1)
        #self.runners.append(runner)
        print('The number of runners is {}'.format(len(self.runners)))
        return True, 'Runner #{} was removed'.format(req.runner_id)

    def loop(self):
        while not rospy.is_shutdown():
            poseArray = PoseArray()
            poseArray.header.frame_id = '/my_coordinate'
            poseArray.header.stamp = rospy.Time.now()
                       
            for runner in self.runners: # recalculating the position of each runner
                pose = Pose() 
                pose.position.x = self.x
                pose.position.y = np.sin(self.x * runner.get_const() * np.pi / 180)
                pose.position.z = np.sin(self.x * runner.get_const() * np.pi / 180) + np.cos(pose.position.y * runner.get_const() * np.pi / 180)
                pose.orientation.w = 1.0
                poseArray.poses.append(pose)

            self.pub.publish(poseArray)
            self.x += 1
            self.rate.sleep()


        
if __name__ == '__main__':
    rospy.init_node('runner_task4')
    Run()
