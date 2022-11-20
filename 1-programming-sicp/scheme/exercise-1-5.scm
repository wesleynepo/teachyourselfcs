(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))


Aplicattive order
Since there is no arguments for p it will try to solve p first.
(test 0 (p))
(test 0 (p))
and so on

Normal order
(test 0 (p))
(test 0 p)
(if (= 0 0) 0 p)
(if #t 0 p)
0
Without needing to solve the real value of P(?)
