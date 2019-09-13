(defclass cart ()
   (
    (cart_x :accessor x :initarg :x )
    (cart_y :accessor y :initarg :y )
   )
)


(defclass polar ()
   (
    (polar_r :accessor r :initarg :r)
    (polar_alpha :accessor alpha :initarg :alpha)
   )
)

(defclass line ()
   (
    (v1 :accessor v1 :initarg :1)
    (v2 :accessor v2 :initarg :2)
   )
)

(defclass triangle ()
   (
    (v1 :accessor vertex1 :initarg :1)
    (v2 :accessor vertex2 :initarg :2)
    (v3 :accessor vertex3 :initarg :3)
   )
)


(defun mediana (tri)
  (if (typep (vertex1 tri) 'cart) 
    (
      let ((med 0)(s1 0) (s2 0) (s3 0) (v1 (vertex1 tri)) (v2 (vertex2 tri))  (v3 (vertex3 tri)))
      (setq s1   (sqrt ( + (expt (- (x v2) (x v3)) 2) (expt (- (y v2) (y v3)) 2) )))
      (setq s2   (sqrt ( + (expt (- (x v1) (x v3)) 2) (expt (- (y v1) (y v3)) 2) )))
      (setq s3   (sqrt ( + (expt (- (x v2) (x v1)) 2) (expt (- (y v2) (y v1)) 2) )))
      (setq med  (sqrt (- (+ (* 2 (expt s2 2)) (* 2 (expt s3 2))) (expt s1 2) )))
      return-from mediana med
    )
    (
      let ((med 0)(s1 0) (s2 0) (s3 0) (v1  (vertex1 tri)) (v2 (vertex2 tri))  (v3 (vertex3 tri)))
      (setq x1 (* (r v1) (cos (alpha v1)) ))
      (setq y1 (* (r v1) (sin (alpha v1)) ))
      (setq x2 (* (r v2) (cos (alpha v2)) ))
      (setq y2 (* (r v2) (sin (alpha v2)) ))
      (setq x3 (* (r v3) (cos (alpha v3)) ))
      (setq y3 (* (r v3) (sin (alpha v3)) ))
      
      (setq s1   (sqrt ( + (expt (- x2 x3) 2) (expt (- y2 y3) 2) )))
      (setq s2   (sqrt ( + (expt (- x1 x3) 2) (expt (- y1 y3) 2) )))
      (setq s3   (sqrt ( + (expt (- x1 x2) 2) (expt (- y1 y2) 2) )))
      (setq med  (sqrt (- (+ (* 2 (expt s2 2)) (* 2 (expt s3 2))) (expt s1 2) )))
      (print med )
      return-from mediana med

    )  
  ) 
)






;(
; let ()
;(setf v1 (make-instance 'cart))
;(setf (x v1) 10)
;(print (x v1) )

;(setf v2 (make-instance 'polar))
;(setf (alpha v2) 10)
;(print (alpha v2))
;)

