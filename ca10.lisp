(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

(defun med (vlist)
    (setf sorted (sort vlist #'<))
    (second sorted))

(princ "data:")
(defvar len (read))

(format t "~{~a ~}" (loop for i from 1 to len
    collect (classify (mapcar 'parse-integer
        (split-sequence:SPLIT-SEQUENCE #\space (read-line))))))
