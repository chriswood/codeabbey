
(defun get-value (A C M Xcur)
    (mod (+ (* A Xcur) C) M))

(princ "input data: ")
(defvar len (read))

(format t "~{~a ~}"
    (loop for i from 1 to len do
        (setf A (read))
        (setf C (read))
        (setf M (read))
        (setf start (read))
        (setf iter (read))
        collect (let ((n start))
            (loop for x from 1 to iter do
                (setf n (get-value A C M n)))
                (values n))))
