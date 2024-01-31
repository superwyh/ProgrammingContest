(define/contract (divide dividend divisor)
  (-> exact-integer? exact-integer? exact-integer?)
  (if (and (= dividend -2147483648) (= divisor -1))
      2147483647
      (let* ([a (abs dividend)]
             [b (abs divisor)]
             [res 0])
        (for ([i (in-range 31 -1 -1)])
          (when (<= (arithmetic-shift b i) a)
            (set! res (+ res (arithmetic-shift 1 i)))
            (set! a (- a (arithmetic-shift b i)))))
        (if (xor (< dividend 0) (< divisor 0))
            (- res)
            res))))
