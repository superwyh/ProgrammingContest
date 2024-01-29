(define/contract (divisor-game n)
  (-> exact-integer? boolean?)
  (even? n))
