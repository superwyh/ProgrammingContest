; Definition for singly-linked list:
#|

; val : integer?
; next : (or/c list-node? #f)
(struct list-node
  (val next) #:mutable #:transparent)

; constructor
(define (make-list-node [val 0])
  (list-node val #f))

|#

(define/contract (remove-nth-from-end head n)
  (-> (or/c list-node? #f) exact-integer? (or/c list-node? #f))
  (let* ((dummy (make-list-node 0))
         (_ (set-list-node-next! dummy head))
         (left dummy)
         (right dummy))
    (for ([i (in-range n)])
      (set! right (list-node-next right)))
    (let loop ()
      (when (list-node-next right)
        (set! left (list-node-next left))
        (set! right (list-node-next right))
        (loop)))
    (set-list-node-next! left (list-node-next (list-node-next left)))
    (list-node-next dummy)))
