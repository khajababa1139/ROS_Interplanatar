; Auto-generated. Do not edit!


(cl:in-package valorant_simulation_khajababa-msg)


;//! \htmlinclude valorant.msg.html

(cl:defclass <valorant> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (length
    :reader length
    :initarg :length
    :type cl:integer
    :initform 0))
)

(cl:defclass valorant (<valorant>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <valorant>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'valorant)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name valorant_simulation_khajababa-msg:<valorant> is deprecated: use valorant_simulation_khajababa-msg:valorant instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <valorant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader valorant_simulation_khajababa-msg:message-val is deprecated.  Use valorant_simulation_khajababa-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <valorant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader valorant_simulation_khajababa-msg:length-val is deprecated.  Use valorant_simulation_khajababa-msg:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <valorant>) ostream)
  "Serializes a message object of type '<valorant>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let* ((signed (cl:slot-value msg 'length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <valorant>) istream)
  "Deserializes a message object of type '<valorant>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'length) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<valorant>)))
  "Returns string type for a message object of type '<valorant>"
  "valorant_simulation_khajababa/valorant")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'valorant)))
  "Returns string type for a message object of type 'valorant"
  "valorant_simulation_khajababa/valorant")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<valorant>)))
  "Returns md5sum for a message object of type '<valorant>"
  "55fbd117b4d1d7ffc3d6b657a8d208f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'valorant)))
  "Returns md5sum for a message object of type 'valorant"
  "55fbd117b4d1d7ffc3d6b657a8d208f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<valorant>)))
  "Returns full string definition for message of type '<valorant>"
  (cl:format cl:nil "string message~%int32 length~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'valorant)))
  "Returns full string definition for message of type 'valorant"
  (cl:format cl:nil "string message~%int32 length~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <valorant>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <valorant>))
  "Converts a ROS message object to a list"
  (cl:list 'valorant
    (cl:cons ':message (message msg))
    (cl:cons ':length (length msg))
))
