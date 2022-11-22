(A 1 10)
(A 0 (A 1 9))
(A 0 (A 0 (A 1 8)))
(A 0 ..... (A 1 2))))))
(A 0 2) .....
1024

(A 2 4)
(A 1 (A 2 3))
(A 1 (A 1 (A 2 2)))
(A 1 (A 1 (A 1 (A 2 1))))
(A 1 (A 1 (A 1 (2))))
(A 1 (A 1 (A 0 (A 1 1))))
(A 1 (A 1 (A 0 (2))))
(A 1 (A 1 (4)))
.....
65536

No way I will keep doing this...

(define (f n) (A 0 n))

(A 0 n)
(* 2 n)

(define (g n) (A 1 n))

(A 1 n)

n = 0
0\

n = 1
2

n > 1
2^(2^(n times))
