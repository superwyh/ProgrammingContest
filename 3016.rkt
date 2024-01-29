(define/contract (minimum-pushes word)
  (-> string? exact-integer?)

  (define (char-frequencies str)
    (foldl (lambda (char freq-hash)
             (hash-update freq-hash char add1 0))
           (hash)
           (string->list str)))

  (define (sorted-frequencies str)
    (sort (map cdr (hash->list (char-frequencies str))) >))

  (define (safe-take lst start end)
    (if (< (length lst) start)
        '()
        (take (drop lst start) (min (- end start) (length (drop lst start))))))

  (define (sum-slice lst start end multiplier)
    (* (apply + 0 (safe-take lst start end)) multiplier))

  (define values-list (sorted-frequencies word))

  (define sum1 (sum-slice values-list 0 8 1))
  (define sum2 (sum-slice values-list 8 16 2))
  (define sum3 (sum-slice values-list 16 24 3))
  (define sum4 (sum-slice values-list 24 26 4))

  (+ sum1 sum2 sum3 sum4))