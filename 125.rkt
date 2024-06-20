;; 有一组数据无论如何都超时，应该是编译器的问题了，想不到任何优化的余地

(define/contract (candy ratings)
  (-> (listof exact-integer?) exact-integer?)
  (let* ([n (length ratings)]
         [left (make-vector n 1)])
    (when (> n 0)
      (for ([i (in-range 1 n)])
        (when (> (list-ref ratings i) (list-ref ratings (- i 1)))
          (vector-set! left i (+ 1 (vector-ref left (- i 1))))))
      (let ([c (vector-ref left (- n 1))]
            [t 1])
        (for ([i (in-range (- n 2) -1 -1)])
          (if (> (list-ref ratings i) (list-ref ratings (+ i 1)))
              (set! t (+ t 1))
              (set! t 1))
          (set! c (+ c (max (vector-ref left i) t))))
        c))))
