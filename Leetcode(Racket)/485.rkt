(require racket/list)

(define/contract (find-max-consecutive-ones nums)
  (-> (listof exact-integer?) exact-integer?)
  (let loop ([nums (append nums '(0))]
             [ans 0]
             [c 0])
    (match nums
      [(cons x xs)
       (if (zero? x)
           (loop xs (max ans c) 0)
           (loop xs ans (+ c 1)))]
      [_ ans])))