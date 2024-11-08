(require racket/list)

(define/contract (count-of-pairs n x y)
  (-> exact-integer? exact-integer? exact-integer? (listof exact-integer?))
  (let* ([x (if (> x y) (begin0 y (set! y x)) x)]
         [dp (make-vector n 0)]
         [vis '()])
    ;; 特殊情况处理
    (if (= x y)
        (begin
          (for ([i (in-range n)])
            (vector-set! dp i (* 2 (- n i 1))))
          (vector->list dp))
        ;; 主要逻辑
        (begin
          (for ([v (in-range 1 n)])
            (for ([k (in-range (+ v 1) (+ n 1))])
              (unless (= v k)
                (let* ([ans (cond
                              [(and (= v x) (= k y)) 1]
                              [(or (and (<= v x) (<= k x)) (and (>= v y) (>= k y))) (- k v)]
                              [(and (<= x v y) (<= x k y)) (min (- k v) (+ (- y k) 1 (- v x)))]
                              [(and (<= v x) (<= x k y)) (min (- k v) (+ (- y k) 1 (- x v)))]
                              [(and (<= x v y) (>= k y)) (min (- k v) (+ (- v x) 1 (- k y)))]
                              [(and (<= v x) (>= k y)) (+ (- k y) 1 (- x v))]
                              [else 0])])
                  (set! vis (cons ans vis))))))
          (for ([val vis])
            (vector-set! dp (- val 1) (+ 2 (vector-ref dp (- val 1)))))
          (vector->list dp)))))