(define/contract (dominant-index nums)
  (-> (listof exact-integer?) exact-integer?)

  (define (index-of-max lst)
    (let loop ([max-val (first lst)] [max-idx 0] [idx 1])
      (if (= idx (length lst))
          max-idx
          (let ([curr-val (list-ref lst idx)])
            (if (> curr-val max-val)
                (loop curr-val idx (+ idx 1))
                (loop max-val max-idx (+ idx 1)))))))

  (define (is-dominant max-val max-idx lst)
    (for/or ([i (in-range (length lst))])
      (let ([val (list-ref lst i)])
        (and (not (= i max-idx)) (> (* 2 val) max-val)))))

  (let ([max-idx (index-of-max nums)]
        [max-val (list-ref nums (index-of-max nums))])
    (if (is-dominant max-val max-idx nums)
        -1
        max-idx)))
