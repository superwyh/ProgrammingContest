(define/contract (reinitialize-permutation n)
  (-> exact-integer? exact-integer?)
  
  (let loop ([ans 0] [i 1])
    (let* ([ans (+ ans 1)]
           [i (if (< i (arithmetic-shift n -1))
                  (arithmetic-shift i 1)
                  (bitwise-ior (arithmetic-shift (- i (arithmetic-shift n -1)) 1) 1))])
      (if (= i 1)
          ans
          (loop ans i)))))
