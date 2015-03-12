(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

(defconstant hour-sec 3600)

(defun date-to-sec (vals)
    (+ (fourth vals) (* (third vals) 60) (* (second vals) hour-sec)
        (* (first vals) 24 hour-sec)))

(defun sec-to-date (s)
    "takes number of seconds as input and returns date as list"
    (setf days (floor (/ s (* 24 hour-sec))))
    (setf s (mod s (* 24 hour-sec)))
    (setf hours (floor (/ s hour-sec)))
    (setf s (mod s hour-sec))
    (setf min (floor (/ s 60)))
    (setf s (mod s 60))
    (values (list days hours min s)))

(princ "input data:")
(defvar len (read))

(format t "~{~a ~}" (loop for i from 1 to len do
    (setf vals (mapcar 'parse-integer
        (split-sequence:SPLIT-SEQUENCE #\space (read-line))))
    (setf sec1 (date-to-sec (subseq vals 0 4)))
    (setf sec2 (date-to-sec (subseq vals 4 8)))
    (setf diff (- sec2 sec1))
    collect (sec-to-date diff)))
