(define/contract (xor-game nums)
  (-> (listof exact-integer?) boolean?)
  (if (even? (length nums))
      #t
      (let ([ans (foldl (lambda (num acc) (bitwise-xor acc num)) 0 nums)])
        (= ans 0))))
