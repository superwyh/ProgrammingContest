(define/contract (is-good-array nums)
  (-> (listof exact-integer?) boolean?)
  (if (null? nums)
      #f
      (= 1 (foldl gcd (first nums) (rest nums)))))
