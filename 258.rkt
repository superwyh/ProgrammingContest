(define/contract (add-digits num)
  (-> exact-integer? exact-integer?)
  (if (= num 0)
      num
      (+ 1 (modulo (- num 1) 9))))
