(define/contract (get-hint secret guess)
  (-> string? string? string?)
  (define cntS (make-hash))
  (define cntG (make-hash))
  (define bulls 0)
  (define cows 0)
  (define n (string-length secret))

  ;; Helper function to increment count in a hash table
  (define (hash-increment ht key)
    (hash-set! ht key (+ 1 (hash-ref ht key 0))))

  ;; Count characters in secret
  (for ([i (in-range n)])
    (hash-increment cntS (string-ref secret i)))

  ;; Count characters in guess
  (for ([i (in-range n)])
    (hash-increment cntG (string-ref guess i)))

  ;; Calculate bulls
  (for ([i (in-range n)])
    (when (char=? (string-ref secret i) (string-ref guess i))
      (hash-set! cntS (string-ref secret i) (- (hash-ref cntS (string-ref secret i)) 1))
      (hash-set! cntG (string-ref guess i) (- (hash-ref cntG (string-ref guess i)) 1))
      (set! bulls (+ bulls 1))))

  ;; Calculate cows
  (for ([(k v) (in-hash cntS)])
    (when (and (hash-has-key? cntG k) (> v 0))
      (define cutoff (min v (hash-ref cntG k 0)))
      (set! cows (+ cows cutoff))))

  (format "~aA~aB" bulls cows))
