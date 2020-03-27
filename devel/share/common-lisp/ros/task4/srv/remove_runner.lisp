; Auto-generated. Do not edit!


(cl:in-package task4-srv)


;//! \htmlinclude remove_runner-request.msg.html

(cl:defclass <remove_runner-request> (roslisp-msg-protocol:ros-message)
  ((runner_id
    :reader runner_id
    :initarg :runner_id
    :type cl:integer
    :initform 0))
)

(cl:defclass remove_runner-request (<remove_runner-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <remove_runner-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'remove_runner-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task4-srv:<remove_runner-request> is deprecated: use task4-srv:remove_runner-request instead.")))

(cl:ensure-generic-function 'runner_id-val :lambda-list '(m))
(cl:defmethod runner_id-val ((m <remove_runner-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task4-srv:runner_id-val is deprecated.  Use task4-srv:runner_id instead.")
  (runner_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <remove_runner-request>) ostream)
  "Serializes a message object of type '<remove_runner-request>"
  (cl:let* ((signed (cl:slot-value msg 'runner_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <remove_runner-request>) istream)
  "Deserializes a message object of type '<remove_runner-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'runner_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<remove_runner-request>)))
  "Returns string type for a service object of type '<remove_runner-request>"
  "task4/remove_runnerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'remove_runner-request)))
  "Returns string type for a service object of type 'remove_runner-request"
  "task4/remove_runnerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<remove_runner-request>)))
  "Returns md5sum for a message object of type '<remove_runner-request>"
  "5f1cf5e22cd9743828e3c4016d34e92c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'remove_runner-request)))
  "Returns md5sum for a message object of type 'remove_runner-request"
  "5f1cf5e22cd9743828e3c4016d34e92c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<remove_runner-request>)))
  "Returns full string definition for message of type '<remove_runner-request>"
  (cl:format cl:nil "int32 runner_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'remove_runner-request)))
  "Returns full string definition for message of type 'remove_runner-request"
  (cl:format cl:nil "int32 runner_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <remove_runner-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <remove_runner-request>))
  "Converts a ROS message object to a list"
  (cl:list 'remove_runner-request
    (cl:cons ':runner_id (runner_id msg))
))
;//! \htmlinclude remove_runner-response.msg.html

(cl:defclass <remove_runner-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass remove_runner-response (<remove_runner-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <remove_runner-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'remove_runner-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task4-srv:<remove_runner-response> is deprecated: use task4-srv:remove_runner-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <remove_runner-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task4-srv:success-val is deprecated.  Use task4-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <remove_runner-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task4-srv:message-val is deprecated.  Use task4-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <remove_runner-response>) ostream)
  "Serializes a message object of type '<remove_runner-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <remove_runner-response>) istream)
  "Deserializes a message object of type '<remove_runner-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<remove_runner-response>)))
  "Returns string type for a service object of type '<remove_runner-response>"
  "task4/remove_runnerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'remove_runner-response)))
  "Returns string type for a service object of type 'remove_runner-response"
  "task4/remove_runnerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<remove_runner-response>)))
  "Returns md5sum for a message object of type '<remove_runner-response>"
  "5f1cf5e22cd9743828e3c4016d34e92c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'remove_runner-response)))
  "Returns md5sum for a message object of type 'remove_runner-response"
  "5f1cf5e22cd9743828e3c4016d34e92c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<remove_runner-response>)))
  "Returns full string definition for message of type '<remove_runner-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'remove_runner-response)))
  "Returns full string definition for message of type 'remove_runner-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <remove_runner-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <remove_runner-response>))
  "Converts a ROS message object to a list"
  (cl:list 'remove_runner-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'remove_runner)))
  'remove_runner-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'remove_runner)))
  'remove_runner-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'remove_runner)))
  "Returns string type for a service object of type '<remove_runner>"
  "task4/remove_runner")