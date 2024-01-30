(define/contract (min-moves nums)
  (-> (listof exact-integer?) exact-integer?)
  (let ([minvalue (apply min nums)])
    (foldl (lambda (i acc) (+ acc (- i minvalue))) 0 nums)))
