#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32, String
import sys
import tty
import termios

def get_key(): # keyboard get key
    fd = sys.stdin.fileno()
    old_settings = termios.tcgetattr(fd)
    try:
        tty.setraw(fd)
        ch = sys.stdin.read(1)
    finally:
        termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
    return ch

def main():
    #nodes and publishes
    rospy.init_node('keyboard_control_node', anonymous=True)
    servo_pub = rospy.Publisher('/servo_no', Int32, queue_size=10)
    rotate_pub = rospy.Publisher('/rotate_key', String, queue_size=10)

    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        key = get_key()

        if key.isdigit() and 1 <= int(key) <= 6: # server number

            rospy.loginfo(int(key))
            servo_pub.publish(int(key))

        elif key in ['l', 'r', 'i']: # l r and idle
            rospy.loginfo(str(key))
            rospy.loginfo("")
            rotate_pub.publish(key)

        elif key in ['0']: # shutdown
            rospy.loginfo(int(key))
            rospy.loginfo("Shutting down")
            rospy.shutdown()
        else :
            rospy.loginfo("Invalid key")
    
    rate.sleep()

if __name__ == '__main__':
    main()