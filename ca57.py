# (defun avg (a b c)
#     (coerce (/ (+ a b c) 3) 'double-float))
#
# (princ "input data: ")
# (setf len (read))
#
# (setf *vals* (loop for i from 1 to len collect (read)))
#
# (setf avgs (list (car *vals*)))
# (loop for i from 1 to (- len 2) do
#     (setf a (elt *vals* (- i 1)))
#     (setf b (elt *vals* i))
#     (setf c (elt *vals* (+ i 1)))
#     (push (avg a b c) avgs))
# (push (elt *vals* (- len 1)) avgs)
#
# (print (reverse avgs))

def f_avg(a, b, c):
    return((a + b + c)/3.0)

l = int(input())
vals = [float(v) for v in input().split()]
avg_vals = [vals[0]]
avg_vals.extend([f_avg(vals[i - 1], vals[i], vals[i + 1]) for i in range(1, l - 1)])
avg_vals.append(vals[-1])

print(avg_vals)
