
(cl:in-package :asdf)

(defsystem "publisher_subscriber-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CalculateHexCode" :depends-on ("_package_CalculateHexCode"))
    (:file "_package_CalculateHexCode" :depends-on ("_package"))
  ))