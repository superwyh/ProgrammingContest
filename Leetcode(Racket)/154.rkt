(define/contract (find-min nums)
  (-> (listof exact-integer?) exact-integer?)
  (let ([low 0]
        [high (- (length nums) 1)])
    (let loop ()
      (if (< low high)
          (let* ([pivot (+ low (quotient (- high low) 2))]
                 [pivot-val (list-ref nums pivot)]
                 [high-val (list-ref nums high)])
            (cond
              [(< pivot-val high-val)
               (set! high pivot)]
              [(> pivot-val high-val)
               (set! low (+ pivot 1))]
              [else
               (set! high (- high 1))])
            (loop))
          (list-ref nums low))))
  )