(define/contract (convert-to-title columnNumber)
  (-> exact-integer? string?)
  (if (= columnNumber 0)
      ""
      (string-append
       (convert-to-title (quotient (- columnNumber 1) 26))
       (string (integer->char (+ (remainder (- columnNumber 1) 26) 65))))))
