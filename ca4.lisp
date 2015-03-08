(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

(defun pick-low (vlist)
    (setf a (parse-integer (first vlist)))
    (setf b (parse-integer (second vlist)))
    (if (< a b) a b))

; read in number of pairs
(princ "Enter number of pairs...")
(defvar len (read))
(loop for i from 1 to len
    do (setf vals (split-sequence:SPLIT-SEQUENCE #\space (read-line)))
        append (list (pick-low vals))
            into result_list
        finally (format t "~{~a ~}" result_list)
)
