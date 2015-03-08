
(defun vowels (s)
    (defvar letters "aeiouy")
    (setf count 0)
    (loop for c across s
        do (if (find c letters) (incf count)))(values count))

(princ "number of lines: ")
(defvar len (read))

(format t "~{~a ~}" (loop for i from 1 to len
    collect (vowels (read-line))))
