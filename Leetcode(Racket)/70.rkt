(define/contract (climb-stairs n)
  (-> exact-integer? exact-integer?)
  (let loop ((i 1)
             (a 1)
             (b 1))
    (if (= i n)
        b
        (loop (+ i 1) b (+ a b)))))