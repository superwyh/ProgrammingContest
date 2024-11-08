(require racket/contract)

(define/contract (check-record n)
  (-> exact-integer? exact-integer?)
  (let* ([mod (+ (expt 10 9) 7)]
         [alast 1]
         [alastL 0]
         [alastLL 0]
         [last 1]
         [lastL 1]
         [lastLL 0])
    (for ([i (in-range 2 (+ n 2))])
      (let* ([new-alast (modulo (+ alastLL alastL alast last lastL lastLL) mod)]
             [new-alastL alast]
             [new-alastLL alastL]
             [new-last (modulo (+ last lastL lastLL) mod)]
             [new-lastL last]
             [new-lastLL lastL])
        (set! alast new-alast)
        (set! alastL new-alastL)
        (set! alastLL new-alastLL)
        (set! last new-last)
        (set! lastL new-lastL)
        (set! lastLL new-lastLL)))
    alast))