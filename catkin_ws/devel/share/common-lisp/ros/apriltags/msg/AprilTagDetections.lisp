; Auto-generated. Do not edit!


(cl:in-package apriltags-msg)


;//! \htmlinclude AprilTagDetections.msg.html

(cl:defclass <AprilTagDetections> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (detections
    :reader detections
    :initarg :detections
    :type (cl:vector apriltags-msg:AprilTagDetection)
   :initform (cl:make-array 0 :element-type 'apriltags-msg:AprilTagDetection :initial-element (cl:make-instance 'apriltags-msg:AprilTagDetection))))
)

(cl:defclass AprilTagDetections (<AprilTagDetections>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AprilTagDetections>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AprilTagDetections)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name apriltags-msg:<AprilTagDetections> is deprecated: use apriltags-msg:AprilTagDetections instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AprilTagDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader apriltags-msg:header-val is deprecated.  Use apriltags-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <AprilTagDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader apriltags-msg:detections-val is deprecated.  Use apriltags-msg:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AprilTagDetections>) ostream)
  "Serializes a message object of type '<AprilTagDetections>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AprilTagDetections>) istream)
  "Deserializes a message object of type '<AprilTagDetections>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'apriltags-msg:AprilTagDetection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AprilTagDetections>)))
  "Returns string type for a message object of type '<AprilTagDetections>"
  "apriltags/AprilTagDetections")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AprilTagDetections)))
  "Returns string type for a message object of type 'AprilTagDetections"
  "apriltags/AprilTagDetections")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AprilTagDetections>)))
  "Returns md5sum for a message object of type '<AprilTagDetections>"
  "7f7dd9e733b444cdc111ec1690c66971")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AprilTagDetections)))
  "Returns md5sum for a message object of type 'AprilTagDetections"
  "7f7dd9e733b444cdc111ec1690c66971")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AprilTagDetections>)))
  "Returns full string definition for message of type '<AprilTagDetections>"
  (cl:format cl:nil "# List of all AprilTag detections from a single camera frame.~%Header header~%AprilTagDetection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: apriltags/AprilTagDetection~%# Message storing raw 2D and 3D information about a single AprilTag detection.~%Header header~%uint32 id  # id of AprilTag (not necessarily unique)~%geometry_msgs/Point32[4] corners2d  # AprilTag corners in image~%float32 tag_size  # tag size in m~%geometry_msgs/Pose pose  # pose of the marker in the camera frame~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AprilTagDetections)))
  "Returns full string definition for message of type 'AprilTagDetections"
  (cl:format cl:nil "# List of all AprilTag detections from a single camera frame.~%Header header~%AprilTagDetection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: apriltags/AprilTagDetection~%# Message storing raw 2D and 3D information about a single AprilTag detection.~%Header header~%uint32 id  # id of AprilTag (not necessarily unique)~%geometry_msgs/Point32[4] corners2d  # AprilTag corners in image~%float32 tag_size  # tag size in m~%geometry_msgs/Pose pose  # pose of the marker in the camera frame~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AprilTagDetections>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AprilTagDetections>))
  "Converts a ROS message object to a list"
  (cl:list 'AprilTagDetections
    (cl:cons ':header (header msg))
    (cl:cons ':detections (detections msg))
))
