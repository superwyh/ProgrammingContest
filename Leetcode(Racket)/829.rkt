(define/contract (consecutive-numbers-sum n)
  (-> exact-integer? exact-integer?)
  
  (define (isKConsecutive n k)
    (if (odd? k)
        (= 0 (remainder n k))
        (and (not (= 0 (remainder n k)))
             (= 0 (remainder (* 2 n) k)))))

  (let loop ([k 1] [ans 0])
    (if (> (* k (+ k 1)) (* 2 n))
        ans
        (loop (+ k 1) (if (isKConsecutive n k) (+ ans 1) ans)))))
