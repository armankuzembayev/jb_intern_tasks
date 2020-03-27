;; Auto-generated. Do not edit!


(when (boundp 'task4::remove_runner)
  (if (not (find-package "TASK4"))
    (make-package "TASK4"))
  (shadow 'remove_runner (find-package "TASK4")))
(unless (find-package "TASK4::REMOVE_RUNNER")
  (make-package "TASK4::REMOVE_RUNNER"))
(unless (find-package "TASK4::REMOVE_RUNNERREQUEST")
  (make-package "TASK4::REMOVE_RUNNERREQUEST"))
(unless (find-package "TASK4::REMOVE_RUNNERRESPONSE")
  (make-package "TASK4::REMOVE_RUNNERRESPONSE"))

(in-package "ROS")





(defclass task4::remove_runnerRequest
  :super ros::object
  :slots (_runner_id ))

(defmethod task4::remove_runnerRequest
  (:init
   (&key
    ((:runner_id __runner_id) 0)
    )
   (send-super :init)
   (setq _runner_id (round __runner_id))
   self)
  (:runner_id
   (&optional __runner_id)
   (if __runner_id (setq _runner_id __runner_id)) _runner_id)
  (:serialization-length
   ()
   (+
    ;; int32 _runner_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _runner_id
       (write-long _runner_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _runner_id
     (setq _runner_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass task4::remove_runnerResponse
  :super ros::object
  :slots (_success _message ))

(defmethod task4::remove_runnerResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass task4::remove_runner
  :super ros::object
  :slots ())

(setf (get task4::remove_runner :md5sum-) "5f1cf5e22cd9743828e3c4016d34e92c")
(setf (get task4::remove_runner :datatype-) "task4/remove_runner")
(setf (get task4::remove_runner :request) task4::remove_runnerRequest)
(setf (get task4::remove_runner :response) task4::remove_runnerResponse)

(defmethod task4::remove_runnerRequest
  (:response () (instance task4::remove_runnerResponse :init)))

(setf (get task4::remove_runnerRequest :md5sum-) "5f1cf5e22cd9743828e3c4016d34e92c")
(setf (get task4::remove_runnerRequest :datatype-) "task4/remove_runnerRequest")
(setf (get task4::remove_runnerRequest :definition-)
      "int32 runner_id
---
bool success
string message

")

(setf (get task4::remove_runnerResponse :md5sum-) "5f1cf5e22cd9743828e3c4016d34e92c")
(setf (get task4::remove_runnerResponse :datatype-) "task4/remove_runnerResponse")
(setf (get task4::remove_runnerResponse :definition-)
      "int32 runner_id
---
bool success
string message

")



(provide :task4/remove_runner "5f1cf5e22cd9743828e3c4016d34e92c")


