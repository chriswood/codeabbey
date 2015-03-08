(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

; sum of length of any two sides must be >= length of third side
(defun zarf (vals)
    (setf a (first vals))
    (setf b (second vals))
    (setf c (third vals))
    (setf is_triangle
        (if (and (> (+ a b) c) (> (+ b c) a) (> (+ a c) b)) '1 '0))
    (values is_triangle))


(princ "input data:")
(defvar len (read))

(format t "~{~a ~}" (loop for i from 1 to len
    collect (zarf (mapcar 'parse-integer
        (split-sequence:SPLIT-SEQUENCE #\space (read-line))))))
