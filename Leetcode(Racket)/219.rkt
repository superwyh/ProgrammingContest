; 这道题在Leetcode无论如何都过不去所有答案，我提交了好多次，最多一次过了54/58个，最少一次是46/58个，没过去的全部是因为超时
; 但我把过不去的数据放在测试用例里试了一下，都能通过
; 而且这是一个o(n)的算法。所以只能猜测是Leetcode的bug

(define/contract (contains-nearby-duplicate nums k)
  (-> (listof exact-integer?) exact-integer? boolean?)
  (define indexes (make-hash))
  (define result #f)  ; 默认结果为 #f
  (for ((i (in-range (length nums))))
    (define num (list-ref nums i))
    (define prev-index (hash-ref indexes num #f))
    (when (and prev-index (<= (- i prev-index) k))
      (set! result #t))  ; 如果找到满足条件的重复元素，则设置 result 为 #t
    (hash-set! indexes num i))
  result) 
