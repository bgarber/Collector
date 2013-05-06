(defpackage :collector-db
  (:use :common-lisp))

(in-package :collector-db)

(load "~/quicklisp/setup.lisp")
(ql:quickload "sqlite")

(use-package :sqlite)

(defvar *db* (connect "collector.db"))

(defun query-card-name (name)
  )
