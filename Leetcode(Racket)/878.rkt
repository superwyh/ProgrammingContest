(define/contract (nth-magical-number n a b)
  (-> exact-integer? exact-integer? exact-integer? exact-integer?)
  (let* ([lcm (lcm a b)]
         [low (min a b)]
         [high (* (min a b) n)]
         [modulus (+ (expt 10 9) 7)])
    (let loop ([low low] [high high])
      (if (> high low)
          (let* ([mid (quotient (+ low high) 2)]
                 [count (+ (quotient mid a) (quotient mid b) (- (quotient mid lcm)))])
            (if (>= count n)
                (loop low mid)
                (loop (+ mid 1) high)))
          (modulo low modulus)))))
