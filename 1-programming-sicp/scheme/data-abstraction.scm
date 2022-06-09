(define (total-hand hand)
  (if (empty? hand)
    0
    (+ (card-rank (one-card hand))
       (total-hand (remaining-cards hand)))))

(define card-rank butlast)
(define card-suit last)

(define one-card last)
(define remaining-cards butlast)
