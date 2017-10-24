; Auto-generated. Do not edit!


(cl:in-package turtlebot3_msgs-srv)


;//! \htmlinclude SetFollowState-request.msg.html

(cl:defclass <SetFollowState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetFollowState-request (<SetFollowState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFollowState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFollowState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_msgs-srv:<SetFollowState-request> is deprecated: use turtlebot3_msgs-srv:SetFollowState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetFollowState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_msgs-srv:state-val is deprecated.  Use turtlebot3_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetFollowState-request>)))
    "Constants for message type '<SetFollowState-request>"
  '((:STOPPED . 0)
    (:FOLLOW . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetFollowState-request)))
    "Constants for message type 'SetFollowState-request"
  '((:STOPPED . 0)
    (:FOLLOW . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFollowState-request>) ostream)
  "Serializes a message object of type '<SetFollowState-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFollowState-request>) istream)
  "Deserializes a message object of type '<SetFollowState-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFollowState-request>)))
  "Returns string type for a service object of type '<SetFollowState-request>"
  "turtlebot3_msgs/SetFollowStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFollowState-request)))
  "Returns string type for a service object of type 'SetFollowState-request"
  "turtlebot3_msgs/SetFollowStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFollowState-request>)))
  "Returns md5sum for a message object of type '<SetFollowState-request>"
  "6095eaec0ed61c547340fdc2200c8372")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFollowState-request)))
  "Returns md5sum for a message object of type 'SetFollowState-request"
  "6095eaec0ed61c547340fdc2200c8372")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFollowState-request>)))
  "Returns full string definition for message of type '<SetFollowState-request>"
  (cl:format cl:nil "uint8 STOPPED = 0~%uint8 FOLLOW  = 1~%~%~%uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFollowState-request)))
  "Returns full string definition for message of type 'SetFollowState-request"
  (cl:format cl:nil "uint8 STOPPED = 0~%uint8 FOLLOW  = 1~%~%~%uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFollowState-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFollowState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFollowState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude SetFollowState-response.msg.html

(cl:defclass <SetFollowState-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetFollowState-response (<SetFollowState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFollowState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFollowState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_msgs-srv:<SetFollowState-response> is deprecated: use turtlebot3_msgs-srv:SetFollowState-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetFollowState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_msgs-srv:result-val is deprecated.  Use turtlebot3_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetFollowState-response>)))
    "Constants for message type '<SetFollowState-response>"
  '((:OK . 0)
    (:ERROR . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetFollowState-response)))
    "Constants for message type 'SetFollowState-response"
  '((:OK . 0)
    (:ERROR . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFollowState-response>) ostream)
  "Serializes a message object of type '<SetFollowState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFollowState-response>) istream)
  "Deserializes a message object of type '<SetFollowState-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFollowState-response>)))
  "Returns string type for a service object of type '<SetFollowState-response>"
  "turtlebot3_msgs/SetFollowStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFollowState-response)))
  "Returns string type for a service object of type 'SetFollowState-response"
  "turtlebot3_msgs/SetFollowStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFollowState-response>)))
  "Returns md5sum for a message object of type '<SetFollowState-response>"
  "6095eaec0ed61c547340fdc2200c8372")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFollowState-response)))
  "Returns md5sum for a message object of type 'SetFollowState-response"
  "6095eaec0ed61c547340fdc2200c8372")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFollowState-response>)))
  "Returns full string definition for message of type '<SetFollowState-response>"
  (cl:format cl:nil "~%uint8 OK    = 0~%uint8 ERROR = 1~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFollowState-response)))
  "Returns full string definition for message of type 'SetFollowState-response"
  (cl:format cl:nil "~%uint8 OK    = 0~%uint8 ERROR = 1~%~%uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFollowState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFollowState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFollowState-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFollowState)))
  'SetFollowState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFollowState)))
  'SetFollowState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFollowState)))
  "Returns string type for a service object of type '<SetFollowState>"
  "turtlebot3_msgs/SetFollowState")