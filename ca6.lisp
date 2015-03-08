(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

(defun extrema (vlist)
    "takes a list of string numbers and finds the high/low"
    (setf min (first vlist))
    (setf max (first vlist))
    (loop for x in vlist
        do (if (< x min) (setf min x) nil)
           (if (> x max) (setf max x) nil))
        (list "results:" max min))


(setf vals (split-sequence:SPLIT-SEQUENCE #\space (read-line)))
(setf ivals (mapcar 'parse-integer vals))
(format t "~{~a ~}" (extrema ivals))
