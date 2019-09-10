( defun to2d (lst)
    ( let ((my-array (make-array '(5 5) :initial-element 1.0)))
        (loop :for i :from 0 :upto (-(list-length lst) 1)
              :do(
                loop :for j :from i :to (+ i ( - (list-length lst) 1))
                          :do (
                               setf (aref my-array i (- j i)) (nth (rem j (list-length lst)) lst ) 
                               )
              )
       )
     (return-from to2d my-array)     
    )    
)


( print ( to2d '(1 2 3 4 5)))

