(require racket/list
         racket/hash)

(define/contract (count-complete-day-pairs hours)
  (-> (listof exact-integer?) exact-integer?)
  (let loop ([hours hours]
             [d (make-hasheq)]
             [ans 0])
    (if (null? hours)
        ans
        (let* ([h (car hours)]
               [tmp (modulo h 24)]
               [res (modulo (- 24 tmp) 24)]
               [count-res (hash-ref d res 0)]
               [new-ans (+ ans count-res)])
          (hash-set! d tmp (+ 1 (hash-ref d tmp 0)))
          (loop (cdr hours) d new-ans)))))