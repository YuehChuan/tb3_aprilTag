; Auto-generated. Do not edit!


(cl:in-package apriltags-msg)


;//! \htmlinclude AprilTagDetection.msg.html

(cl:defclass <AprilTagDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (corners2d
    :reader corners2d
    :initarg :corners2d
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 4 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32)))
   (tag_size
    :reader tag_size
    :initarg :tag_size
    :type cl:float
    :initform 0.0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass AprilTagDetection (<AprilTagDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AprilTagDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AprilTagDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name apriltags-msg:<AprilTagDetection> is deprecated: use apriltags-msg:AprilTagDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AprilTagDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader apriltags-msg:header-val is deprecated.  Use apriltags-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AprilTagDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader apriltags-msg:id-val is deprecated.  Use apriltags-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'corners2d-val :lambda-list '(m))
(cl:defmethod corners2d-val ((m <AprilTagDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader apriltags-msg:corners2d-val is deprecated.  Use apriltags-msg:corners2d instead.")
  (corners2d m))

(cl:ensure-generic-function 'tag_size-val :lambda-list '(m))
(cl:defmethod tag_size-val ((m <AprilTagDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader apriltags-msg:tag_size-val is deprecated.  Use apriltags-msg:tag_size instead.")
  (tag_size m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <AprilTagDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader apriltags-msg:pose-val is deprecated.  Use apriltags-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AprilTagDetection>) ostream)
  "Serializes a message object of type '<AprilTagDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corners2d))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tag_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AprilTagDetection>) istream)
  "Deserializes a message object of type '<AprilTagDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'corners2d) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'corners2d)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag_size) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AprilTagDetection>)))
  "Returns string type for a message object of type '<AprilTagDetection>"
  "apriltags/AprilTagDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AprilTagDetection)))
  "Returns string type for a message object of type 'AprilTagDetection"
  "apriltags/AprilTagDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AprilTagDetection>)))
  "Returns md5sum for a message object of type '<AprilTagDetection>"
  "cbbc500741705b6142a546b4696bb7f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AprilTagDetection)))
  "Returns md5sum for a message object of type 'AprilTagDetection"
  "cbbc500741705b6142a546b4696bb7f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AprilTagDetection>)))
  "Returns full string definition for message of type '<AprilTagDetection>"
  (cl:format cl:nil "# Message storing raw 2D and 3D information about a single AprilTag detection.~%Header header~%uint32 id  # id of AprilTag (not necessarily unique)~%geometry_msgs/Point32[4] corners2d  # AprilTag corners in image~%float32 tag_size  # tag size in m~%geometry_msgs/Pose pose  # pose of the marker in the camera frame~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AprilTagDetection)))
  "Returns full string definition for message of type 'AprilTagDetection"
  (cl:format cl:nil "# Message storing raw 2D and 3D information about a single AprilTag detection.~%Header header~%uint32 id  # id of AprilTag (not necessarily unique)~%geometry_msgs/Point32[4] corners2d  # AprilTag corners in image~%float32 tag_size  # tag size in m~%geometry_msgs/Pose pose  # pose of the marker in the camera frame~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AprilTagDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'corners2d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AprilTagDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'AprilTagDetection
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':corners2d (corners2d msg))
    (cl:cons ':tag_size (tag_size msg))
    (cl:cons ':pose (pose msg))
))
