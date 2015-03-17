

(princ "input data: ")
(setf s (read-line))

(setf len (length s))
(loop for i from 0 to (floor (/ len 2)) do
    (setf c (elt s i))
    (setf (elt s i) (elt s (- (- len 1) i)))
    (setf (elt s (- (- len 1) i)) c))

(princ s)
