(define fof value
  (if (< value 3) value (+ (fof (- value 1)) (* 2(fof (- value 2))) (* 3 (fof (- value 3))))))


This is the recursive one.

 (define (f n)
   (define (f-i a b c count)
     (cond ((< n 3) n)
           ((<= count 0) a)
           (else (f-i (+ a (* 2 b) (* 3 c)) a b (- count 1)))))
   (f-i 2 1 0 (- n 2)))
And this is the iterative one.
From the edge f(3) we start couting


So for example, when f(4)

f(4)
(f-i 2 1 0 (- 4 2))
(f-i 2 1 0 2)
(f-i (+ 2 (* 2 1) (* 3 0)) 2 1 1)
(f-i (+ 2 2 0) 2 1 1)
(f-i 4 2 1 1)
(f-i (+ 4 (* 2 2) (* 3 1) 4 2 (- 1 1)))
(f-i (+ 4 4 3 ) 4 2 0)
(f-i 11 4 2 0)
(11)

