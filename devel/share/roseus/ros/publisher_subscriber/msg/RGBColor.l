;; Auto-generated. Do not edit!


(when (boundp 'publisher_subscriber::RGBColor)
  (if (not (find-package "PUBLISHER_SUBSCRIBER"))
    (make-package "PUBLISHER_SUBSCRIBER"))
  (shadow 'RGBColor (find-package "PUBLISHER_SUBSCRIBER")))
(unless (find-package "PUBLISHER_SUBSCRIBER::RGBCOLOR")
  (make-package "PUBLISHER_SUBSCRIBER::RGBCOLOR"))

(in-package "ROS")
;;//! \htmlinclude RGBColor.msg.html


(defclass publisher_subscriber::RGBColor
  :super ros::object
  :slots (_R _G _B ))

(defmethod publisher_subscriber::RGBColor
  (:init
   (&key
    ((:R __R) 0)
    ((:G __G) 0)
    ((:B __B) 0)
    )
   (send-super :init)
   (setq _R (round __R))
   (setq _G (round __G))
   (setq _B (round __B))
   self)
  (:R
   (&optional __R)
   (if __R (setq _R __R)) _R)
  (:G
   (&optional __G)
   (if __G (setq _G __G)) _G)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:serialization-length
   ()
   (+
    ;; uint8 _R
    1
    ;; uint8 _G
    1
    ;; uint8 _B
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _R
       (write-byte _R s)
     ;; uint8 _G
       (write-byte _G s)
     ;; uint8 _B
       (write-byte _B s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _R
     (setq _R (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _G
     (setq _G (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _B
     (setq _B (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get publisher_subscriber::RGBColor :md5sum-) "25e8e0a5fcebfd5489b6ec59d3303e32")
(setf (get publisher_subscriber::RGBColor :datatype-) "publisher_subscriber/RGBColor")
(setf (get publisher_subscriber::RGBColor :definition-)
      "uint8 R
uint8 G
uint8 B

")



(provide :publisher_subscriber/RGBColor "25e8e0a5fcebfd5489b6ec59d3303e32")


