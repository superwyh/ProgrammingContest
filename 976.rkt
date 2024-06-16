(define/contract (largest-perimeter nums)
  (-> (listof exact-integer?) exact-integer?)
  (let* ((sorted-nums (sort nums >))
         (n (length sorted-nums)))
    (let loop ((i 0))
      (if (>= i (- n 2))
          0
          (let ([a (list-ref sorted-nums i)]
                [b (list-ref sorted-nums (+ i 1))]
                [c (list-ref sorted-nums (+ i 2))])
            (if (> (+ b c) a)
                (+ a b c)
                (loop (+ i 1))))))))
