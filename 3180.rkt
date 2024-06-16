(require racket/list
         racket/function)

;; 定义全局缓存
(define memo (make-hash))

(define/contract (max-total-reward rewardValues)
  (-> (listof exact-integer?) exact-integer?)
  ;; 定义递归函数
  (define (dfs cur)
    (if (hash-has-key? memo cur)
        (hash-ref memo cur)
        (let ([res 0])
          (for-each (lambda (x)
                      (when (< cur x)
                        (set! res (max res (+ (dfs (+ cur x)) x)))))
                    rewardValues)
          (hash-set! memo cur res)
          res)))
  ;; 将 rewardValues 排序
  (set! rewardValues (sort rewardValues <))
  ;; 清空 memo
  (set! memo (make-hash))
  ;; 调用 dfs 并返回结果
  (dfs 0))