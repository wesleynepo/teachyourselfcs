(define (sumsquare a b)
  (if (> a b)
    0
    (+ (* a a) (sumsquare (+ a 1) b))))
