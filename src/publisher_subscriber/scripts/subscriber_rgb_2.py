#!/usr/bin/env python3
import rospy

from std_msgs.msg import String
from std_srvs.srv import SetBool

from publisher_subscriber import msg


def callback(data):
    rospy.loginfo(rospy.get_caller_id() + " %s", data.data)


def subscriber():
    rospy.init_node('rgb_hex_node', anonymous=True)
    rospy.Subscriber('/rgb_hex', String, callback)
    rospy.spin()


if __name__ == '__main__':
    subscriber()
