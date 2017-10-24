
(cl:in-package :asdf)

(defsystem "apriltags-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AprilTagDetection" :depends-on ("_package_AprilTagDetection"))
    (:file "_package_AprilTagDetection" :depends-on ("_package"))
    (:file "AprilTagDetections" :depends-on ("_package_AprilTagDetections"))
    (:file "_package_AprilTagDetections" :depends-on ("_package"))
  ))