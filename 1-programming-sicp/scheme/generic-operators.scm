(define pi 3.141492654)


;;; tagged data

(define attach-tag cons)
(define type-tag car)
(define contents cdr)

(define (make-square side)
  (attach-tag 'square side))

(define (make-circle radius)
  (attach-tag 'circle radius))

;; conventional style

(define (area shape)
  (cond ((eq? (type-tag shape) 'square)
         ( * (contents shape) (contents shape)))
        ((eq? (type-tag shape) 'circle)
         (* pi (contents shape) (contents shape)))
        (else (error "Unknown shape -- AREA"))))

;; data directed programming

(put 'square 'area (lambda (s) (* s s)))
(put 'circle 'area (lambda (r) (* r r)))
(put 'square 'perimeter (lambda (s) (* 4 s)))
(put 'circle 'perimeter (lambda (r) (* 2 pi r)))

(define (operate operation object)
  (let ((proc (get (type-tag object) op)))
    (if proc
      (proc (contents object))
      (error "Unknown operator for type"))))

(define (shape-area shape)
  (operate 'area shape))

(define (shape-perimeter shape)
  (operate 'perimeter shape))

;; m passing

(define (operate operation object)
  (object operation))

(define (make-square side)
  (lambda (message)
    (cond((eq? message 'area) (* side side))
         ((eq? message 'perimeter) (* 4 side))
         (else (error "Unkown message")))))


;; flavors
;; interger
;; rational
;; real
;; complex



