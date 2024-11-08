(define/contract (is-power-of-four n)
  (-> exact-integer? boolean?)
  (and (> n 0)
       (= (count-ones (number->string n 2)) 1)
       (odd? (count-zeros (number->string n 2)))))

(define (count-ones str)
  (count (lambda (ch) (char=? ch #\1)) (string->list str)))

(define (count-zeros str)
  (let ([ones-plus-zeros (string-length str)])
    (- ones-plus-zeros (count-ones str) 1)))