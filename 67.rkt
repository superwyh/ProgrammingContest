(define/contract (add-binary a b)
  (-> string? string? string?)
  (let* ([a-int (string->number a 2)]
         [b-int (string->number b 2)]
         [sum (+ a-int b-int)]
         [bin-str (number->string sum 2)])
    (substring bin-str 0)))
