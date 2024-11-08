(define/contract (length-of-lis nums)
  (-> (listof exact-integer?) exact-integer?)
  (define n (length nums))
  (if (<= n 1)
      n
      (let loop ([res (list (first nums))]
                 [nums (rest nums)])
        (if (null? nums)
            (length res)
            (let* ([num (first nums)]
                   [res-last (last res)])
              (if (> num res-last)
                  (loop (append res (list num)) (rest nums))
                  (let binary-search ([left 0] [right (length res)])
                    (if (>= left right)
                        (loop (list-set res left num) (rest nums))
                        (let ([mid (quotient (+ left right) 2)])
                          (if (< (list-ref res mid) num)
                              (binary-search (+ mid 1) right)
                              (binary-search left mid)))))))))))

;; Helper functions
(define (list-set lst idx val)
  (append (take lst idx) (list val) (drop lst (+ idx 1))))
