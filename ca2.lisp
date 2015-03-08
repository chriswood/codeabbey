; first load quicklisp to get common lisp libraries
; this requires the asdf package, but not the asdf install (sheesh)
(load "/home/chris/code/lisp/asdf")
(Load #P"/home/chris/quicklisp/setup.lisp")

; then load the split-sequence package
(ql:quickload :split-sequence)

; read in length of list
(princ "Enter length of list...")
(defvar len (read))

; now get string of values
(defvar values (read-line))

; split that string into a list
(defvar v_list (split-sequence:SPLIT-SEQUENCE #\space values))

(loop for i from 0 to (- len 1)
    summing (parse-integer(nth i v_list)) into total
    finally (print total))

;(loop for i in v_list summing (parse-integer i))
