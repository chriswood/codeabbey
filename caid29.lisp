(defun swap (a b)
    "swap two array elements in global array"
    (setf temp (elt *v* a))
    (setf (elt *v* a) (elt *v* b))
    (setf (elt *v* b) temp))

(defun arr-cop (arr)
    (setf len (length arr))
    (setf arr-new (make-array len))
    (loop for i from 0 to (- len 1) do (setf (elt arr-new i) (elt arr i)))
    (return-from arr-cop arr-new))


(princ "input data: ")
(setf len (read))

(setf *v* (loop for i from 1 to len collect (read)))
(setf *original* (arr-cop *v*))

(setf swapped 1)
(loop for i from 0 while (= swapped 1) do
    (setf swapped 0)
    (loop for i from 0 to (- len 2) do
        (if (> (elt *v* i) (elt *v* (+ i 1)))
            (progn (swap i (+ i 1)) (setf swapped 1)))))

(format t "~{~a ~}"
    (loop for i in *v*
        collect (+ (position i *original*) 1)))
