#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist

class recieveNode:
    
    def __init__(self) -> None:
        rospy.init_node("recieve_node", anonymous=True)
        self.pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)

        rospy.Subscriber('/command', String, self.command_clbk)

    def command_clbk(self, data):

        commands = data.data.split()
        direction = commands[0].lower()
        speed = float(commands[1])

        rospy.loginfo(f"Command recieved: {str(direction), str(speed)}")

        velocity = Twist()

        if direction == "forward":
            velocity.linear.x = speed
        elif direction == "back":
            velocity.linear.x = -speed
        elif direction == "right":
            velocity.angular.z = -speed
        elif direction == "left":
            velocity.angular.z = speed

        self.pub.publish(velocity)

if __name__ == "__main__":
    node = recieveNode()
    rospy.spin()
