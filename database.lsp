(defpackage :collector-db
  (:use :common-lisp)
  (:export :query-card-name
           :add-card))

(in-package :collector-db)

(load "~/quicklisp/setup.lisp")
(ql:quickload "sqlite")

(use-package :sqlite)

(defvar *db* (connect "collector.db"))

(defun query-card-name (name)
  "Add a new card to the database."
  (format t "Card: ~a (~a)~%" name edition))

(defun add-card (name edition))
