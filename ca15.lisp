(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

(defun sumx (a)
    (setf s 0)
    (loop for x from 1 while (> a 0) do
        (setf s (+ s (mod a 10)))
        (setf a (floor a 10)))
    (values s))

(defun zarf (vals)
    (setf n (+ (third vals) (* (first vals) (second vals))))
    (sumx n))

(princ "input data:")
(defvar len (read))

(format t "~{~a ~}" (loop for i from 1 to len
    collect (zarf (mapcar 'parse-integer
        (split-sequence:SPLIT-SEQUENCE #\space (read-line))))))
