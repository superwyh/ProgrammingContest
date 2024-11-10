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

(define/contract (swap-pairs head)
  (-> (or/c list-node? #f) (or/c list-node? #f))
  (let ([thead (make-list-node -1)])
    (set-list-node-next! thead head)
    (let loop ([c thead])
      (if (and (list-node? (list-node-next c))
               (list-node? (list-node-next (list-node-next c))))
          (let* ([a (list-node-next c)]
                 [b (list-node-next a)])
            (set-list-node-next! c b)
            (set-list-node-next! a (list-node-next b))
            (set-list-node-next! b a)
            (loop (list-node-next (list-node-next c))))
          (list-node-next thead)))))
