// Auto-generated. Do not edit!

// (in-package publisher_subscriber.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class CalculateHexCodeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.r = null;
      this.g = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0;
      }
      if (initObj.hasOwnProperty('g')) {
        this.g = initObj.g
      }
      else {
        this.g = 0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalculateHexCodeRequest
    // Serialize message field [r]
    bufferOffset = _serializer.uint8(obj.r, buffer, bufferOffset);
    // Serialize message field [g]
    bufferOffset = _serializer.uint8(obj.g, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.uint8(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalculateHexCodeRequest
    let len;
    let data = new CalculateHexCodeRequest(null);
    // Deserialize message field [r]
    data.r = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [g]
    data.g = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'publisher_subscriber/CalculateHexCodeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '353891e354491c51aabe32df673fb446';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 r
    uint8 g
    uint8 b
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CalculateHexCodeRequest(null);
    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0
    }

    if (msg.g !== undefined) {
      resolved.g = msg.g;
    }
    else {
      resolved.g = 0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    return resolved;
    }
};

class CalculateHexCodeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hexcode = null;
    }
    else {
      if (initObj.hasOwnProperty('hexcode')) {
        this.hexcode = initObj.hexcode
      }
      else {
        this.hexcode = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalculateHexCodeResponse
    // Serialize message field [hexcode]
    bufferOffset = _serializer.string(obj.hexcode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalculateHexCodeResponse
    let len;
    let data = new CalculateHexCodeResponse(null);
    // Deserialize message field [hexcode]
    data.hexcode = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.hexcode);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'publisher_subscriber/CalculateHexCodeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac5cba6b02cfca058b49ce3559bc4354';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string hexcode
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CalculateHexCodeResponse(null);
    if (msg.hexcode !== undefined) {
      resolved.hexcode = msg.hexcode;
    }
    else {
      resolved.hexcode = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: CalculateHexCodeRequest,
  Response: CalculateHexCodeResponse,
  md5sum() { return '7638e56a2e7114ce46865d393cb9b4d9'; },
  datatype() { return 'publisher_subscriber/CalculateHexCode'; }
};
