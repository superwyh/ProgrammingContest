(require racket/list
         racket/contract)

(define/contract (max-points points)
  (-> (listof (listof exact-integer?)) exact-integer?)
  (let* ([n (length points)]
         [ans 1])
    (for ([i (in-range n)])
      (let* ([x (list-ref points i)])
        (for ([j (in-range (+ i 1) n)])
          (let* ([y (list-ref points j)]
                 [cnt 2])
            (for ([k (in-range (+ j 1) n)])
              (let* ([p (list-ref points k)]
                     [s1 (* (- (list-ref y 1) (list-ref x 1)) (- (list-ref p 0) (list-ref y 0)))]
                     [s2 (* (- (list-ref p 1) (list-ref y 1)) (- (list-ref y 0) (list-ref x 0)))])
                (when (= s1 s2)
                  (set! cnt (+ cnt 1)))))
            (set! ans (max ans cnt))))))
    ans))