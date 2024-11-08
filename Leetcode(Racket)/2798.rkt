(define/contract (number-of-employees-who-met-target hours target)
  (-> (listof exact-integer?) exact-integer? exact-integer?)

  (define (count-met-target hours target)
    (length (filter (lambda (hour) (>= hour target)) hours)))

  (count-met-target hours target))
