(define/contract (monotone-increasing-digits n)
  (-> exact-integer? exact-integer?)

  (define (number->digits num)
    (map (lambda (ch) (- (char->integer ch) (char->integer #\0)))
         (string->list (number->string num))))

  (define (digits->number digits)
    (foldl (lambda (digit acc) (+ (* acc 10) digit)) 0 digits))

  (define (update-list lst idx val)
    (define (helper lst current-idx)
      (cond
        [(null? lst) '()]
        [(= current-idx idx) (cons val (cdr lst))]
        [else (cons (car lst) (helper (cdr lst) (+ current-idx 1)))]))
    (helper lst 0))

  (define (process-digits digits)
    (let loop ([i (sub1 (length digits))] [digits digits])
      (if (= i 0)
          digits
          (let ([current (list-ref digits i)]
                [previous (list-ref digits (sub1 i))])
            (if (< current previous)
                (loop (sub1 i) 
                      (update-list (append (take digits (sub1 i)) 
                                           (make-list (- (length digits) (sub1 i)) 9))
                                   (sub1 i) 
                                   (sub1 previous)))
                (loop (sub1 i) digits))))))
  (let ([digits (number->digits n)])
    (digits->number (process-digits digits))))
