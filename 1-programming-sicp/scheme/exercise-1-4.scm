(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

Do you mean, describe how it's evaluated?

For a positive b value
(a-plus-abs-b 1 1)

((if (> 1 0) + -) 1 1)
((if #t + -) 1 1)
(+ 1 1)
(2)

For a negative b value
(a-plus-abs-b 1 -3)

((if (> -3 0) + -) 1 -3)
((if #f + -) 1 -3)
(- 1 -3)
(4)
