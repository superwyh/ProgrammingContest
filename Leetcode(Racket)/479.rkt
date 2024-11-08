(define/contract (largest-palindrome n)
  (-> exact-integer? exact-integer?)
  (if (= n 1)
      9
      (let loop-outer ([x (- (expt 10 n) 1)])
        (if (= x 0)
            0 ; 如果 x 减小到 0，没有找到回文数
            (let* ([px-str (string-append (number->string x) 
                                          (list->string (reverse (string->list (number->string x)))))]
                   [px (string->number px-str)]
                   [f-start (- (expt 10 n) 1)]
                   [f-end (floor (sqrt px))])
              (let loop-inner ([f f-start])
                (if (<= f f-end)
                    (loop-outer (- x 1))
                    (if (zero? (remainder px f))
                        (remainder px 1337)
                        (loop-inner (- f 1))))))))))
