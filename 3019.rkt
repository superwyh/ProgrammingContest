
(define/contract (count-key-changes s)
  (-> string? exact-integer?)

  (define (pairwise lst)
    (if (or (null? lst) (null? (cdr lst)))
        '()
        (cons (list (car lst) (cadr lst)) (pairwise (cdr lst)))))

  (define (count-differences str)
    (apply +
           (map (lambda (pair) (if (equal? (car pair) (cadr pair)) 0 1))
                (pairwise (string->list (string-upcase str))))))

  (count-differences s))