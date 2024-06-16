(require racket/list
         racket/contract)

(define/contract (three-sum-closest nums target)
  (-> (listof exact-integer?) exact-integer? exact-integer?)
  (let* ([sorted-nums (sort nums <)]
         [n (length sorted-nums)]
         [ans (+ (list-ref sorted-nums 0)
                 (list-ref sorted-nums 1)
                 (list-ref sorted-nums 2))])
    (for ([i (in-range (- n 2))])
      (let loop ([j (+ i 1)] [k (- n 1)])
        (when (< j k)
          (let* ([t (+ (list-ref sorted-nums i) (list-ref sorted-nums j) (list-ref sorted-nums k))])
            (when (< (abs (- t target)) (abs (- ans target)))
              (set! ans t))
            (cond
              [(= t target)
               (set! j k)] ; 提前退出内层循环
              [(> t target)
               (loop j (- k 1))]
              [else
               (loop (+ j 1) k)])))))
    ans))