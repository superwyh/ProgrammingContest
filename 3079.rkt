(define/contract (sum-of-encrypted-int nums)
  (-> (listof exact-integer?) exact-integer?)
  (let loop ([nums nums] [ans 0])
    (if (null? nums)
        ans
        (let* ([num (car nums)]
               [mx 0]
               [i 0])
          (let loop2 ([num num] [mx mx] [i i])
            (if (= num 0)
                (loop (cdr nums) (+ ans (* mx i)))
                (loop2 (quotient num 10)
                       (max mx (remainder num 10))
                       (+ (* i 10) 1))))))))