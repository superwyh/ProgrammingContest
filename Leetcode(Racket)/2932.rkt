(define (cartesian-product lst1 lst2)
  (append-map (lambda (x) (map (lambda (y) (list x y)) lst2)) lst1))

(define/contract (maximum-strong-pair-xor nums)
  (-> (listof exact-integer?) exact-integer?)
  (let ([valid-pairs (filter (lambda (pair) (<= (abs (- (first pair) (second pair))) (min (first pair) (second pair))))
                             (cartesian-product nums nums))])
    (apply max (map (lambda (pair) (bitwise-xor (first pair) (second pair))) valid-pairs))))
