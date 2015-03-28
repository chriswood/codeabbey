
(defun live-count (l)
    (let ((count 0))
        (loop for i in l do
            (if (numberp i) (incf count)))
        (return-from live-count count)))

(princ "initial data: ")
(setf N (read))
(setf K (read))

;build array of people
(setf circle nil)
(loop for i from N downto 1 do
    (setf circle (cons i circle)))

(setf m 0)
(loop for x from 1 while (> (live-count circle) 1) do
    (setf pos (mod (- x 1) N))
    (if (elt circle pos) (incf m))
    (if (= m K) (progn (setf (elt circle pos) nil) (setf m 0))))

; print answer
(loop for person in circle do
    (if (numberp person) (print person)))
