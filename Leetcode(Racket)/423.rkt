(define/contract (original-digits s)
  (-> string? string?)
  (define cnt (make-hash))
  (for ([c (in-string s)])
    (hash-set! cnt c (add1 (hash-ref cnt c 0))))

  (define arr (make-vector 10 0))
  (vector-set! arr 0 (hash-ref cnt #\z 0))
  (vector-set! arr 2 (hash-ref cnt #\w 0))
  (vector-set! arr 6 (hash-ref cnt #\x 0))
  (vector-set! arr 8 (hash-ref cnt #\g 0))
  (vector-set! arr 3 (- (hash-ref cnt #\h 0) (vector-ref arr 8)))
  (vector-set! arr 4 (- (hash-ref cnt #\r 0) (vector-ref arr 0) (vector-ref arr 3)))
  (vector-set! arr 1 (- (hash-ref cnt #\o 0) (vector-ref arr 0) (vector-ref arr 2) (vector-ref arr 4)))
  (vector-set! arr 5 (- (hash-ref cnt #\f 0) (vector-ref arr 4)))
  (vector-set! arr 7 (- (hash-ref cnt #\s 0) (vector-ref arr 6)))
  (vector-set! arr 9 (- (hash-ref cnt #\i 0) (vector-ref arr 5) (vector-ref arr 6) (vector-ref arr 8)))

  (define ans 
    (apply string-append 
           (for/list ([i (in-range 10)] #:when (> (vector-ref arr i) 0))
             (make-string (vector-ref arr i) (integer->char (+ i 48))))))

  ans)
