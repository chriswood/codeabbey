(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

(defun ftoc (temp)
    (round (* (- temp 32) (/ 5.0 9.0))))


(setf ivals (mapcar 'parse-integer
    (split-sequence:SPLIT-SEQUENCE #\space (read-line))))
(format t "~{~a ~}" (loop for i from 1 to (first ivals)
    collect (ftoc (nth i ivals))))
