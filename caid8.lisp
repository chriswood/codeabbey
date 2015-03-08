(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

(defun zarf (vals)
    (setf a (first vals))
    (setf b (second vals))
    (setf c (decf (third vals)))
    (loop for i from 0 to c
        initially (setf count 0)
        do (setf count (+ count (+ a (* i b)))))
    (values count))

(princ "input data:")
(defvar len (read))

(format t "~{~a ~}" (loop for i from 1 to len
    collect (zarf (mapcar 'parse-integer
        (split-sequence:SPLIT-SEQUENCE #\space (read-line))))))
