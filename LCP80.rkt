(define/contract (evolutionary-record parents)
  (-> (listof exact-integer?) string?)
  (let* ([n (length parents)]
         [g (make-vector n '())])
    (for ([i (in-range 1 n)])
      (vector-set! g (list-ref parents i)
                   (cons i (vector-ref g (list-ref parents i)))))
    
    (define (dfs x)
      (let* ([children (vector-ref g x)]
             [a (sort (map dfs children) string<?)])
        (string-append "0" (apply string-append a) "1")))
    
    (let* ([result (dfs 0)]
           [trimmed (regexp-replace* #rx"1*$" result "")])
      (substring trimmed 1))))