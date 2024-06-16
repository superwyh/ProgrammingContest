(require racket/list)

(define/contract (count-complete-day-pairs hours)
  (-> (listof exact-integer?) exact-integer?)
  (let loop ([i 0]
             [ans 0])
    (if (>= i (length hours))
        ans
        (let loop-j ([j (+ i 1)]
                     [inner-ans ans])
          (if (>= j (length hours))
              (loop (+ i 1) inner-ans)
              (if (= (modulo (+ (list-ref hours i) (list-ref hours j)) 24) 0)
                  (loop-j (+ j 1) (+ inner-ans 1))
                  (loop-j (+ j 1) inner-ans)))))))