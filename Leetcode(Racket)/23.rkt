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

(require racket/list)

(define/contract (merge-k-lists lists)
  (-> (listof (or/c list-node? #f)) (or/c list-node? #f))
  (let ([n (length lists)])
    (cond
      [(= n 0) #f]
      [(= n 1) (first lists)]
      [else
       (define values (apply append (map (lambda (l)
                                           (let loop ((l l) (acc '()))
                                             (if (list-node? l)
                                                 (loop (list-node-next l) (cons (list-node-val l) acc))
                                                 acc)))
                                         lists)))
       (define sorted-values (sort values <))
       (let* ([dummy (make-list-node)]
              [current dummy])
         (for ([val sorted-values])
           (set-list-node-next! current (make-list-node val))
           (set! current (list-node-next current)))
         (list-node-next dummy))])))
