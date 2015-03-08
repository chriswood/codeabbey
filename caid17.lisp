(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

(princ "input data:")
(defvar len (read))

(defvar vals (mapcar 'parse-integer
    (split-sequence:SPLIT-SEQUENCE #\space (read-line))))

(setf result 0)
(loop for v in vals
    do (setf result (mod (* 113 (incf result v)) 10000007)))
(princ result)
