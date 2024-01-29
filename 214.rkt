
(define (string-reverse str)
  (list->string (reverse (string->list str))))

(define/contract (shortest-palindrome s)
  (-> string? string?)

  (define (helper i reverse)
    (if (string-prefix? s (substring reverse i))
        (string-append (substring reverse 0 i) s)
        (helper (add1 i) reverse)))

  (helper 0 (string-reverse s)))