 (define (pascal r c)
   (if (or (= c 1) (= c r))
       1
       (+ (pascal (- r 1) (- c 1)) (pascal (- r 1) c))))

All first column 1  (= c 1)
If the column and row is equal you are in the end of it. (= c r)
Call recursive until find a edge and return 1, sum the upper pair.
Left (- c 1) right is c.

