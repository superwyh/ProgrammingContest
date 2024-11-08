(require racket/contract)

(define/contract (check-record s)
  (-> string? boolean?)
  (cond
    [(>= (count (curry equal? #\A) (string->list s)) 2) #f]
    [(regexp-match? #rx"LLL" s) #f]
    [else #t]))