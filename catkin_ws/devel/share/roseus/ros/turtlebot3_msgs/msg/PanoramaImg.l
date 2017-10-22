;; Auto-generated. Do not edit!


(when (boundp 'turtlebot3_msgs::PanoramaImg)
  (if (not (find-package "TURTLEBOT3_MSGS"))
    (make-package "TURTLEBOT3_MSGS"))
  (shadow 'PanoramaImg (find-package "TURTLEBOT3_MSGS")))
(unless (find-package "TURTLEBOT3_MSGS::PANORAMAIMG")
  (make-package "TURTLEBOT3_MSGS::PANORAMAIMG"))

(in-package "ROS")
;;//! \htmlinclude PanoramaImg.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass turtlebot3_msgs::PanoramaImg
  :super ros::object
  :slots (_header _pano_id _latitude _longitude _heading _geo_tag _image ))

(defmethod turtlebot3_msgs::PanoramaImg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pano_id __pano_id) "")
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:heading __heading) 0.0)
    ((:geo_tag __geo_tag) "")
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pano_id (string __pano_id))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _heading (float __heading))
   (setq _geo_tag (string __geo_tag))
   (setq _image __image)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pano_id
   (&optional __pano_id)
   (if __pano_id (setq _pano_id __pano_id)) _pano_id)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:geo_tag
   (&optional __geo_tag)
   (if __geo_tag (setq _geo_tag __geo_tag)) _geo_tag)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _pano_id
    4 (length _pano_id)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _heading
    8
    ;; string _geo_tag
    4 (length _geo_tag)
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _pano_id
       (write-long (length _pano_id) s) (princ _pano_id s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _geo_tag
       (write-long (length _geo_tag) s) (princ _geo_tag s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _pano_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pano_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _geo_tag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _geo_tag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(setf (get turtlebot3_msgs::PanoramaImg :md5sum-) "aedf66295b374a7249a786af27aecc87")
(setf (get turtlebot3_msgs::PanoramaImg :datatype-) "turtlebot3_msgs/PanoramaImg")
(setf (get turtlebot3_msgs::PanoramaImg :definition-)
      "#Pano message
Header header
string pano_id
float64 latitude
float64 longitude
float64 heading #in degrees, compass heading
string geo_tag
sensor_msgs/Image image
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
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

")



(provide :turtlebot3_msgs/PanoramaImg "aedf66295b374a7249a786af27aecc87")


