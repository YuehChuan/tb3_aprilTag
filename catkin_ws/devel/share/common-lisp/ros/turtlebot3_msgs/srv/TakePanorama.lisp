; Auto-generated. Do not edit!


(cl:in-package turtlebot3_msgs-srv)


;//! \htmlinclude TakePanorama-request.msg.html

(cl:defclass <TakePanorama-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (pano_angle
    :reader pano_angle
    :initarg :pano_angle
    :type cl:float
    :initform 0.0)
   (snap_interval
    :reader snap_interval
    :initarg :snap_interval
    :type cl:float
    :initform 0.0)
   (rot_vel
    :reader rot_vel
    :initarg :rot_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass TakePanorama-request (<TakePanorama-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakePanorama-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakePanorama-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_msgs-srv:<TakePanorama-request> is deprecated: use turtlebot3_msgs-srv:TakePanorama-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <TakePanorama-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_msgs-srv:mode-val is deprecated.  Use turtlebot3_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'pano_angle-val :lambda-list '(m))
(cl:defmethod pano_angle-val ((m <TakePanorama-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_msgs-srv:pano_angle-val is deprecated.  Use turtlebot3_msgs-srv:pano_angle instead.")
  (pano_angle m))

(cl:ensure-generic-function 'snap_interval-val :lambda-list '(m))
(cl:defmethod snap_interval-val ((m <TakePanorama-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_msgs-srv:snap_interval-val is deprecated.  Use turtlebot3_msgs-srv:snap_interval instead.")
  (snap_interval m))

(cl:ensure-generic-function 'rot_vel-val :lambda-list '(m))
(cl:defmethod rot_vel-val ((m <TakePanorama-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_msgs-srv:rot_vel-val is deprecated.  Use turtlebot3_msgs-srv:rot_vel instead.")
  (rot_vel m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TakePanorama-request>)))
    "Constants for message type '<TakePanorama-request>"
  '((:SNAPANDROTATE . 0)
    (:CONTINUOUS . 1)
    (:STOP . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TakePanorama-request)))
    "Constants for message type 'TakePanorama-request"
  '((:SNAPANDROTATE . 0)
    (:CONTINUOUS . 1)
    (:STOP . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakePanorama-request>) ostream)
  "Serializes a message object of type '<TakePanorama-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pano_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'snap_interval))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rot_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakePanorama-request>) istream)
  "Deserializes a message object of type '<TakePanorama-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pano_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'snap_interval) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rot_vel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakePanorama-request>)))
  "Returns string type for a service object of type '<TakePanorama-request>"
  "turtlebot3_msgs/TakePanoramaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakePanorama-request)))
  "Returns string type for a service object of type 'TakePanorama-request"
  "turtlebot3_msgs/TakePanoramaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakePanorama-request>)))
  "Returns md5sum for a message object of type '<TakePanorama-request>"
  "ae9e615a5f5b5081544bd9259c9e0f4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakePanorama-request)))
  "Returns md5sum for a message object of type 'TakePanorama-request"
  "ae9e615a5f5b5081544bd9259c9e0f4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakePanorama-request>)))
  "Returns full string definition for message of type '<TakePanorama-request>"
  (cl:format cl:nil "~%uint8 mode~%~%uint8 SNAPANDROTATE=0~%~%uint8 CONTINUOUS=1~%~%uint8 STOP=2~%~%float32 pano_angle~%~%float32 snap_interval~%~%float32 rot_vel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakePanorama-request)))
  "Returns full string definition for message of type 'TakePanorama-request"
  (cl:format cl:nil "~%uint8 mode~%~%uint8 SNAPANDROTATE=0~%~%uint8 CONTINUOUS=1~%~%uint8 STOP=2~%~%float32 pano_angle~%~%float32 snap_interval~%~%float32 rot_vel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakePanorama-request>))
  (cl:+ 0
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakePanorama-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TakePanorama-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':pano_angle (pano_angle msg))
    (cl:cons ':snap_interval (snap_interval msg))
    (cl:cons ':rot_vel (rot_vel msg))
))
;//! \htmlinclude TakePanorama-response.msg.html

(cl:defclass <TakePanorama-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TakePanorama-response (<TakePanorama-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakePanorama-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakePanorama-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_msgs-srv:<TakePanorama-response> is deprecated: use turtlebot3_msgs-srv:TakePanorama-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TakePanorama-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_msgs-srv:status-val is deprecated.  Use turtlebot3_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TakePanorama-response>)))
    "Constants for message type '<TakePanorama-response>"
  '((:STARTED . 0)
    (:IN_PROGRESS . 1)
    (:STOPPED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TakePanorama-response)))
    "Constants for message type 'TakePanorama-response"
  '((:STARTED . 0)
    (:IN_PROGRESS . 1)
    (:STOPPED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakePanorama-response>) ostream)
  "Serializes a message object of type '<TakePanorama-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakePanorama-response>) istream)
  "Deserializes a message object of type '<TakePanorama-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakePanorama-response>)))
  "Returns string type for a service object of type '<TakePanorama-response>"
  "turtlebot3_msgs/TakePanoramaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakePanorama-response)))
  "Returns string type for a service object of type 'TakePanorama-response"
  "turtlebot3_msgs/TakePanoramaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakePanorama-response>)))
  "Returns md5sum for a message object of type '<TakePanorama-response>"
  "ae9e615a5f5b5081544bd9259c9e0f4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakePanorama-response)))
  "Returns md5sum for a message object of type 'TakePanorama-response"
  "ae9e615a5f5b5081544bd9259c9e0f4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakePanorama-response>)))
  "Returns full string definition for message of type '<TakePanorama-response>"
  (cl:format cl:nil "~%uint8 status~%uint8 STARTED=0~%uint8 IN_PROGRESS=1~%uint8 STOPPED=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakePanorama-response)))
  "Returns full string definition for message of type 'TakePanorama-response"
  (cl:format cl:nil "~%uint8 status~%uint8 STARTED=0~%uint8 IN_PROGRESS=1~%uint8 STOPPED=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakePanorama-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakePanorama-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TakePanorama-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TakePanorama)))
  'TakePanorama-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TakePanorama)))
  'TakePanorama-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakePanorama)))
  "Returns string type for a service object of type '<TakePanorama>"
  "turtlebot3_msgs/TakePanorama")