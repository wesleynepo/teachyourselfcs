(define (list-reverse el)
  (if (empty? el)
      '()
      (ht (cdr el) (cons (car el) '()))))

(define (ht head tail)
  (if (empty? (cdr head))
    (cons (car head) tail)
    (ht (cdr head) (cons (car head) tail))))


(define (solution seq)
  (if (null? seq)
      '()
      (append (solution (cdr seq)) (list (car seq)))))
