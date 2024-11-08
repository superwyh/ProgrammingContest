(define/contract (binary-gap n)
  (-> exact-integer? exact-integer?)

  (define binary-str (number->string n 2))

  (define (find-indices-of-ones str)
    (for/list ([char (in-string str)]
               [idx (in-naturals)]
               #:when (char=? char #\1))
      idx))

  (define (max-gap indices)
    (if (< (length indices) 2)
        0
        (let loop ([prev (car indices)]
                   [rest (cdr indices)]
                   [max-gap 0])
          (if (null? rest)
              max-gap
              (let ([current (car rest)])
                (loop current (cdr rest) (max max-gap (- current prev))))))))

  (max-gap (find-indices-of-ones binary-str)))
