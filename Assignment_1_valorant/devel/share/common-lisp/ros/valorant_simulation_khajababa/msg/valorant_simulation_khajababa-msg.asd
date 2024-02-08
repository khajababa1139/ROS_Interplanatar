
(cl:in-package :asdf)

(defsystem "valorant_simulation_khajababa-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "valorant" :depends-on ("_package_valorant"))
    (:file "_package_valorant" :depends-on ("_package"))
  ))