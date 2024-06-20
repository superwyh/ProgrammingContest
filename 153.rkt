、(define/contract (find-min nums)
  (-> (listof exact-integer?) exact-integer?)
  (let ([left 0]
        [right (- (length nums) 1)])
    (let loop ()
      (if (< left right)
          (let* ([mid (quotient (+ left right) 2)]
                 [left-val (list-ref nums left)]
                 [mid-val (list-ref nums mid)]
                 [right-val (list-ref nums right)])
            (cond
              [(<= left-val mid-val right-val) ; [left, right] is sorted
               (set! right left)]
              [(and (<= left-val mid-val) (<= right-val mid-val)) ; [left, mid] is sorted, [mid, right] has unsorted part
               (set! left (+ mid 1))]
              [(and (>= left-val mid-val) (>= right-val mid-val)) ; [left, mid] has unsorted part, [mid, right] is sorted
               (set! right mid)]
              [else (error "Unexpected case")])
            (loop))
          (list-ref nums left))))
  )