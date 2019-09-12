(defclass cart ()
   ((x :accessor cart_x :initarg :x )
    (y :accessor cart_y :initarg :y )
   )
)


(setf v1 (make-instance 'cart :x 100 :y 200))
(print (x v1))


;(defclass polar ()
;   ((r :accessor r )
;    (alpha :accessor alpha )
;   )
;)

;(defclass line ()
;   ((vertex1 :accessor vertex1 )
;    (vertex2 :accessor vertex2 )
;   )
;)

;(defclass triangle ()
;   (
;    (vertex1 :accessor vertex1)
;    (vertex2 :accessor vertex2)
;    (vertex3 :accessor vertex3)
;   )
;)


;(defun mediana (tri)
; let ()
; (print (type-of (vertex1 tri))) 
;)






;(
; let ()
;(setf v1 (make-instance 'cart))
;(setf (x v1) 10)
;(print (x v1) )

;(setf v2 (make-instance 'polar))
;(setf (alpha v2) 10)
;(print (alpha v2))
;)

