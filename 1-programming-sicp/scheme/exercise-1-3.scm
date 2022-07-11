;;solution 1-3

(define (square x) (* x x))

(define (squareSum x y) (+ (square x) (square y)))

(define (sumOfSquares x y z)
  (cond ((and (<= x y) (<= x z)) (squareSum y z))
        ((and (<= y z) (<= y x)) (squareSum x z))
        (esle (squareSum x y))))
