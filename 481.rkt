(require racket/contract)

(define/contract (magical-string n)
  (-> exact-integer? exact-integer?)
  (let loop ([s "122"] [cur 2])
    (if (>= (string-length s) n)
        (count-occurrences (substring s 0 n) "1")
        (let* ([last-char (string-ref s (- (string-length s) 1))]
               [new-chars (if (char=? last-char #\1)
                             (make-string (string->number (substring s cur (+ cur 1))) #\2)
                             (make-string (string->number (substring s cur (+ cur 1))) #\1))])
          (loop (string-append s new-chars) (+ cur 1))))))

(define (count-occurrences s char)
  (let loop ([i 0] [count 0])
    (if (= i (string-length s))
        count
        (if (char=? (string-ref s i) (string-ref char 0))
            (loop (+ i 1) (+ count 1))
            (loop (+ i 1) count)))))
