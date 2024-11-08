; Definition for a binary tree node.
#|
; val : integer?
; left : (or/c tree-node? #f)
; right : (or/c tree-node? #f)
(struct tree-node
  (val left right) #:mutable #:transparent)

; constructor
(define (make-tree-node [val 0])
  (tree-node val #f #f))
|#

(define/contract (preorder-traversal root)
  (-> (or/c tree-node? #f) (listof exact-integer?))
  (let ([res '()]
        [stack '()]
        [p root])
    (let loop ()
      (cond
        [(or p (not (null? stack)))
         (cond
           [p
            (set! res (cons (tree-node-val p) res))
            (set! stack (cons p stack))
            (set! p (tree-node-left p))
            (loop)]
           [else
            (let ([node (car stack)])
              (set! stack (cdr stack))
              (set! p (tree-node-right node))
              (loop))])]
        [else
         (reverse res)]))))
