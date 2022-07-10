(define alist '((john . rythm) (paul . bass) (george . lead) (ringo . drums)))

(define atable (list '*table*))

(define (get key)
  (let ((record (assoc key (cdr atable)))))
    (if (not record)
      #f
      (cdr record)))

(define (put key record)
  (let ((record (assoc key (cdr atable)))))
    (if (not record)
        (set-cdr! atable (cons (cons key value) (cdr atable)))
        (set-cdr! record value)))
