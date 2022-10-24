; Auto-generated. Do not edit!


(cl:in-package publisher_subscriber-srv)


;//! \htmlinclude CalculateHexCode-request.msg.html

(cl:defclass <CalculateHexCode-request> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:fixnum
    :initform 0)
   (g
    :reader g
    :initarg :g
    :type cl:fixnum
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CalculateHexCode-request (<CalculateHexCode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalculateHexCode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalculateHexCode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name publisher_subscriber-srv:<CalculateHexCode-request> is deprecated: use publisher_subscriber-srv:CalculateHexCode-request instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <CalculateHexCode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader publisher_subscriber-srv:r-val is deprecated.  Use publisher_subscriber-srv:r instead.")
  (r m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <CalculateHexCode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader publisher_subscriber-srv:g-val is deprecated.  Use publisher_subscriber-srv:g instead.")
  (g m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <CalculateHexCode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader publisher_subscriber-srv:b-val is deprecated.  Use publisher_subscriber-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalculateHexCode-request>) ostream)
  "Serializes a message object of type '<CalculateHexCode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalculateHexCode-request>) istream)
  "Deserializes a message object of type '<CalculateHexCode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalculateHexCode-request>)))
  "Returns string type for a service object of type '<CalculateHexCode-request>"
  "publisher_subscriber/CalculateHexCodeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalculateHexCode-request)))
  "Returns string type for a service object of type 'CalculateHexCode-request"
  "publisher_subscriber/CalculateHexCodeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalculateHexCode-request>)))
  "Returns md5sum for a message object of type '<CalculateHexCode-request>"
  "7638e56a2e7114ce46865d393cb9b4d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalculateHexCode-request)))
  "Returns md5sum for a message object of type 'CalculateHexCode-request"
  "7638e56a2e7114ce46865d393cb9b4d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalculateHexCode-request>)))
  "Returns full string definition for message of type '<CalculateHexCode-request>"
  (cl:format cl:nil "uint8 r~%uint8 g~%uint8 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalculateHexCode-request)))
  "Returns full string definition for message of type 'CalculateHexCode-request"
  (cl:format cl:nil "uint8 r~%uint8 g~%uint8 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalculateHexCode-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalculateHexCode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CalculateHexCode-request
    (cl:cons ':r (r msg))
    (cl:cons ':g (g msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude CalculateHexCode-response.msg.html

(cl:defclass <CalculateHexCode-response> (roslisp-msg-protocol:ros-message)
  ((hexcode
    :reader hexcode
    :initarg :hexcode
    :type cl:string
    :initform ""))
)

(cl:defclass CalculateHexCode-response (<CalculateHexCode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalculateHexCode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalculateHexCode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name publisher_subscriber-srv:<CalculateHexCode-response> is deprecated: use publisher_subscriber-srv:CalculateHexCode-response instead.")))

(cl:ensure-generic-function 'hexcode-val :lambda-list '(m))
(cl:defmethod hexcode-val ((m <CalculateHexCode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader publisher_subscriber-srv:hexcode-val is deprecated.  Use publisher_subscriber-srv:hexcode instead.")
  (hexcode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalculateHexCode-response>) ostream)
  "Serializes a message object of type '<CalculateHexCode-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hexcode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hexcode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalculateHexCode-response>) istream)
  "Deserializes a message object of type '<CalculateHexCode-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hexcode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hexcode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalculateHexCode-response>)))
  "Returns string type for a service object of type '<CalculateHexCode-response>"
  "publisher_subscriber/CalculateHexCodeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalculateHexCode-response)))
  "Returns string type for a service object of type 'CalculateHexCode-response"
  "publisher_subscriber/CalculateHexCodeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalculateHexCode-response>)))
  "Returns md5sum for a message object of type '<CalculateHexCode-response>"
  "7638e56a2e7114ce46865d393cb9b4d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalculateHexCode-response)))
  "Returns md5sum for a message object of type 'CalculateHexCode-response"
  "7638e56a2e7114ce46865d393cb9b4d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalculateHexCode-response>)))
  "Returns full string definition for message of type '<CalculateHexCode-response>"
  (cl:format cl:nil "string hexcode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalculateHexCode-response)))
  "Returns full string definition for message of type 'CalculateHexCode-response"
  (cl:format cl:nil "string hexcode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalculateHexCode-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'hexcode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalculateHexCode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CalculateHexCode-response
    (cl:cons ':hexcode (hexcode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CalculateHexCode)))
  'CalculateHexCode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CalculateHexCode)))
  'CalculateHexCode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalculateHexCode)))
  "Returns string type for a service object of type '<CalculateHexCode>"
  "publisher_subscriber/CalculateHexCode")