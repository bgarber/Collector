(load "./database.lsp")
(use-package :collector-db)

(defun read-prompt (prompt)
  "Read user-data from a prompt."
  (format t "~a" prompt)
  (read-line))

(defun do-add (name edition)
  "Add a card to the database."
  (format t "Will add card ~a, edition ~a.~%" name edition))

; Print program banner
(format t "Collector, a card database for Magic: the Gathering -- CLI client.~%")
(format t "~%")

; Main loop -- loops for commands to execute.
(loop
  (let ((line (read-prompt "=> ")))
    (cond
      ((string-equal line "quit") (progn (format t "Bye!~%") (return)))
      ((string-equal line "add")  (do-add "Takeno" "Campeões de Kamigawa"))
      ((string-equal line "query")) (do-query "Takeno") )))
