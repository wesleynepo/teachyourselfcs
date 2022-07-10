(define make-count
  (lambda ()
    ((lambda (result)
       (lambda ()
         (set! result (+ result 1))
         result))
     0)))


