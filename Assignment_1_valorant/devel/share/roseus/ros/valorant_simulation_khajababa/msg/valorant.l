;; Auto-generated. Do not edit!


(when (boundp 'valorant_simulation_khajababa::valorant)
  (if (not (find-package "VALORANT_SIMULATION_KHAJABABA"))
    (make-package "VALORANT_SIMULATION_KHAJABABA"))
  (shadow 'valorant (find-package "VALORANT_SIMULATION_KHAJABABA")))
(unless (find-package "VALORANT_SIMULATION_KHAJABABA::VALORANT")
  (make-package "VALORANT_SIMULATION_KHAJABABA::VALORANT"))

(in-package "ROS")
;;//! \htmlinclude valorant.msg.html


(defclass valorant_simulation_khajababa::valorant
  :super ros::object
  :slots (_message _length ))

(defmethod valorant_simulation_khajababa::valorant
  (:init
   (&key
    ((:message __message) "")
    ((:length __length) 0)
    )
   (send-super :init)
   (setq _message (string __message))
   (setq _length (round __length))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ;; int32 _length
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; int32 _length
       (write-long _length s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get valorant_simulation_khajababa::valorant :md5sum-) "55fbd117b4d1d7ffc3d6b657a8d208f4")
(setf (get valorant_simulation_khajababa::valorant :datatype-) "valorant_simulation_khajababa/valorant")
(setf (get valorant_simulation_khajababa::valorant :definition-)
      "string message
int32 length
")



(provide :valorant_simulation_khajababa/valorant "55fbd117b4d1d7ffc3d6b657a8d208f4")


