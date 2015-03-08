(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

; a = (y2 - y1)/(x2 - x1)
; b = y1 - a * x1
(defun zarf (vals)
    (setf x1 (first vals))
    (setf y1 (second vals))
    (setf x2 (third vals))
    (setf y2 (fourth vals))
    (setf a (/ (- y2 y1) (- x2 x1)))
    (setf b (- y1 (* a x1)))
    (values (list a b)))


(princ "input data:")
(defvar len (read))

(format t "~{~a ~}" (loop for i from 1 to len
    collect (zarf (mapcar 'parse-integer
        (split-sequence:SPLIT-SEQUENCE #\space (read-line))))))
