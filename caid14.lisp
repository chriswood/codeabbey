(princ "input data:")
(setf res (read))

(let ((sign "0"))
    (loop do (setf sign (read))
             (setf i (read))
             (if (eq sign '%)
                 (progn (setf res (mod res i)) (print res) (return))
                 (setf res (funcall sign res i))))
