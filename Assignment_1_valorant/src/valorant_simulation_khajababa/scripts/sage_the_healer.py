#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from valorant_simulation_khajababa.msg import valorant

def length_clbk(msg):

    rospy.loginfo(msg.data)
    
    message_info = valorant()
    message_info.message = msg.data
    message_info.length = len(msg.data)

    rospy.loginfo(message_info.length)

    publishing.publish(message_info)

if __name__ == "__main__":

    rospy.init_node("sage_the_healer", anonymous=True)  # Node name

    rospy.Subscriber("riot_hq", String, length_clbk)

    publishing = rospy.Publisher('work_done', valorant, queue_size=10)

    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        rate.sleep()

    rospy.spin()
