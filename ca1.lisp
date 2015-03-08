; input n1,n2
(format t "Enter two integers...")
(let ((n1 (read)) (n2 (read)))
    (if (numberp n1)
        (format t "You entered ~d and ~d.~%" n1 n2)
    (format t "You didn't enter anything."))
    ; add them
    (print (+ n1 n2)))
