
(defun mygcd (a b)
    (loop until (or (= a 0) (= b 0)) do
        (cond ((> a b) (setf a (mod a b)))
              (t (setf b (mod b a))))
        finally (return (max a b))))

(princ "input data: ")
(defvar len (read))

(format t "~{~a ~}"
    (loop for i from 1 to len do
        (setf a (read))
        (setf b (read))
        (setf g (mygcd a b))
        (setf l (/ (* a b) g))
        collect (list g l)))
