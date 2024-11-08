(define/contract (is-match s p)
  (-> string? string? boolean?)

  (define m (string-length s))
  (define n (string-length p))
  (define dp (make-vector (add1 m)))

  (for ((i (in-range (add1 m))))
    (vector-set! dp i (make-vector (add1 n) #f)))

  (vector-set! (vector-ref dp 0) 0 #t)

  (for ((i (in-range 1 (add1 n))))
    (if (char=? (string-ref p (sub1 i)) #\*)
        (vector-set! (vector-ref dp 0) i (vector-ref (vector-ref dp 0) (sub1 i)))
        (void)))  

  (for ((i (in-range 1 (add1 m))))
    (for ((j (in-range 1 (add1 n))))
      (cond
        [(char=? (string-ref p (sub1 j)) #\*)
         (vector-set! (vector-ref dp i) j (or (vector-ref (vector-ref dp i) (sub1 j))
                                             (vector-ref (vector-ref dp (sub1 i)) j)))]
        [(or (char=? (string-ref p (sub1 j)) #\?)
             (char=? (string-ref s (sub1 i)) (string-ref p (sub1 j))))
         (vector-set! (vector-ref dp i) j (vector-ref (vector-ref dp (sub1 i)) (sub1 j)))])))

  (vector-ref (vector-ref dp m) n))