// Auto-generated. Do not edit!

// (in-package turtlebot3_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TakePanoramaRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.pano_angle = null;
      this.snap_interval = null;
      this.rot_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('pano_angle')) {
        this.pano_angle = initObj.pano_angle
      }
      else {
        this.pano_angle = 0.0;
      }
      if (initObj.hasOwnProperty('snap_interval')) {
        this.snap_interval = initObj.snap_interval
      }
      else {
        this.snap_interval = 0.0;
      }
      if (initObj.hasOwnProperty('rot_vel')) {
        this.rot_vel = initObj.rot_vel
      }
      else {
        this.rot_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TakePanoramaRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [pano_angle]
    bufferOffset = _serializer.float32(obj.pano_angle, buffer, bufferOffset);
    // Serialize message field [snap_interval]
    bufferOffset = _serializer.float32(obj.snap_interval, buffer, bufferOffset);
    // Serialize message field [rot_vel]
    bufferOffset = _serializer.float32(obj.rot_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TakePanoramaRequest
    let len;
    let data = new TakePanoramaRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pano_angle]
    data.pano_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [snap_interval]
    data.snap_interval = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rot_vel]
    data.rot_vel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlebot3_msgs/TakePanoramaRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f52c694c82704221735cc576c7587ecc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 mode
    
    uint8 SNAPANDROTATE=0
    
    uint8 CONTINUOUS=1
    
    uint8 STOP=2
    
    float32 pano_angle
    
    float32 snap_interval
    
    float32 rot_vel
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TakePanoramaRequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.pano_angle !== undefined) {
      resolved.pano_angle = msg.pano_angle;
    }
    else {
      resolved.pano_angle = 0.0
    }

    if (msg.snap_interval !== undefined) {
      resolved.snap_interval = msg.snap_interval;
    }
    else {
      resolved.snap_interval = 0.0
    }

    if (msg.rot_vel !== undefined) {
      resolved.rot_vel = msg.rot_vel;
    }
    else {
      resolved.rot_vel = 0.0
    }

    return resolved;
    }
};

// Constants for message
TakePanoramaRequest.Constants = {
  SNAPANDROTATE: 0,
  CONTINUOUS: 1,
  STOP: 2,
}

class TakePanoramaResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TakePanoramaResponse
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TakePanoramaResponse
    let len;
    let data = new TakePanoramaResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlebot3_msgs/TakePanoramaResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ebe3e03b034aa9578d367d7cf6ed627';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 status
    uint8 STARTED=0
    uint8 IN_PROGRESS=1
    uint8 STOPPED=2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TakePanoramaResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
TakePanoramaResponse.Constants = {
  STARTED: 0,
  IN_PROGRESS: 1,
  STOPPED: 2,
}

module.exports = {
  Request: TakePanoramaRequest,
  Response: TakePanoramaResponse,
  md5sum() { return 'ae9e615a5f5b5081544bd9259c9e0f4e'; },
  datatype() { return 'turtlebot3_msgs/TakePanorama'; }
};
