(define/contract (number-of-cuts n)
  (-> exact-integer? exact-integer?)

  (if (or (= n 1) (even? n))
      (quotient n 2)
      n))
