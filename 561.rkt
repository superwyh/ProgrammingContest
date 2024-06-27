(require racket/list)
(require racket/contract)

(define/contract (array-pair-sum nums)
  (-> (listof exact-integer?) exact-integer?)
  (let ([sorted-nums (sort nums <)])
    (apply + (for/list ([i (in-range 0 (length sorted-nums) 2)])
               (list-ref sorted-nums i)))))
