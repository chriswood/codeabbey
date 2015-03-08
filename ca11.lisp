(load "/home/chris/code/lisp/asdf")

(defun classify (vlist)
    (setf weight (first vlist))
    (setf height (second vlist))
    (setf BMI (/ weight (* height height)))
    (cond ((< BMI 18.5)  "under")
          ((< BMI 25.0) "normal")
          ((< BMI 30.0) "over")
          ("obese")))

(princ "data:")
(defvar len (read))

(format t "~{~a ~}" (loop for i from 1 to len
    collect (classify (with-input-from-string (in (read-line))
        (loop for x = (read in nil nil) while x collect x)))))
