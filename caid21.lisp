
(defun process (s)
    (setf el (decf s))
    (incf (elt *v* el)))

(princ "data input: ")
(defvar len (read))
(defvar cardinality (read))

(defparameter *v* (make-array cardinality :initial-element 0))

(loop for i from 1 to len do
    (process (read)))

(loop for i to (- cardinality 1) do
    (princ (aref *v* i))
    (princ #\space))
