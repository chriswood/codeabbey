
(defun roll (n)
    (setf norm (floor (* (pop n) 6)))
    (incf norm))

(princ "data:")
(defvar len (read))

(format t "~{~a ~}" (loop for i from 1 to len
    collect (roll (with-input-from-string (in (read-line))
        (loop for x = (read in nil nil) while x collect x)))))
