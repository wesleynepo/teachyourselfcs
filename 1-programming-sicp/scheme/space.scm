(define (count sent)
  (define (iter words result)
    (if (empty? words)
        result
        (iter (bf words) (+ 1 result)) ))
  (iter sent 0)
