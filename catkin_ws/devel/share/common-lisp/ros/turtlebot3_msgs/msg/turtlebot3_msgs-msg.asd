
(cl:in-package :asdf)

(defsystem "turtlebot3_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MotorPower" :depends-on ("_package_MotorPower"))
    (:file "_package_MotorPower" :depends-on ("_package"))
    (:file "PanoramaImg" :depends-on ("_package_PanoramaImg"))
    (:file "_package_PanoramaImg" :depends-on ("_package"))
    (:file "SensorState" :depends-on ("_package_SensorState"))
    (:file "_package_SensorState" :depends-on ("_package"))
    (:file "VersionInfo" :depends-on ("_package_VersionInfo"))
    (:file "_package_VersionInfo" :depends-on ("_package"))
  ))