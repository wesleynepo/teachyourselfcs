(define make-tree cons)
(define datum car)
(define children cdr)

(define (leaf? node)
  (null? (children node)))

;;; List of trees is a FOREST

(define (leaves . seq)
  (map (lambda (x) (make-tree x '())) seq))

(define t1
  (make-tree 1
             (list (make-tree 2 (leaves 3 4))
                   (make-tree 5 (leaves 6 7 8)) )))

(define (treemap fn tree)
  (make-tree (fn (datum tree))
             (map (lambda (child) (treemap fn child))
                  (children tree) )))

(define (deep-map fn lol)
  (if (list? lol)
      (map (lambda (element) (deep-map fn element))
           lol)
      (fn lol)))

(define lol '((john l) (paul m) (george h) (ringo s)))

(define (depth-first-search tree)
  (print (datum tree))
  (for-each depth-first-search (children tree)))

(define (breath-first tree)
  (bfs-iter (list tree)))

(define (bfs-iter queue)
  (if (null? queue)
    'done
    (let ((task (car queue)))
        (print (datum task))
        (bfs-iter (append (cdr queue) (children task))))))
