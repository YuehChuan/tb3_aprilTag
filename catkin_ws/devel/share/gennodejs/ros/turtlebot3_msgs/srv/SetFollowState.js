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

class SetFollowStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetFollowStateRequest
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetFollowStateRequest
    let len;
    let data = new SetFollowStateRequest(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlebot3_msgs/SetFollowStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92b912c48c68248015bb32deb0bf7713';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 STOPPED = 0
    uint8 FOLLOW  = 1
    
    
    uint8 state
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetFollowStateRequest(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
SetFollowStateRequest.Constants = {
  STOPPED: 0,
  FOLLOW: 1,
}

class SetFollowStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetFollowStateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetFollowStateResponse
    let len;
    let data = new SetFollowStateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlebot3_msgs/SetFollowStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37065417175a2f4a49100bc798e5ee49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 OK    = 0
    uint8 ERROR = 1
    
    uint8 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetFollowStateResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

// Constants for message
SetFollowStateResponse.Constants = {
  OK: 0,
  ERROR: 1,
}

module.exports = {
  Request: SetFollowStateRequest,
  Response: SetFollowStateResponse,
  md5sum() { return '6095eaec0ed61c547340fdc2200c8372'; },
  datatype() { return 'turtlebot3_msgs/SetFollowState'; }
};
