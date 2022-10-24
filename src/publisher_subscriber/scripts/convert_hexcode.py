#!/usr/bin/env python3
import rospy

from publisher_subscriber.srv import CalculateHexCode
from publisher_subscriber.srv import CalculateHexCodeResponse


def handle_calculation(req):
    hex_code = "#{:02x}{:02x}{:02x}".format(req.r, req.g, req.b)
    return CalculateHexCodeResponse(hex_code)


def calculation_server():
    rospy.init_node("calculation_server")
    s = rospy.Service("hexcode_calculation", CalculateHexCode, handle_calculation)
    rospy.spin()


if __name__ == "__main__":
    calculation_server()
