;;solution 1-3
(define (proc n1 n2 n3)
  cond((and((< n1 n2) (< n1 n3)) (+ (* n2 n2) (* n3 n3)))
       (and((< n2 n3) (< n2 n1)) (+ (* n1 n1) (* n3 n3)))
       (#t (+ (* n2 n2) (* n1 n1)))))
