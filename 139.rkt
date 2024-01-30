(define/contract (word-break s wordDict)
  (-> string? (listof string?) boolean?)
  
  (define n (string-length s))
  (define dp (make-vector (+ n 1) #false))
  (vector-set! dp 0 #true)

  (for ([i (in-range n)])
    (for ([j (in-range (+ i 1) (+ n 1))])
      (when (and (vector-ref dp i)
                 (member (substring s i j) wordDict))
        (vector-set! dp j #true))))
  
  (vector-ref dp n))
