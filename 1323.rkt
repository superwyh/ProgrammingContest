(define/contract (maximum69-number num)
  (-> exact-integer? exact-integer?)
  (let* ([num-str (number->string num)]
         [first-six-index (string-index num-str #\6)]
         [replaced (if first-six-index
                       (string-append (substring num-str 0 first-six-index)
                                      "9"
                                      (substring num-str (+ first-six-index 1)))
                       num-str)])
    (string->number replaced)))

(define (string-index s char)
  (let loop ([i 0])
    (cond [(>= i (string-length s)) #f]
          [(char=? (string-ref s i) char) i]
          [else (loop (+ i 1))])))
