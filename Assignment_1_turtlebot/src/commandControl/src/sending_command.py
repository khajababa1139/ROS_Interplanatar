#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

class sendNode:
    
    def __init__(self) -> None:
        rospy.init_node("send_node", anonymous=True)
        self.pub = rospy.Publisher('/command', String, queue_size=1)

    def send(self, command):
        self.pub.publish(command)
        rospy.loginfo(f"Sending Command: {str(command)}")

    def run(self): 
        rospy.loginfo("Node is active")
        while not rospy.is_shutdown():  
            command = input("Enter command: ")
            self.send(command)
            rospy.sleep(1)
            



if __name__ == "__main__":
    node = sendNode()
    node.run()

