(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

; read in number of pairs
(princ "Enter number of pairs...")
(defvar len (read))
(loop for i from 1 to len
    ;set vals equal to a list of the two read in numbers
    do (setf vals (split-sequence:SPLIT-SEQUENCE #\space (read-line)))
        append (list (+ (parse-integer (pop vals)) (parse-integer (pop vals))))
            into result_list
        finally (format t "~{~a ~}" result_list)
)
