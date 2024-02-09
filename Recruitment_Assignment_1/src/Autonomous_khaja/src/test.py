#!/usr/bin/env python3 

import rospy
from nav_msgs.msg import Odometry
from coordinates import coordinates


coords = coordinates
OFFSET = 0.3

REACHED = []

def check_coords(x, y):
    for i, coord in enumerate(coords):
        if x > (coord[0] - OFFSET) and x < (coord[0] + OFFSET ) and y > (coord[1] - OFFSET) and y < (coord[1] + OFFSET):
                return i


def odom_callback(msg):
    x = msg.pose.pose.position.x
    y = msg.pose.pose.position.y
    c = check_coords(x, y)
    if c:
        if c not in REACHED:
            rospy.loginfo(f"REACHED COORDINATE {c} - {coords[c]}")
            REACHED.append(c) 
    
    if len(REACHED) == len(coords):
        rospy.loginfo("REACHED ALL COORDINATES")
        rospy.signal_shutdown("REACHED ALL COORDINATES")
    

def main(): 
    rospy.init_node("test_node")
    rospy.Subscriber("/odom", Odometry, odom_callback)
    rospy.spin()

    
if __name__ == "__main__":
    main()
    
    