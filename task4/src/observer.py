#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Point
from geometry_msgs.msg import PoseArray 

class Observer():
    def __init__(self):
        self.sub = rospy.Subscriber('coordinates', PoseArray, self.callback)

    def callback(self, poses):
        length = len(poses.poses)
        for i in range(length):
            #rospy.loginfo("The # %d runner's position is: x = [%f], y = [%f], z = [%f]", i + 1, poses.poses[i].position.x, poses.poses[i].position.y, poses.poses[i].position.z)
            print("The # {} runner's position is: x = {}, y = {}, z = {}".format(i + 1, poses.poses[i].position.x, poses.poses[i].position.y, poses.poses[i].position.z))
	print('')
if __name__ == '__main__':
    rospy.init_node('observer_task4')
    Observer()
    rospy.spin()
