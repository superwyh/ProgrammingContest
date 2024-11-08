(define/contract (prime-palindrome N)
  (-> exact-integer? exact-integer?)
  
  (define (is-prime n)
    (and (> n 1)
         (for/and ([d (in-range 2 (add1 (floor (sqrt n))))])
           (not (zero? (remainder n d))))))

  (define (reverse x)
    (let loop ([x x] [ans 0])
      (if (zero? x)
          ans
          (loop (quotient x 10) (+ (* ans 10) (remainder x 10))))))

  (let loop ([N N])
    (cond [(and (= N (reverse N)) (is-prime N)) N]
          [else (if (and (> N 10000000) (< N 100000000))
                   (loop 100000000)
                   (loop (add1 N)))])))
