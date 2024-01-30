(define/contract (optimal-division nums)
  (-> (listof exact-integer?) string?)
  (cond [(= (length nums) 1) (number->string (first nums))]
        [(= (length nums) 2) (string-append (number->string (first nums)) "/" (number->string (second nums)))]
        [else (string-append (number->string (first nums)) "/(" (string-join (map number->string (rest nums)) "/") ")")]))
