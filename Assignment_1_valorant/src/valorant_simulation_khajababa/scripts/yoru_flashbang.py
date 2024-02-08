#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from valorant_simulation_khajababa.msg import valorant

def concat_clbk(msg):

    final = f"{msg.message} {msg.length}"

    rospy.loginfo(final)

    publishing.publish(final)


if __name__ == "__main__":

    rospy.init_node("yoru_flashbang", anonymous=True) # Node name

    rospy.Subscriber("work_done", valorant, concat_clbk)

    publishing = rospy.Publisher('check', String, queue_size=10)

    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        rate.sleep()

    rospy.spin()
