#!/usr/bin/env python3
import random

import rospy

from publisher_subscriber import msg


def get_rgb():
    return [
        random.randint(0, 255),
        random.randint(0, 255),
        random.randint(0, 255),
    ]


def publisher():
    pub = rospy.Publisher('/rgb', msg.RGBColor, queue_size=10)
    rospy.init_node('publisher', anonymous=True)
    rate = rospy.Rate(1)  # 1hz
    
    while not rospy.is_shutdown():
        rgb = get_rgb()
        rospy.loginfo(rgb)
        rgb_container = msg.RGBColor()
        rgb_container.R, rgb_container.G, rgb_container.B = rgb
        pub.publish(rgb_container)
        rate.sleep()


if __name__ == "__main__":
    try:
        publisher()
    except rospy.ROSInterruptException:
        pass
