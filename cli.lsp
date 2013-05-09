(load "./database.lsp")
(use-package :collector-db)

(defun read-prompt (prompt)
  "Read user-data from a prompt."
  (format t "~a" prompt)
  (read-line))

(defun split-string (str)
  "Parse a string, splitting it in substrings."
  (loop for i = 0 then (1+ j)
        as j = (position #\Space str :start i)
        collect (subseq str i j)
        while j))


; Print program banner
(format t "Collector, a card database for Magic: the Gathering -- CLI client.~%")
(format t "~%")

; Main loop -- loops for commands to execute.
(loop
  (let ((line (read-prompt "=> ")))
    (let ((splitl (split-string line)))
      (cond
        ((string-equal (car splitl) "quit") (progn (format t "Bye!~%") (return)))
        ((string-equal (car splitl) "add")
          (collector-db:add-card "Takeno" "Campeões de Kamigawa"))
        ((string-equal (car splitl) "query"))
          (collector-db:query-card-name "Takeno")))))
