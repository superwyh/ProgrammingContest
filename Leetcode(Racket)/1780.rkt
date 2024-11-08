(define/contract (check-powers-of-three n)
  (-> exact-integer? boolean?)
  (let loop ([n n])
    (cond
      [(= n 0) #t]
      [(> (remainder n 3) 1) #f]
      [else (loop (quotient n 3))])))
