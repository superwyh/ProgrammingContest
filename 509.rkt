(define/contract (fib N)
  (-> exact-integer? exact-integer?)
  (if (< N 2)
      N
      (+ (fib (- N 1)) (fib (- N 2)))))
