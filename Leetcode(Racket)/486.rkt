(require racket/list)

(define/contract (predict-the-winner nums)
  (-> (listof exact-integer?) boolean?)
  (let* ([length (length nums)]
         [dp (make-vector length)])
    (for ([i (in-range length)])
      (vector-set! dp i (make-vector length 0)))
    (if (= length 1)
        #t
        (begin
          (for ([i (in-range length)])
            (vector-set! (vector-ref dp i) i (list-ref nums i)))
          (for ([m (in-range 1 length)]) ;覆盖长度
            (for ([n (in-range 0 (- length m))]) ;i在该覆盖长度下的取值范围
              (vector-set! (vector-ref dp n) (+ n m)
                           (max (- (list-ref nums n) (vector-ref (vector-ref dp (+ n 1)) (+ n m)))
                                (- (list-ref nums (+ n m)) (vector-ref (vector-ref dp n) (+ n m -1)))))))
          (>= (vector-ref (vector-ref dp 0) (- length 1)) 0)))))