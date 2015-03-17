; Bubble sort

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

(princ *passes*)
(princ #\space)
(princ *swaps*)
