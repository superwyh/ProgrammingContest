(define/contract (complex-number-multiply num1 num2)
  (-> string? string? string?)
  (let* ([parse-complex (lambda (num)
                          (map string->number (string-split (substring num 0 (- (string-length num) 1)) "+")))]
         [num1-parts (parse-complex num1)]
         [num2-parts (parse-complex num2)]
         [a (first num1-parts)]
         [b (second num1-parts)]
         [c (first num2-parts)]
         [d (second num2-parts)]
         [real (- (* a c) (* b d))]
         [imag (+ (* a d) (* b c))])
    (format "~a+~ai" real imag)))
