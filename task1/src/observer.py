#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Point

class Observer():
    def __init__(self):
        self.sub = rospy.Subscriber('point', Point, self.callback)

    def callback(self, point):
        rospy.loginfo("The runner's position is: x = [%f], y = [%f], z = [%f]", point.x, point.y, point.z)


if __name__ == '__main__':
    rospy.init_node('observer_task1')
    Observer()
    rospy.spin()
