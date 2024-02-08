#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

if __name__ == "__main__":

    rospy.init_node("agent_controller", anonymous=True) # Node name

    publishing = rospy.Publisher('riot_hq', String, queue_size=10) # Publishin here

    rate = rospy.Rate(0.2) # Every 5 seconds

    while not rospy.is_shutdown():

        name = "Khaja"
        str = f"Hello {name}"

        rospy.loginfo(str)
        publishing.publish(str)

        rate.sleep()

