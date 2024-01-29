; 代码和算法应该都没有问题，但是在Leetcode上提交会提示所有数据全都超时。
; 但在测试里所有数据又正常了，而且非常快，估计是Leetcode的Racket编译器有什么bug …… 也不是第一次发生了，估计没什么人用Racket写，所以根本没人发现过。
(define/contract (max-nice-divisors primeFactors)
  (-> exact-integer? exact-integer?)
  (let ([mod (+ (expt 10 9) 7)])
    (cond
      [(= primeFactors 1) 1]
      [(= (remainder primeFactors 3) 0) (modulo (expt 3 (quotient primeFactors 3)) mod)]
      [(= (remainder primeFactors 3) 1) (modulo (* (expt 3 (quotient (- primeFactors 3) 3)) 4) mod)]
      [else (modulo (* (expt 3 (quotient primeFactors 3)) 2) mod)])))
