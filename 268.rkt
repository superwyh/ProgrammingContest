(define/contract (missing-number nums)
  (-> (listof exact-integer?) exact-integer?)
  (let ([sum (/ (* (length nums) (+ (length nums) 1)) 2)])
    (foldl (lambda (num acc) (- acc num)) sum nums)))
