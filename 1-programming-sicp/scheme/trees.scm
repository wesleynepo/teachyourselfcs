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
