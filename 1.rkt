(define/contract (two-sum nums target)
  (-> (listof exact-integer?) exact-integer? (listof exact-integer?))
  (let ([n (length nums)]
        [mp (make-hash)])
    (let loop ([i 0] [result '()])
      (cond
        [(= i n) result]
        [else
         (let ([t (- target (list-ref nums i))])
           (if (hash-has-key? mp t)
               (list (hash-ref mp t) i)
               (begin
                 (hash-set! mp (list-ref nums i) i)
                 (loop (+ i 1) result))))]))))
