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

; read in vars without split-seq
(defparameter *v* (loop for i from 1 to len collect (read)))

; bubble sort

(defun swap (a b)
    "swap two array elements in global array"
    (setf temp (elt *v* a))
    (setf (elt *v* a) (elt *v* b))
    (setf (elt *v* b) temp)
    (incf *swaps*))


(defparameter *swaps* 0)
(defparameter *passes* 0)
(princ "input data: ")
(setf len (read))

(defparameter *v* (loop for i from 1 to len collect (read)))

(setf swapped 1)
(loop for i from 0 while (= swapped 1) do
    (setf swapped 0)
    (loop for i from 0 to (- len 2) do
        (if (> (elt *v* i) (elt *v* (+ i 1)))
            (progn (swap i (+ i 1)) (setf swapped 1))))
    (incf *passes*)
    (print *v*))
;end bubble sort    
