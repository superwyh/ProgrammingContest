(define/contract (calculate s)
  (-> string? exact-integer?)
  (let loop ([i 0] [ops (list 1)] [sign 1] [ret 0])
    (if (< i (string-length s))
        (let ([c (string-ref s i)])
          (cond
            [(char-whitespace? c)
             (loop (+ i 1) ops sign ret)]
            [(char=? c #\+)
             (loop (+ i 1) ops (car ops) ret)]
            [(char=? c #\-)
             (loop (+ i 1) ops (- (car ops)) ret)]
            [(char=? c #\( )
             (loop (+ i 1) (cons sign ops) sign ret)]
            [(char=? c #\) )
             (loop (+ i 1) (cdr ops) sign ret)]
            [else
             (let loop-num ([i i] [num 0])
               (if (and (< i (string-length s)) (char-numeric? (string-ref s i)))
                   (loop-num (+ i 1) (+ (* num 10) (- (char->integer (string-ref s i)) (char->integer #\0))))
                   (loop i ops sign (+ ret (* num sign)))))]))
        ret)))
