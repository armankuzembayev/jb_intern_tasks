#!/usr/bin/env python

import rospy
import numpy as np
from geometry_msgs.msg import Point 

class Runner:
    def __init__(self):
        self.pub = rospy.Publisher('point', Point, queue_size=10)
        self.rate = rospy.Rate(10) # 10hz
        self.x = 0.0
        self.loop()

    def loop(self):
        while not rospy.is_shutdown():
            point = Point()
            point.x = self.x
            point.y = np.sin(self.x * np.pi / 180) # equation for calculating y
            point.z = np.sin(self.x * np.pi / 180) + np.cos(point.y * np.pi / 180) # equation for calculating z
            self.pub.publish(point)
            self.x += 1
            self.rate.sleep()

        
if __name__ == '__main__':
    rospy.init_node('runner_task1')
    Runner()
