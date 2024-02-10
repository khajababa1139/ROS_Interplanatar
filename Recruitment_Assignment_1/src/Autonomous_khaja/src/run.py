#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion
from math import *
from coordinates import coordinates

class skibidiBot:
    def __init__(self):

        rospy.init_node('runner_node', anonymous=True)
        rospy.Subscriber('/odom', Odometry, self.odom_callback)
        self.pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

        self.target_coordinates = sorted(coordinates) # sort kore entry
        self.current_target = 0

        self.current_x = 0.0
        self.current_y = 0.0
        self.current_yaw = 0.0

        self.linear_speed = 0.2 # goes brr if too much
        self.angular_speed = 0.5

    def odom_callback(self, msg):
        
        self.current_x = msg.pose.pose.position.x
        self.current_y = msg.pose.pose.position.y

        quaternion = ( #new pakage
            msg.pose.pose.orientation.x,
            msg.pose.pose.orientation.y,
            msg.pose.pose.orientation.z,
            msg.pose.pose.orientation.w
        )
        _, _, self.current_yaw = euler_from_quaternion(quaternion)

    def goBrrr(self):
        rate = rospy.Rate(10)  

        while not rospy.is_shutdown():

            target_x, target_y = self.target_coordinates[self.current_target]
            distance = sqrt((target_x - self.current_x)**2 + (target_y - self.current_y)**2)

            if distance < 0.1:
                rospy.loginfo(f"Reached target {self.current_target + 1} / {len(self.target_coordinates)}")
                
                self.current_target += 1

                if self.current_target >= len(self.target_coordinates):
                    rospy.loginfo("All targets reached")
                    self.pub.publish(Twist())
                    break

            else:

                angle_to_target = atan2(target_y - self.current_y, target_x - self.current_x)
                angular_velocity = self.angular_speed * (angle_to_target - self.current_yaw)

                velocity = Twist()
                velocity.linear.x = self.linear_speed
                velocity.angular.z = angular_velocity

                self.pub.publish(velocity)

            rate.sleep()

if __name__ == '__main__':

    navigator = skibidiBot()
    navigator.goBrrr()

