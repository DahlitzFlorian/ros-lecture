#!/usr/bin/env python3
import rospy

from std_msgs.msg import String
from std_srvs.srv import SetBool

from publisher_subscriber import msg


counter = 0
pub = None


class Subscriber:
    def __init__(self):
        self.counter = 0
        self.pub = rospy.Publisher("/rgb_hex", String, queue_size=10)
        rospy.Subscriber('/rgb', msg.RGBColor, self.callback)
        self.reset_service = rospy.Service("/reset_counter", SetBool, self.callback_reset_counter)
    
    def rgb2hex(self, r, g, b):
        return "#{:02x}{:02x}{:02x}".format(r,g,b)


    def callback_reset_counter(self, req):
        if req.data:
            global counter
            counter = 0
            return True, "Counter has been successfully reset"
        return False, "Counter has not been reset"


    def callback(self, data):
        self.counter += 1

        hex_code = self.rgb2hex(data.R, data.G, data.B)
        rospy.loginfo(rospy.get_caller_id() + " %s (Received: %d, %d, %d)", hex_code, data.R, data.G, data.B)
        self.pub.publish(hex_code)


if __name__ == '__main__':
    rospy.init_node('rgb_hex_node', anonymous=True)
    Subscriber()
    rospy.spin()
