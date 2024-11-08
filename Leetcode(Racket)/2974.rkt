(define/contract (number-game nums)
  (-> (listof exact-integer?) (listof exact-integer?))

  (define sorted-nums (sort nums <))
  (define n (length sorted-nums))

  (define (swap-pairs lst)
    (if (or (null? lst) (null? (cdr lst)))
        lst
        (cons (cadr lst) (cons (car lst) (swap-pairs (cddr lst))))))
  
  (swap-pairs sorted-nums))
