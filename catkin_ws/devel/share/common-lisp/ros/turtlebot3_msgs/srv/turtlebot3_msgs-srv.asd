
(cl:in-package :asdf)

(defsystem "turtlebot3_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetFollowState" :depends-on ("_package_SetFollowState"))
    (:file "_package_SetFollowState" :depends-on ("_package"))
    (:file "TakePanorama" :depends-on ("_package_TakePanorama"))
    (:file "_package_TakePanorama" :depends-on ("_package"))
  ))