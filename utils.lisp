(let ((in (open "/some/file/name.txt" :if-does-not-exist nil)))
  (when in
    (loop for line = (read-line in nil)
         while line do (format t "~a~%" line))
    (close in)))

(concatenate 'string (write-to-string 5) " ")

;print 2-d array
(defun print-2d-array-as-table (array)
  (loop for i below (array-total-size array) do
    (if (zerop (mod i (array-dimension array 0)))
      (terpri)
      (princ #\Space))
    (princ (row-major-aref array i))))

;collatz implementation (counts)
; let loop while ex.

(defun collatz (n)
    (if (evenp n) (/ n 2) (+ 1 (* n 3))))

(defun collatz-count (n)
    (let ((count 0)) (loop while (> n 1)
        do (setf n (collatz n))
           (incf count)
           finally (return count))))
