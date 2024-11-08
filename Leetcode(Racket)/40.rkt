(define/contract (combination-sum2 candidates target)
  (-> (listof exact-integer?) exact-integer? (listof (listof exact-integer?)))
  (let ([res '()])  ; 初始化 res 为一个空列表
    (define (dfs begin path residue)
      (cond
        [(zero? residue)
         (set! res (cons (reverse path) res))]  ; 更新 res
        [else
         (for ((index (in-range begin (length candidates))))
           (let ((candidate (list-ref candidates index)))
             (when (<= candidate residue)
               (when (or (= index begin)
                         (not (= (list-ref candidates (sub1 index)) candidate)))
                 (dfs (add1 index) (cons candidate path) (- residue candidate))))))]))
    
    (define size (length candidates))
    (if (zero? size)
        '()
        (begin
          (set! candidates (sort candidates <))
          (dfs 0 '() target)
          res))))

