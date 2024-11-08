(define/contract (convert s numRows)
  (-> string? exact-integer? string?)
  (if (<= numRows 1)
      s
      (let* ([s-length (string-length s)]
             [pattern (build-list numRows values)]
             [pattern (append pattern (reverse (drop-right (drop pattern 1) 1)))]
             [rows (make-vector numRows "")]
             [pattern-length (length pattern)])
        (for ([i (in-range s-length)])
          (let ([row-index (list-ref pattern (modulo i pattern-length))])
            (vector-set! rows row-index
                         (string-append (vector-ref rows row-index) (string (string-ref s i))))))
        (apply string-append (vector->list rows)))))
