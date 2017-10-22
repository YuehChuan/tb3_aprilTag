;; Auto-generated. Do not edit!


(when (boundp 'turtlebot3_msgs::SetFollowState)
  (if (not (find-package "TURTLEBOT3_MSGS"))
    (make-package "TURTLEBOT3_MSGS"))
  (shadow 'SetFollowState (find-package "TURTLEBOT3_MSGS")))
(unless (find-package "TURTLEBOT3_MSGS::SETFOLLOWSTATE")
  (make-package "TURTLEBOT3_MSGS::SETFOLLOWSTATE"))
(unless (find-package "TURTLEBOT3_MSGS::SETFOLLOWSTATEREQUEST")
  (make-package "TURTLEBOT3_MSGS::SETFOLLOWSTATEREQUEST"))
(unless (find-package "TURTLEBOT3_MSGS::SETFOLLOWSTATERESPONSE")
  (make-package "TURTLEBOT3_MSGS::SETFOLLOWSTATERESPONSE"))

(in-package "ROS")





(intern "*STOPPED*" (find-package "TURTLEBOT3_MSGS::SETFOLLOWSTATEREQUEST"))
(shadow '*STOPPED* (find-package "TURTLEBOT3_MSGS::SETFOLLOWSTATEREQUEST"))
(defconstant turtlebot3_msgs::SetFollowStateRequest::*STOPPED* 0)
(intern "*FOLLOW*" (find-package "TURTLEBOT3_MSGS::SETFOLLOWSTATEREQUEST"))
(shadow '*FOLLOW* (find-package "TURTLEBOT3_MSGS::SETFOLLOWSTATEREQUEST"))
(defconstant turtlebot3_msgs::SetFollowStateRequest::*FOLLOW* 1)
(defclass turtlebot3_msgs::SetFollowStateRequest
  :super ros::object
  :slots (_state ))

(defmethod turtlebot3_msgs::SetFollowStateRequest
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(intern "*OK*" (find-package "TURTLEBOT3_MSGS::SETFOLLOWSTATERESPONSE"))
(shadow '*OK* (find-package "TURTLEBOT3_MSGS::SETFOLLOWSTATERESPONSE"))
(defconstant turtlebot3_msgs::SetFollowStateResponse::*OK* 0)
(intern "*ERROR*" (find-package "TURTLEBOT3_MSGS::SETFOLLOWSTATERESPONSE"))
(shadow '*ERROR* (find-package "TURTLEBOT3_MSGS::SETFOLLOWSTATERESPONSE"))
(defconstant turtlebot3_msgs::SetFollowStateResponse::*ERROR* 1)
(defclass turtlebot3_msgs::SetFollowStateResponse
  :super ros::object
  :slots (_result ))

(defmethod turtlebot3_msgs::SetFollowStateResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass turtlebot3_msgs::SetFollowState
  :super ros::object
  :slots ())

(setf (get turtlebot3_msgs::SetFollowState :md5sum-) "6095eaec0ed61c547340fdc2200c8372")
(setf (get turtlebot3_msgs::SetFollowState :datatype-) "turtlebot3_msgs/SetFollowState")
(setf (get turtlebot3_msgs::SetFollowState :request) turtlebot3_msgs::SetFollowStateRequest)
(setf (get turtlebot3_msgs::SetFollowState :response) turtlebot3_msgs::SetFollowStateResponse)

(defmethod turtlebot3_msgs::SetFollowStateRequest
  (:response () (instance turtlebot3_msgs::SetFollowStateResponse :init)))

(setf (get turtlebot3_msgs::SetFollowStateRequest :md5sum-) "6095eaec0ed61c547340fdc2200c8372")
(setf (get turtlebot3_msgs::SetFollowStateRequest :datatype-) "turtlebot3_msgs/SetFollowStateRequest")
(setf (get turtlebot3_msgs::SetFollowStateRequest :definition-)
      "uint8 STOPPED = 0
uint8 FOLLOW  = 1


uint8 state

---

uint8 OK    = 0
uint8 ERROR = 1

uint8 result

")

(setf (get turtlebot3_msgs::SetFollowStateResponse :md5sum-) "6095eaec0ed61c547340fdc2200c8372")
(setf (get turtlebot3_msgs::SetFollowStateResponse :datatype-) "turtlebot3_msgs/SetFollowStateResponse")
(setf (get turtlebot3_msgs::SetFollowStateResponse :definition-)
      "uint8 STOPPED = 0
uint8 FOLLOW  = 1


uint8 state

---

uint8 OK    = 0
uint8 ERROR = 1

uint8 result

")



(provide :turtlebot3_msgs/SetFollowState "6095eaec0ed61c547340fdc2200c8372")


