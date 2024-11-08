(define/contract (find-kth-number n k)
  (-> exact-integer? exact-integer? exact-integer?)
  
  (define (get-count prefix)
    (let loop ([current prefix] [next (+ prefix 1)] [count 0])
      (cond
        [(> current n) count]
        [else (loop (* current 10) (* next 10) (+ count (min (add1 n) next) (- current)))])))

  (let loop ([res 1] [k (- k 1)])
    (if (> k 0)
        (let* ([count (get-count res)]
               [new-k (- k count)])
          (if (>= new-k 0)
              (loop (+ res 1) new-k)
              (loop (* res 10) (- k 1))))
        res)))
