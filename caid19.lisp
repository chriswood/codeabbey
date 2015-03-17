(defun match (op cl)
    (= (position op opens) (position cl closes)))

(defun test (s)
    (setf good 1)
    (setf stack nil)
    (loop for c across s
        do (cond
            ((find c opens) (push c stack) (setf good 0))
            ((and (find c closes)
                  (setf open-sym (pop stack))
                  (match open-sym c)) (setf good 1))
            ((find c closes) (setf good 0) (return))))
    (if (> (length stack) 0) (setf good 0))
    (values good))

(defvar opens "<[{(")
(defvar closes ">]})")

(princ "input data:")
(defvar len (read))

(format t "~{~a ~}" (loop for i from 1 to len
    do (setf s (read-line))
        collect (test s)))
