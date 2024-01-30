(define/contract (max-count m n ops)
  (-> exact-integer? exact-integer? (listof (listof exact-integer?)) exact-integer?)
  (if (null? ops)
      (* m n)
      (let* ([ops-rows (map first ops)]
             [ops-cols (map second ops)]
             [min-row (apply min ops-rows)]
             [min-col (apply min ops-cols)])
        (* min-row min-col))))
