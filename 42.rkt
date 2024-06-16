(define/contract (trap height)
  (-> (listof exact-integer?) exact-integer?)
  (let* ([n (length height)]
         [s1 0]
         [s2 0]
         [max1 0]
         [max2 0])
    (for ([i (in-range n)])
      (begin
        (set! max1 (max max1 (list-ref height i)))
        (set! max2 (max max2 (list-ref height (- n i 1))))
        (set! s1 (+ s1 max1))
        (set! s2 (+ s2 max2))))
    (let ([res (- (+ s1 s2) (* max1 n) (apply + height))])
      res)))