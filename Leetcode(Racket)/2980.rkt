(define/contract (has-trailing-zeros nums)
  (-> (listof exact-integer?) boolean?)

  (define (count-evens lst)
    (length (filter even? lst)))

  (>= (count-evens nums) 2))