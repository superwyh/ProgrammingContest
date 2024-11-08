(require racket/contract
         racket/string)

(define/contract (count-binary-substrings s)
  (-> string? exact-integer?)
  (let loop ([i 1] [seq (list 0 1)] [res '()])
    (if (>= i (string-length s))
        (apply + (cons (min (first seq) (second seq)) res))
        (let ([current (string-ref s i)]
              [previous (string-ref s (- i 1))])
          (if (char=? current previous)
              (loop (+ i 1) (list (first seq) (+ 1 (second seq))) res)
              (loop (+ i 1) (list (second seq) 1) (cons (min (first seq) (second seq)) res)))))))
