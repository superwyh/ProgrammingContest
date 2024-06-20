; 定义一个节点结构
(struct creat-node (key value prev next) #:mutable #:transparent)

; 构造函数
(define (make-creat-node [key 0] [value 0])
  (creat-node key value #f #f))

(define lru-cache%
  (class object%
    (super-new)
    
    (init-field [capacity 0])
    
    (define hash (make-hash))
    (define size 0)
    (define head (make-creat-node))
    (define tail (make-creat-node))

    (begin
      (set-creat-node-next! head tail)
      (set-creat-node-prev! tail head))

    ; get : exact-integer? -> exact-integer?
    (define/public (get key)
      (if (hash-has-key? hash key)
          (let ([node (hash-ref hash key)])
            (remove-node node)
            (add-to-head node)
            (creat-node-value node))
          -1))

    ; put : exact-integer? exact-integer? -> void?
    (define/public (put key value)
      (if (hash-has-key? hash key)
          (let ([node (hash-ref hash key)])
            (set-creat-node-value! node value)
            (remove-node node)
            (add-to-head node))
          (let ([node (make-creat-node key value)])
            (hash-set! hash key node)
            (add-to-head node)
            (set! size (+ size 1))
            (when (> size capacity)
              (let ([removed (remove-tail)])
                (hash-remove! hash (creat-node-key removed))
                (set! size (- size 1)))))))

    ; add-to-head : creat-node? -> void
    (define/private (add-to-head node)
      (set-creat-node-next! node (creat-node-next head))
      (set-creat-node-prev! node head)
      (set-creat-node-prev! (creat-node-next head) node)
      (set-creat-node-next! head node))

    ; remove-node : creat-node? -> void
    (define/private (remove-node node)
      (set-creat-node-next! (creat-node-prev node) (creat-node-next node))
      (set-creat-node-prev! (creat-node-next node) (creat-node-prev node)))

    ; move-to-head : creat-node? -> void
    (define/private (move-to-head node)
      (remove-node node)
      (add-to-head node))

    ; remove-tail : -> creat-node?
    (define/private (remove-tail)
      (let ([node (creat-node-prev tail)])
        (remove-node node)
        node))))