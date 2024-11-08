(define/contract (distribute-candies n limit)
  (-> exact-integer? exact-integer? exact-integer?)
  (let loop ([x1 0] [sum 0])
    (if (> x1 (min n limit))
        sum
        (let ([term (if (<= (- n x1) (* limit 2))
                        (+ (- (min (- n x1) limit) (max 0 (- (- n x1) limit))) 1)
                        0)])
          (loop (add1 x1) (+ sum term))))))
