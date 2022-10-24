#!/usr/bin/env python3
import rospy

from std_msgs.msg import String
from std_srvs.srv import SetBool

from publisher_subscriber import msg


counter = 0
pub = None


def callback_reset_counter(req):
    if req.data:
        global counter
        counter = 0
        return True, "Counter has been successfully reset"
    return False, "Counter has not been reset"


def rgb2hex(r, g, b):
    return "#{:02x}{:02x}{:02x}".format(r,g,b)


def callback(data):
    global counter
    global pub
    counter += 1

    hex_code = rgb2hex(data.R, data.G, data.B)
    rospy.loginfo(rospy.get_caller_id() + " %s (Received: %d, %d, %d)", hex_code, data.R, data.G, data.B)
    pub.publish(hex_code)


def subscriber():
    global pub
    rospy.init_node('rgb_hex_node', anonymous=True)
    rospy.Subscriber('/rgb', msg.RGBColor, callback)
    pub = rospy.Publisher("/rgb_hex", String, queue_size=10)
    reset_service = rospy.Service("/reset_counter", SetBool, callback_reset_counter)
    rospy.spin()


if __name__ == '__main__':
    subscriber()
