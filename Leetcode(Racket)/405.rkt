(define/contract (to-hex num)
  (-> exact-integer? string?)
  (let* ([hex-chars "0123456789abcdef"]
         [convert-digit (lambda (n) (string-ref hex-chars n))]
         [convert-to-hex (lambda (num)
                           (let ([adjusted-num (if (< num 0) 
                                                   (+ num 4294967296)
                                                   num)])
                             (let loop ([num adjusted-num] [acc ""])
                               (if (< num 16)
                                   (string-append (string (convert-digit num)) acc)
                                   (loop (quotient num 16) 
                                         (string-append (string (convert-digit (remainder num 16))) acc))))))])
    (convert-to-hex num)))
