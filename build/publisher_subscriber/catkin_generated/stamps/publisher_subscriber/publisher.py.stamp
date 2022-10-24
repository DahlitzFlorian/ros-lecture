#!/usr/bin/env python3
import random

import rospy
from std_msgs import msg


def publisher():
    pub = rospy.Publisher('chatter', msg.Int32, queue_size=10)
    rospy.init_node('publisher', anonymous=True)
    rate = rospy.Rate(1)  # 1hz
    
    while not rospy.is_shutdown():
        random_number = random.randint(1, 10)
        rospy.loginfo(random_number)
        pub.publish(random_number)
        rate.sleep()


if __name__ == "__main__":
    try:
        publisher()
    except rospy.ROSInterruptException:
        pass
