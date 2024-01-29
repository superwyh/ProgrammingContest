(define/contract (is-ugly n)
  (-> exact-integer? boolean?)
  (if (<= n 0)
      #f
      (begin
        (do () ((not (zero? (remainder n 2))) n) (set! n (quotient n 2)))
        (do () ((not (zero? (remainder n 3))) n) (set! n (quotient n 3)))
        (do () ((not (zero? (remainder n 5))) n) (set! n (quotient n 5)))
        (= n 1))))