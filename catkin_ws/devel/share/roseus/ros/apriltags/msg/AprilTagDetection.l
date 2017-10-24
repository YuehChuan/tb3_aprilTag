;; Auto-generated. Do not edit!


(when (boundp 'apriltags::AprilTagDetection)
  (if (not (find-package "APRILTAGS"))
    (make-package "APRILTAGS"))
  (shadow 'AprilTagDetection (find-package "APRILTAGS")))
(unless (find-package "APRILTAGS::APRILTAGDETECTION")
  (make-package "APRILTAGS::APRILTAGDETECTION"))

(in-package "ROS")
;;//! \htmlinclude AprilTagDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass apriltags::AprilTagDetection
  :super ros::object
  :slots (_header _id _corners2d _tag_size _pose ))

(defmethod apriltags::AprilTagDetection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:corners2d __corners2d) (let (r) (dotimes (i 4) (push (instance geometry_msgs::Point32 :init) r)) r))
    ((:tag_size __tag_size) 0.0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _corners2d __corners2d)
   (setq _tag_size (float __tag_size))
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:corners2d
   (&rest __corners2d)
   (if (keywordp (car __corners2d))
       (send* _corners2d __corners2d)
     (progn
       (if __corners2d (setq _corners2d (car __corners2d)))
       _corners2d)))
  (:tag_size
   (&optional __tag_size)
   (if __tag_size (setq _tag_size __tag_size)) _tag_size)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; geometry_msgs/Point32[4] _corners2d
    (apply #'+ (send-all _corners2d :serialization-length))
    ;; float32 _tag_size
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; geometry_msgs/Point32[4] _corners2d
     (dolist (elem _corners2d)
       (send elem :serialize s)
       )
     ;; float32 _tag_size
       (sys::poke _tag_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point32[4] _corners2d
   (dotimes (i 4)
     (send (elt _corners2d i) :deserialize buf ptr-) (incf ptr- (send (elt _corners2d i) :serialization-length))
     )
   ;; float32 _tag_size
     (setq _tag_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get apriltags::AprilTagDetection :md5sum-) "cbbc500741705b6142a546b4696bb7f5")
(setf (get apriltags::AprilTagDetection :datatype-) "apriltags/AprilTagDetection")
(setf (get apriltags::AprilTagDetection :definition-)
      "# Message storing raw 2D and 3D information about a single AprilTag detection.
Header header
uint32 id  # id of AprilTag (not necessarily unique)
geometry_msgs/Point32[4] corners2d  # AprilTag corners in image
float32 tag_size  # tag size in m
geometry_msgs/Pose pose  # pose of the marker in the camera frame

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :apriltags/AprilTagDetection "cbbc500741705b6142a546b4696bb7f5")


