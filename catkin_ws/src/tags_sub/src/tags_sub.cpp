#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <string.h>
#include <ros/ros.h>

//syncronize apriltags subscription in tags_sub.h
//apriltags message
#include "tags_sub/tags_sub.h"

//TF
#include <tf/transform_broadcaster.h>




tags_sub::tags_sub()
{
    cam_pose_sub_ = nh_.subscribe("/apriltags/detections", 10, &tags_sub::tags_sub_callback, this);
}

tags_sub::~tags_sub()
{


}



void tags_sub::tags_sub_callback(const rapyuta_msgs::AprilTagDetections::ConstPtr& msg)
{
    if( (msg->detections.empty()) == false )//detection got value this is important check or you got segmental fault
    {
    
     static tf::TransformBroadcaster br;
     tf::Transform transform;

     //set aprilTag tf translation, rotation  see from camera  (you stand on camera see apriltag)
    transform.setOrigin(tf::Vector3(msg->detections[0].pose.position.x,msg->detections[0].pose.position.y,msg->detections[0].pose.position.z) );
    transform.setRotation(tf::Quaternion(msg->detections[0].pose.orientation.x, msg->detections[0].pose.orientation.y, msg->detections[0].pose.orientation.z, msg->detections[0].pose.orientation.w) );


    ROS_INFO("Get aprilTag! Habonbon ");


    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "camera", "apriltag"));
   }

}


//get and set cam1 pose
void tags_sub::setInitPose_cam1(const Eigen::Matrix4d & pose, double time)
{
  cam1_initialize_pose = pose;
  cam1_initialize_time_ = time;

}

Eigen::Matrix4d tags_sub::getInitPose_cam1()
{
  return cam1_initialize_pose;
}


int main(int argc, char* argv[])
{
  ros::init(argc, argv, "node_tags_sub_node");

  tags_sub node_tags_sub_node;

  ros::spin();

  return 0;
}
