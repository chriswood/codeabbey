(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

(defun dround (vlist)
    (round (/ (first vlist) (second vlist))))

; read in number of pairs
(princ "Enter number of pairs...")
(defvar len (read))
(loop for i from 1 to len
    do (setf vals (split-sequence:SPLIT-SEQUENCE #\space (read-line)))
        (setf ivals (mapcar 'parse-integer vals))
        append (list (dround ivals))
            into result_list
        finally (format t "~{~a ~}" result_list))
