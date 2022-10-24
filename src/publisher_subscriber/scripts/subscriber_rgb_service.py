#!/usr/bin/env python3
import rospy

from std_msgs.msg import String
from std_srvs.srv import SetBool

from publisher_subscriber import msg
from publisher_subscriber import srv


def hexcode_client(r, g, b):
    rospy.wait_for_service("hexcode_calculation")
    try:
        calculate_hexcode = rospy.ServiceProxy('hexcode_calculation', srv.CalculateHexCode)
        resp = calculate_hexcode(r, g, b)
        print(resp)
        print(resp.hexcode)
        return resp.hexcode
    except rospy.ServiceException as e:
        print("Service call failed")


def callback(data):
    hex_code = hexcode_client(data.R, data.G, data.B)
    rospy.loginfo(rospy.get_caller_id() + " %s (Received: %d, %d, %d)", hex_code, data.R, data.G, data.B)


def subscriber():
    rospy.init_node('rgb_hex_node', anonymous=True)
    rospy.Subscriber('/rgb', msg.RGBColor, callback)
    rospy.spin()


if __name__ == '__main__':
    subscriber()
