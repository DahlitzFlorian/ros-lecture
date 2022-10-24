#!/usr/bin/env python3
import rospy
from std_msgs import msg


def callback(data):
    received_number = data.data
    msg = "unknown"
    if received_number < 4:
        msg = "LOW"
    elif received_number <= 7:
        msg = "MEDIUM"
    else:
        msg = "HIGH"

    rospy.loginfo(rospy.get_caller_id() + " " + msg + " (Received: %d)", data.data)


def subscriber():
    rospy.init_node('subscriber', anonymous=True)
    rospy.Subscriber('chatter', msg.Int32, callback)
    rospy.spin()


if __name__ == '__main__':
    subscriber()
