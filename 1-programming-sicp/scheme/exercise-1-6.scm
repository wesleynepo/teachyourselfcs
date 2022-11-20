(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else-clause else-clause)))

(define (sqrt-iter guess x)
  (new-if (goo-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

Infinite recursion due applicative order.

