(require racket/list)

(define/contract (find-poisoned-duration timeSeries duration)
  (-> (listof exact-integer?) exact-integer? exact-integer?)
  (if (null? timeSeries)
      0
      (let loop ([cnt 0] [start (first timeSeries)] [timeSeries (rest timeSeries)])
        (if (null? timeSeries)
            (+ cnt duration)
            (let* ([i (first timeSeries)]
                   [new-cnt (if (<= (+ duration start) i)
                                (+ cnt duration)
                                (+ cnt (- i start)))])
              (loop new-cnt i (rest timeSeries)))))))