(define/contract (alternate-digit-sum n)
  (-> exact-integer? exact-integer?)

  (define (compute-alternate-sum n)
    (let loop ((n n) (ans 0) (sign 1))
      (if (= n 0)
          (* ans -1 sign)
          (loop (quotient n 10)
                (+ ans (* (remainder n 10) sign))
                (- sign)))))
  
  (compute-alternate-sum n))
