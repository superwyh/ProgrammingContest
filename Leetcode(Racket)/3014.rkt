(define/contract (minimum-pushes word)
  (-> string? exact-integer?)
  
  (define len-word (string-length word))
  (define-values (k rem) (quotient/remainder len-word 8))
  (define pushes (+ (* k 4) rem))
  (* pushes (+ k 1)))