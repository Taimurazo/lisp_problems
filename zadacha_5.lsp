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
  (let ((x1 0) (x2 0) (x3) (y1 0) (y2 0) (y3 0) (x4 0) (y4 0))
  
   (if (typep (vertex1 tri) 'cart) 
        (
         let ()
          (setq x1 (x (vertex1 tri)))
          (setq y1 (y (vertex1 tri)))
          (setq x2 (x (vertex2 tri)))
          (setq y2 (y (vertex2 tri)))
          (setq x3 (x (vertex3 tri)))
          (setq y3 (y (vertex3 tri)))

         )
      (
       let ((v1  (vertex1 tri)) (v2 (vertex2 tri))  (v3 (vertex3 tri)))
        (setq y1 (* (r v1) (sin (alpha v1)) ))
        (setq x2 (* (r v2) (cos (alpha v2)) ))
        (setq y2 (* (r v2) (sin (alpha v2)) ))
        (setq x3 (* (r v3) (cos (alpha v3)) ))
        (setq y3 (* (r v3) (sin (alpha v3)) ))

        )
   )
   (setq x4 (/ (+ x2 x3) 2 ))
   (setq y4 (/ (+ y2 y3) 2 ))
   
   ( make-instance 'line :1 (make-instance 'cart :x x1 :y y1) :2 (make-instance 'cart :x x4 :y y4) )
      
   
)  
)



