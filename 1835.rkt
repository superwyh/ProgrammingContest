(define/contract (get-xor-sum arr1 arr2)
  (-> (listof exact-integer?) (listof exact-integer?) exact-integer?)
  (let ([xor-sum1 (foldl bitwise-xor 0 arr1)]
        [xor-sum2 (foldl bitwise-xor 0 arr2)])
    (bitwise-and xor-sum1 xor-sum2)))
