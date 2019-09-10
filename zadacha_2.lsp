(defun remove-every-second (lst)
  (cond ((<= (length lst) 1) lst)
        (t (cons (car lst) (remove-every-second (cddr lst))))))

(write ( remove-every-second '(a b c e f) ))
