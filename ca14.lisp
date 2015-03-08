(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")
(ql:quickload :split-sequence)

(defun avg (ns)
    (setf ns-sum (loop for n in ns until (eq n 0) sum n))
    (setf size (length ns))
    (decf size) ;take care of zero value
    (round (/ (float ns-sum) (float size))))


(princ "input data:")
(defvar len (read))

(format t "~{~a ~}" (loop for i from 1 to len
    collect (avg (mapcar 'parse-integer
        (split-sequence:SPLIT-SEQUENCE #\space (read-line))))))
