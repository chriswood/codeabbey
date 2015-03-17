
(defun fib (n)
    "return fibonacci sequence n"
    (let ((x 0) (y 1) (f n))
        (loop for i from 2 to n do
            (setf f (+ x y) x y y f)) f))

(defun get-index (v)
    (loop for i from 0 to 1000 do
        (if (= (fib i) v) (return-from get-index i))))

(princ "input data: ")
(defvar len (read))

(format t "~{~a ~}" (loop for i from 1 to len
    do (setf v (read))
        collect (get-index v)))
