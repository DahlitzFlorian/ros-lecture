;; Auto-generated. Do not edit!


(when (boundp 'publisher_subscriber::CalculateHexCode)
  (if (not (find-package "PUBLISHER_SUBSCRIBER"))
    (make-package "PUBLISHER_SUBSCRIBER"))
  (shadow 'CalculateHexCode (find-package "PUBLISHER_SUBSCRIBER")))
(unless (find-package "PUBLISHER_SUBSCRIBER::CALCULATEHEXCODE")
  (make-package "PUBLISHER_SUBSCRIBER::CALCULATEHEXCODE"))
(unless (find-package "PUBLISHER_SUBSCRIBER::CALCULATEHEXCODEREQUEST")
  (make-package "PUBLISHER_SUBSCRIBER::CALCULATEHEXCODEREQUEST"))
(unless (find-package "PUBLISHER_SUBSCRIBER::CALCULATEHEXCODERESPONSE")
  (make-package "PUBLISHER_SUBSCRIBER::CALCULATEHEXCODERESPONSE"))

(in-package "ROS")





(defclass publisher_subscriber::CalculateHexCodeRequest
  :super ros::object
  :slots (_r _g _b ))

(defmethod publisher_subscriber::CalculateHexCodeRequest
  (:init
   (&key
    ((:r __r) 0)
    ((:g __g) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _r (round __r))
   (setq _g (round __g))
   (setq _b (round __b))
   self)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; uint8 _r
    1
    ;; uint8 _g
    1
    ;; uint8 _b
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _r
       (write-byte _r s)
     ;; uint8 _g
       (write-byte _g s)
     ;; uint8 _b
       (write-byte _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _r
     (setq _r (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g
     (setq _g (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _b
     (setq _b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass publisher_subscriber::CalculateHexCodeResponse
  :super ros::object
  :slots (_hexcode ))

(defmethod publisher_subscriber::CalculateHexCodeResponse
  (:init
   (&key
    ((:hexcode __hexcode) "")
    )
   (send-super :init)
   (setq _hexcode (string __hexcode))
   self)
  (:hexcode
   (&optional __hexcode)
   (if __hexcode (setq _hexcode __hexcode)) _hexcode)
  (:serialization-length
   ()
   (+
    ;; string _hexcode
    4 (length _hexcode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _hexcode
       (write-long (length _hexcode) s) (princ _hexcode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _hexcode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hexcode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass publisher_subscriber::CalculateHexCode
  :super ros::object
  :slots ())

(setf (get publisher_subscriber::CalculateHexCode :md5sum-) "7638e56a2e7114ce46865d393cb9b4d9")
(setf (get publisher_subscriber::CalculateHexCode :datatype-) "publisher_subscriber/CalculateHexCode")
(setf (get publisher_subscriber::CalculateHexCode :request) publisher_subscriber::CalculateHexCodeRequest)
(setf (get publisher_subscriber::CalculateHexCode :response) publisher_subscriber::CalculateHexCodeResponse)

(defmethod publisher_subscriber::CalculateHexCodeRequest
  (:response () (instance publisher_subscriber::CalculateHexCodeResponse :init)))

(setf (get publisher_subscriber::CalculateHexCodeRequest :md5sum-) "7638e56a2e7114ce46865d393cb9b4d9")
(setf (get publisher_subscriber::CalculateHexCodeRequest :datatype-) "publisher_subscriber/CalculateHexCodeRequest")
(setf (get publisher_subscriber::CalculateHexCodeRequest :definition-)
      "uint8 r
uint8 g
uint8 b
---
string hexcode

")

(setf (get publisher_subscriber::CalculateHexCodeResponse :md5sum-) "7638e56a2e7114ce46865d393cb9b4d9")
(setf (get publisher_subscriber::CalculateHexCodeResponse :datatype-) "publisher_subscriber/CalculateHexCodeResponse")
(setf (get publisher_subscriber::CalculateHexCodeResponse :definition-)
      "uint8 r
uint8 g
uint8 b
---
string hexcode

")



(provide :publisher_subscriber/CalculateHexCode "7638e56a2e7114ce46865d393cb9b4d9")


