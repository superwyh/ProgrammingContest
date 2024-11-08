(require racket/list
         racket/contract)

(define/contract (letter-combinations digits)
  (-> string? (listof string?))
  (if (= (string-length digits) 0)
      '()
      (let* ([digit-to-letters
              (hash 2 '("a" "b" "c")
                    3 '("d" "e" "f")
                    4 '("g" "h" "i")
                    5 '("j" "k" "l")
                    6 '("m" "n" "o")
                    7 '("p" "q" "r" "s")
                    8 '("t" "u" "v")
                    9 '("w" "x" "y" "z"))]
             [result '("")])
        (for ([item (in-list (string->list digits))])
          (let ([temp-list '()])
            (for ([i (in-list (hash-ref digit-to-letters (- (char->integer item) 48) '()))])
              (for ([j (in-list result)])
                (set! temp-list (append temp-list (list (string-append j i))))))
            (set! result temp-list)))
        result)))