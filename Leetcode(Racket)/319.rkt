(define (bulb-switch n)
  (let loop ((s 0) (x 3) (ans 0))
    (if (>= s n)
        ans
        (loop (+ s x) (+ x 2) (+ ans 1)))))
