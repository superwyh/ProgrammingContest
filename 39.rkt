(define/contract (combination-sum candidates target)
  (-> (listof exact-integer?) exact-integer? (listof (listof exact-integer?)))
  (let ([res '()])  ; 初始化结果列表
    (define (dfs candidates begin size path target)
      (cond
        [(< target 0) '()]  ; 如果目标小于0，则返回
        [(= target 0)
         (set! res (cons (reverse path) res))]  ; 如果达到目标，则添加路径到结果
        [else
         (for ((index (in-range begin size)))
           (dfs candidates index size (cons (list-ref candidates index) path) (- target (list-ref candidates index))))]))  ; 对剩余的候选进行递归搜索
    
    (define size (length candidates))
    (if (zero? size)
        '()
        (begin
          (dfs candidates 0 size '() target)
          res))))