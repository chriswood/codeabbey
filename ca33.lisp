
;first convert decimal to binary
(defun dec-bin (n)
    (let ((bin nil)) (loop while (not (= n 0)) do
        (setf bin (cons (mod n 2) bin))
        (setf n (floor n 2)))
        bin))

(defun test-even (n)
    (evenp (apply '+ n)))

(defun bin-ascii (bn)
    "take list of binary numbers and convert first 7 to ascii"
    (setf nstr "")
    (loop for i from 1 to 7 do
        (setf nstr (concatenate 'string nstr (write-to-string (elt bn i)))))
    (setf nstr (code-char (parse-integer nstr :radix 2))))

(defun pad (l)
    (if (< (length l) 8) (loop while (< (length l) 8) do (push 0 l)))
    (return-from pad l))

(setf n nil)
(setf result (string ""))
(setf c 0)
(loop until (eq n #\.) do
    (setf n (pad (dec-bin (read))))
    (if (test-even n)
        (progn
            (setf n (bin-ascii n))
            (princ n))))
