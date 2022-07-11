(define (approach x y)
  (/ (+ (/ x ( * y y)) (* 2 y)) 3))

(define (cubic-root x)
  (cubic-iter 1.0 x))

(define (cubic-iter guess target)
  (if (good-enough? guess target)
    guess
    (cubic-iter (improve guess target) target)))

(define (good-enough? guess target )
  (< (abs (- guess (improve guess target))) (* guess 0.0001)))

(define (improve guess target)
  (approach target guess))

