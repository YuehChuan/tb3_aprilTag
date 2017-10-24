# Main software repository for tb3-aprilTag

This is the main software repository for the turtlebot3 simulation.

- For extensive technical documentation, please refer to [aprilTag](https://drive.google.com/file/d/0BwY-lpO6tzxHaTdTckZuaFFEQmM/view)


[![tb3_gazebo](https://github.com/YuehChuan/tb3_aprilTag/blob/master/misc/tb3_gazebo.png)](https://turtlebot3.readthedocs.io/en/latest/simulation.html)
Notice
=======
You should git pull everytime before you push a new commit!


Building
========
pass: ubuntu 16.04.2
ROS version: kinetic

git clone https://github.com/YuehChuan/tb3_aprilTag.git

To compile the code, 

```bash=
cd ~/tb3_aprilTag
catkin_make
cd ..
source environment.sh
```

For aprilTag, make sure you have comiled shared library follow these steps:

```
cd tb3_aprilTag/software/apriltags-cpp
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make
sudo make install
```
more details for aprilTag
https://github.com/xenobot-dev/apriltags_ros


How to fly
==========

Demo1.**aprilTag detection ROS wrapper**
======

my camera: PS3eye_webcam
aprilTag size 165mm 

open 3 terminal

**terminal 1**

```bash=
cd ~/tb3_aprilTag/

source environment.sh

rostopic echo /apriltags/detections
roslaunch apriltags usb_cam_apriltags.launch
rosrun tags_sub tags_sub
```

**terminal 2**

```bash=
cd ~/tb3_aprilTag/

source environment.sh

rosrun tags_sub tags_sub

```
rostopic echo /apriltags/detections
is the detection array


Demo2.**rqt_multiplot_plugin**
======

rqt_multiplot_plugin is  develop by ETH zurich ASL,
it is an usefultool to visualize rostopic. Espectially, 2D plot. (x-t, y-t, theta-t, x-y)  

more details and tutorial:
https://github.com/ethz-asl/rqt_multiplot_plugin


Install
========

```bash= 

sudo apt-get update
sudo apt-get install ros-kinetic-rqt-multiplot

```

Usage
=====

Run turtlebo3 gazebo simulation, and rviz to see topics.
Use rqt_multiplot_plugin to see  topic like x,y  position.

for turtlebot3 simultion details, see here:
https://turtlebot3.readthedocs.io/en/latest/simulation.html


open 4 terminal

do 4 command 
strongly use byobu or terminator for your convinience.

```bash=
roslaunch turtlebot3_gazebo turtlebot3_world.launch

roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch

roslaunch turtlebot3_gazebo turtlebot3_gazebo_rviz.launch

rosrun rqt_multiplot rqt_multiplot
```
open rqt_multiplot_plugin preconfig file: 
~/tb3_aprilTag/catkin_ws/src/tb3_multiplot.xml

**terminal 1**

```bash=
cd ~/tb3_aprilTag/

source environment.sh

roslaunch turtlebot3_gazebo turtlebot3_world.launch

```

**terminal 2**

```bash=
cd ~/tb3_aprilTag

source environment.sh

roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch

```

**terminal 3**
```bash=
cd ~/tb3_aprilTag

source environment.sh

roslaunch turtlebot3_gazebo turtlebot3_world.launch

```
**terminal 4**

```bash=
cd ~/tb3_aprilTag

source environment.sh

rosrun rqt_multiplot rqt_multiplot
```

Demo3.**simulate aprilTag in gazebo world, then detect it!**
======

Launch gazebo world then insert aprilTag models(tag0, Tag1, Tag2, Tag3)
launch aprilTag detect node


**terminal 1**

```bash=
cd ~/tb3_aprilTag/

source environment.sh

roslaunch turtlebot3_gazebo turtlebot3_world.launch

```

Launch gazebo world

**terminal 2**

```bash=
cd ~/tb3_aprilTag/

source environment.sh

roslaunch apriltags gazebo_cam_apriltags.launch

```

see virtual aprilTag detection

[![aprilTag_detect](https://github.com/YuehChuan/tb3_aprilTag/blob/master/misc/aprilTag_detect.png)](https://turtlebot3.readthedocs.io/en/latest/simulation.html)

**terminal 3**

```bash=
cd ~/tb3_aprilTag/

source environment.sh

rostopic echo /apriltags/detections
```
please leave issue in issue  if you got problem build these.

Have fun! 

also, Contribution welcome!

TODO
======
add noise for aprilTag in gazebo
even white noise or render the object by raytracing.


How to 
====================
The workflow is as follows.

(1) You make a private branch, say your name-devel.

(2) You work on your branch.

(3) You push often to your branch.

(4) Create a “pull request”. You can do this by going to the Github page for your branch and click on the button “compare and pull request” .
