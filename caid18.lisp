(defun get-first (s)
    (parse-integer (subseq s 0 (position #\space s))))

(defun get-second (s)
    (parse-integer (subseq s (position #\space s) (length s))))

(defun sq (r v)
    (setf d (/ v r))
    (/ (+ r d) 2))

(princ "input data:")
(defvar len (read))

(format t "~{~a ~}"
    (loop for i from 1 to len do
        (setf s (read-line))
        (setf v (get-first s))
        (setf iters (get-second s))
        (loop for i from 1 to iters initially (setf r 1)
            do (setf r (sq (float r) (float v))))
        collect (values r)))
