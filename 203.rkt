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

(define/contract (remove-elements head val)
  (-> (or/c list-node? #f) exact-integer? (or/c list-node? #f))
  (let ([dummy-head (make-list-node)])
    (set-list-node-next! dummy-head head)
    (let loop ([cur dummy-head])
      (cond
        [(or (null? (list-node-next cur))
             (eq? (list-node-next cur) #f))
         (list-node-next dummy-head)]
        [(= (list-node-val (list-node-next cur)) val)
         (begin
           (set-list-node-next! cur (list-node-next (list-node-next cur)))
           (loop cur))]
        [else
         (loop (list-node-next cur))]))))
