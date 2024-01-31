(define/contract (is-perfect-square num)
  (-> exact-integer? boolean?)
  (if (= num 1)
      #t
      (let loop ([l 1] [r (- num 1)])
        (if (> l r)
            #f
            (let* ([mid (quotient (+ l r) 2)]
                   [mid-squared (* mid mid)])
              (cond
                [(= mid-squared num) #t]
                [(> mid-squared num) (loop l (- mid 1))]
                [else (loop (+ mid 1) r)]))))))
