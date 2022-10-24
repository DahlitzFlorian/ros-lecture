; Auto-generated. Do not edit!


(cl:in-package publisher_subscriber-msg)


;//! \htmlinclude RGBColor.msg.html

(cl:defclass <RGBColor> (roslisp-msg-protocol:ros-message)
  ((R
    :reader R
    :initarg :R
    :type cl:fixnum
    :initform 0)
   (G
    :reader G
    :initarg :G
    :type cl:fixnum
    :initform 0)
   (B
    :reader B
    :initarg :B
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RGBColor (<RGBColor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RGBColor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RGBColor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name publisher_subscriber-msg:<RGBColor> is deprecated: use publisher_subscriber-msg:RGBColor instead.")))

(cl:ensure-generic-function 'R-val :lambda-list '(m))
(cl:defmethod R-val ((m <RGBColor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader publisher_subscriber-msg:R-val is deprecated.  Use publisher_subscriber-msg:R instead.")
  (R m))

(cl:ensure-generic-function 'G-val :lambda-list '(m))
(cl:defmethod G-val ((m <RGBColor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader publisher_subscriber-msg:G-val is deprecated.  Use publisher_subscriber-msg:G instead.")
  (G m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <RGBColor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader publisher_subscriber-msg:B-val is deprecated.  Use publisher_subscriber-msg:B instead.")
  (B m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RGBColor>) ostream)
  "Serializes a message object of type '<RGBColor>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'R)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'G)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'B)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RGBColor>) istream)
  "Deserializes a message object of type '<RGBColor>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'R)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'G)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'B)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RGBColor>)))
  "Returns string type for a message object of type '<RGBColor>"
  "publisher_subscriber/RGBColor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RGBColor)))
  "Returns string type for a message object of type 'RGBColor"
  "publisher_subscriber/RGBColor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RGBColor>)))
  "Returns md5sum for a message object of type '<RGBColor>"
  "25e8e0a5fcebfd5489b6ec59d3303e32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RGBColor)))
  "Returns md5sum for a message object of type 'RGBColor"
  "25e8e0a5fcebfd5489b6ec59d3303e32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RGBColor>)))
  "Returns full string definition for message of type '<RGBColor>"
  (cl:format cl:nil "uint8 R~%uint8 G~%uint8 B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RGBColor)))
  "Returns full string definition for message of type 'RGBColor"
  (cl:format cl:nil "uint8 R~%uint8 G~%uint8 B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RGBColor>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RGBColor>))
  "Converts a ROS message object to a list"
  (cl:list 'RGBColor
    (cl:cons ':R (R msg))
    (cl:cons ':G (G msg))
    (cl:cons ':B (B msg))
))
