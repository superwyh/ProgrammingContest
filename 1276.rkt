(define/contract (num-of-burgers tomatoSlices cheeseSlices)
  (-> exact-integer? exact-integer? (listof exact-integer?))
  (let* ([x (quotient (- tomatoSlices (* 2 cheeseSlices)) 2)]
         [y (- cheeseSlices x)])
    (if (and (>= x 0) (>= y 0) (= (+ (* 4 x) (* 2 y)) tomatoSlices))
        (list x y)
        '())))
