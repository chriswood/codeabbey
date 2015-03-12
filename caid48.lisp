
(defun collatz (n)
    (if (evenp n) (/ n 2) (+ 1 (* n 3))))

(defun collatz-count (n)
    (let ((count 0)) (loop while (> n 1)
        do (setf n (collatz n))
           (incf count)
           finally (return count))))

(princ "input data:")
(defvar len (read))

(format t "~{~a ~}"
    (loop for i from 1 to len
        collect (collatz-count (read))))
