
(defun avg (a b c)
    (coerce (/ (+ a b c) 3) 'float))

(princ "input data: ")
(setf len (read))

(setf *vals* (loop for i from 1 to len collect (read)))

(setf avgs (list (car *vals*)))
(loop for i from 1 to (- len 2) do
    (setf a (elt *vals* (- i 1)))
    (setf b (elt *vals* i))
    (setf c (elt *vals* (+ i 1)))
    (push (avg a b c) avgs))
(push (elt *vals* (- len 1)) avgs)

(print (reverse avgs))
