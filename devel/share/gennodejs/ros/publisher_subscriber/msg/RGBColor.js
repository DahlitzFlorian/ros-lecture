// Auto-generated. Do not edit!

// (in-package publisher_subscriber.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RGBColor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.R = null;
      this.G = null;
      this.B = null;
    }
    else {
      if (initObj.hasOwnProperty('R')) {
        this.R = initObj.R
      }
      else {
        this.R = 0;
      }
      if (initObj.hasOwnProperty('G')) {
        this.G = initObj.G
      }
      else {
        this.G = 0;
      }
      if (initObj.hasOwnProperty('B')) {
        this.B = initObj.B
      }
      else {
        this.B = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RGBColor
    // Serialize message field [R]
    bufferOffset = _serializer.uint8(obj.R, buffer, bufferOffset);
    // Serialize message field [G]
    bufferOffset = _serializer.uint8(obj.G, buffer, bufferOffset);
    // Serialize message field [B]
    bufferOffset = _serializer.uint8(obj.B, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RGBColor
    let len;
    let data = new RGBColor(null);
    // Deserialize message field [R]
    data.R = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [G]
    data.G = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [B]
    data.B = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'publisher_subscriber/RGBColor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25e8e0a5fcebfd5489b6ec59d3303e32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 R
    uint8 G
    uint8 B
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RGBColor(null);
    if (msg.R !== undefined) {
      resolved.R = msg.R;
    }
    else {
      resolved.R = 0
    }

    if (msg.G !== undefined) {
      resolved.G = msg.G;
    }
    else {
      resolved.G = 0
    }

    if (msg.B !== undefined) {
      resolved.B = msg.B;
    }
    else {
      resolved.B = 0
    }

    return resolved;
    }
};

module.exports = RGBColor;
