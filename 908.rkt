(define/contract (smallest-range-i nums k)
  (-> (listof exact-integer?) exact-integer? exact-integer?)
  
  (let* ([diff (- (apply max nums) (apply min nums))])
    (if (> diff (* 2 k))
        (- diff (* 2 k))
        0)))
