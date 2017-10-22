;; Auto-generated. Do not edit!


(when (boundp 'turtlebot3_msgs::SensorState)
  (if (not (find-package "TURTLEBOT3_MSGS"))
    (make-package "TURTLEBOT3_MSGS"))
  (shadow 'SensorState (find-package "TURTLEBOT3_MSGS")))
(unless (find-package "TURTLEBOT3_MSGS::SENSORSTATE")
  (make-package "TURTLEBOT3_MSGS::SENSORSTATE"))

(in-package "ROS")
;;//! \htmlinclude SensorState.msg.html


(intern "*BUMPER_RIGHT*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*BUMPER_RIGHT* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*BUMPER_RIGHT* 1)
(intern "*BUMPER_CENTER*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*BUMPER_CENTER* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*BUMPER_CENTER* 2)
(intern "*BUMPER_LEFT*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*BUMPER_LEFT* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*BUMPER_LEFT* 4)
(intern "*CLIFF_RIGHT*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*CLIFF_RIGHT* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*CLIFF_RIGHT* 1)
(intern "*CLIFF_CENTER*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*CLIFF_CENTER* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*CLIFF_CENTER* 2)
(intern "*CLIFF_LEFT*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*CLIFF_LEFT* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*CLIFF_LEFT* 4)
(intern "*BUTTON0*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*BUTTON0* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*BUTTON0* 1)
(intern "*BUTTON1*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*BUTTON1* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*BUTTON1* 2)
(intern "*BUTTON2*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*BUTTON2* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*BUTTON2* 4)
(intern "*ERROR_LEFT_MOTOR*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*ERROR_LEFT_MOTOR* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*ERROR_LEFT_MOTOR* 1)
(intern "*ERROR_RIGHT_MOTOR*" (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(shadow '*ERROR_RIGHT_MOTOR* (find-package "TURTLEBOT3_MSGS::SENSORSTATE"))
(defconstant turtlebot3_msgs::SensorState::*ERROR_RIGHT_MOTOR* 2)
(defclass turtlebot3_msgs::SensorState
  :super ros::object
  :slots (_stamp _bumper _cliff _button _left_encoder _right_encoder _battery ))

(defmethod turtlebot3_msgs::SensorState
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:bumper __bumper) 0)
    ((:cliff __cliff) 0)
    ((:button __button) 0)
    ((:left_encoder __left_encoder) 0)
    ((:right_encoder __right_encoder) 0)
    ((:battery __battery) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _bumper (round __bumper))
   (setq _cliff (round __cliff))
   (setq _button (round __button))
   (setq _left_encoder (round __left_encoder))
   (setq _right_encoder (round __right_encoder))
   (setq _battery (float __battery))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:bumper
   (&optional __bumper)
   (if __bumper (setq _bumper __bumper)) _bumper)
  (:cliff
   (&optional __cliff)
   (if __cliff (setq _cliff __cliff)) _cliff)
  (:button
   (&optional __button)
   (if __button (setq _button __button)) _button)
  (:left_encoder
   (&optional __left_encoder)
   (if __left_encoder (setq _left_encoder __left_encoder)) _left_encoder)
  (:right_encoder
   (&optional __right_encoder)
   (if __right_encoder (setq _right_encoder __right_encoder)) _right_encoder)
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint8 _bumper
    1
    ;; uint8 _cliff
    1
    ;; uint8 _button
    1
    ;; int32 _left_encoder
    4
    ;; int32 _right_encoder
    4
    ;; float32 _battery
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint8 _bumper
       (write-byte _bumper s)
     ;; uint8 _cliff
       (write-byte _cliff s)
     ;; uint8 _button
       (write-byte _button s)
     ;; int32 _left_encoder
       (write-long _left_encoder s)
     ;; int32 _right_encoder
       (write-long _right_encoder s)
     ;; float32 _battery
       (sys::poke _battery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _bumper
     (setq _bumper (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cliff
     (setq _cliff (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _button
     (setq _button (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _left_encoder
     (setq _left_encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_encoder
     (setq _right_encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _battery
     (setq _battery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get turtlebot3_msgs::SensorState :md5sum-) "427f77f85da38bc1aa3f65ffb673c94c")
(setf (get turtlebot3_msgs::SensorState :datatype-) "turtlebot3_msgs/SensorState")
(setf (get turtlebot3_msgs::SensorState :definition-)
      "########################################
# CONSTANTS
########################################
# Bumper states (states are combined, when multiple bumpers are pressed)
uint8 BUMPER_RIGHT  = 1
uint8 BUMPER_CENTER = 2
uint8 BUMPER_LEFT   = 4

# Cliff sensor states (states are combined, when multiple cliff sensors are triggered)
uint8 CLIFF_RIGHT  = 1
uint8 CLIFF_CENTER = 2
uint8 CLIFF_LEFT   = 4

# Button states (only one button can be triggered at a time)
uint8 BUTTON0 = 1
uint8 BUTTON1 = 2
uint8 BUTTON2 = 4

# Motor errors
uint8 ERROR_LEFT_MOTOR  = 1
uint8 ERROR_RIGHT_MOTOR = 2

########################################
# Messages
########################################
time stamp
uint8  bumper
uint8  cliff
uint8  button
int32  left_encoder    # (-2,147,483,648 ~ 2,147,483,647)
int32  right_encoder   # (-2,147,483,648 ~ 2,147,483,647)
float32  battery

")



(provide :turtlebot3_msgs/SensorState "427f77f85da38bc1aa3f65ffb673c94c")


