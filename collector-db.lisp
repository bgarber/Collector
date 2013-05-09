(defpackage :collector-db
  (:use :common-lisp)
  (:export :query-card-name
           :add-card))

(in-package :collector-db)

(load "~/quicklisp/setup.lisp")
(ql:quickload :sqlite)

(use-package :sqlite)
(use-package :iter)


(defvar *db* (connect "collector.db"))

(defun query-card-name (name)
  "Query for a card on the database."
  (format t "Card: ~a~%" name))

(defun add-card (name edition)
  "Add a new card to the database."
  (format t "Adding card: ~a, Edition: ~a~%" name edition))
