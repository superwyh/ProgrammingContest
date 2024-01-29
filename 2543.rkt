(define/contract (is-reachable targetX targetY)
  (-> exact-integer? exact-integer? boolean?)
  (let ([g (gcd targetX targetY)])
    (= (bitwise-and g (- g 1)) 0)))
