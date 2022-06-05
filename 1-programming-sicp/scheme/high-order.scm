(define (evens nums)
  (cond ((empty? nums) '())
        ((= (remainder (first nums) 2) 0)
         (se (first nums) (evens (bf nums))))
        (else (evens (bf nums)))))

(define (ewords sent)
  (cond ((empty? sent) '())
        ((member? 'e (first sent)) (se (first sent) (ewords (bf sent))))
        (else (ewords (bf sent)))))

(define (keep PRED sent)
  (cond ((empty? sent) '())
        ((PRED (first sent)) (se (first sent) (PRED (bf sent))))
        (else (keep PRED (bf sent)))))

(define (make-adder num) (lambda (x) (+ x num)))

(define (compose f g)
  (lambda (x) (f (g x))))


(define (roots a b c)
    (let ((d (sqrt (- (* b b) (* 4 a c)))))
      (-b (- b))
      (2a (* 2 a)))
        (se (/ (+ -b d) 2a)
            (/ (- -b d) 2a)))
