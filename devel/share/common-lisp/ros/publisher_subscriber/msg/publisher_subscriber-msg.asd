
(cl:in-package :asdf)

(defsystem "publisher_subscriber-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RGBColor" :depends-on ("_package_RGBColor"))
    (:file "_package_RGBColor" :depends-on ("_package"))
  ))