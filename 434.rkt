(require racket/string)

(define/contract (count-segments s)
  (-> string? exact-integer?)
  (length (string-split s)))
