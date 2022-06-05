
(define (buzz m)
  (cond ((equal? (remainder m 7) 0) 'buzz)
        ((member? 7 m) 'buzz)
        (else m)))
