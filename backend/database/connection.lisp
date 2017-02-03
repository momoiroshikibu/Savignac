(in-package :cl-user)
(defpackage com.momoiroshikibu.database.connection
  (:use :cl
        :dbi)
  (:export :*connection*))
(in-package :com.momoiroshikibu.database.connection)

(defvar *connection* (dbi:connect :mysql
                                  :host "database"
                                  :database-name "savignac"
                                  :username "root"
                                  :password "savignac"))
