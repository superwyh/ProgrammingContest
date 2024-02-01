(define/contract (trailing-zeroes n)
  (-> exact-integer? exact-integer?)
  (if (= n 0)
      0
      (+ (quotient n 5) (trailing-zeroes (quotient n 5)))))
