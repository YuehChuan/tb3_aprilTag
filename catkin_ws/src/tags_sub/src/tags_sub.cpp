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

//use sophus for transformation
#include "sophus/so3.h"
#include "sophus/se3.h"
namespace tags_sub
{

TSNode::TSNode(const ros::NodeHandle& nh, const ros::NodeHandle& nh_private) :nh_(nh), nh_private_(nh_private), cam1_initialize(false)
{
    cam1_pose_sub_ = nh_.subscribe("/apriltags/detections", 10, &TSNode::tags_sub1, this);

}

TSNode::~TSNode()
{


}



void TSNode::tags_sub1(const rapyuta_msgs::AprilTagDetections::ConstPtr& msg)
{
    if( (msg->detections.empty()) == false )//detection got value
    {


  static tf::TransformBroadcaster br;
  static tf::TransformBroadcaster br_static_cam1;
  tf::Transform transform;
  transform.setOrigin(tf::Vector3(msg->detections[0].pose.position.x,msg->detections[0].pose.position.y,msg->detections[0].pose.position.z) );
  transform.setRotation(tf::Quaternion(msg->detections[0].pose.orientation.x, msg->detections[0].pose.orientation.y, msg->detections[0].pose.orientation.z, msg->detections[0].pose.orientation.w) );





  //broadcast transform
  //inverse transform
  tf::Transform InvTransform_cam1;
  static tf::Transform static_pose_cam1;
  InvTransform_cam1 = transform.inverse();

  if(cam1_initialize == false)//next subscriber come change the pose_cam1 value, and next time static frame no value
  {
  static_pose_cam1 = InvTransform_cam1;
  cam1_initialize = true;
  ROS_INFO("cam1_initialize =%d ",cam1_initialize);

  }
  br.sendTransform(tf::StampedTransform(InvTransform_cam1, ros::Time::now(), "map", "camera1"));
  br_static_cam1.sendTransform(tf::StampedTransform(static_pose_cam1, ros::Time::now(), "map", "cam1_static"));


    }

}


//get and set cam1 pose
void TSNode::setInitPose_cam1(const Eigen::Matrix4d & pose, double time)
{
  cam1_initialize_pose = pose;
  cam1_initialize_time_ = time;

}

Eigen::Matrix4d TSNode::getInitPose_cam1()
{
  return cam1_initialize_pose;
}



}//end name space
