echo "setting up apriltags_ws..."
source /opt/ros/kinetic/setup.bash
source ~/tb3_aprilTag/catkin_ws/devel/setup.bash
#for opencv-3.1 with pkg_config
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH

export TURTLEBOT3_MODEL=waffle

echo "done!!!"
