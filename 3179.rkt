(require math) ; 用于组合数的计算

(define/contract (value-after-k-seconds n k)
  (-> exact-integer? exact-integer? exact-integer?)
  (define modulus 1000000007)
  (define comb (binomial (+ n k -1) k))
  (modulo comb modulus))