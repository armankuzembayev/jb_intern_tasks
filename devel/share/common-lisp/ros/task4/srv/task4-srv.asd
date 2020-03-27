
(cl:in-package :asdf)

(defsystem "task4-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "remove_runner" :depends-on ("_package_remove_runner"))
    (:file "_package_remove_runner" :depends-on ("_package"))
  ))