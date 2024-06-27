(require racket/contract)

(define/contract (add-strings num1 num2)
  (-> string? string? string?)
  (let loop ([i (- (string-length num1) 1)]
             [j (- (string-length num2) 1)]
             [carry 0]
             [res ""])
    (if (and (< i 0) (< j 0))
        (if (= carry 1) 
            (string-append "1" res)
            res)
        (let* ([n1 (if (>= i 0) (string->number (substring num1 i (+ i 1))) 0)]
               [n2 (if (>= j 0) (string->number (substring num2 j (+ j 1))) 0)]
               [tmp (+ n1 n2 carry)]
               [new-carry (quotient tmp 10)]
               [new-res (string-append (number->string (remainder tmp 10)) res)])
          (loop (- i 1) (- j 1) new-carry new-res)))))