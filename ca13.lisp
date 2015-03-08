(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

(defun wsd (v)
    "takes a string as input and returns int"
    (loop for c across v
          for i from 1 sum
          (* i (digit-char-p c))))

(princ "input data:")
(defvar len (read))

(defvar nums (split-sequence:SPLIT-SEQUENCE #\space (read-line)))

;loop through and collect sums
(format t "~{~a ~}" (loop for i in nums collect (wsd i)))
