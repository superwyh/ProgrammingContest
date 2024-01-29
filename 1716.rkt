(define/contract (total-money n)
  (-> exact-integer? exact-integer?)
  (let* ([p (quotient n 7)]
         [q (remainder n 7)]
         [part1 (* 28 p)]
         [part2 (quotient (* 7 p (- p 1)) 2)]
         [part3 (* p q)]
         [part4 (quotient (* q (+ q 1)) 2)])
    (+ part1 part2 part3 part4)))
