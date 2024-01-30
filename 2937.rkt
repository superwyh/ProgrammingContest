(define/contract (find-minimum-operations s1 s2 s3)
  (-> string? string? string? exact-integer?)
  (let ([len1 (string-length s1)]
        [len2 (string-length s2)]
        [len3 (string-length s3)])
    (if (or (not (char=? (string-ref s1 0) (string-ref s2 0)))
            (not (char=? (string-ref s2 0) (string-ref s3 0))))
        -1
        (let* ([minLen (min len1 len2 len3)]
               [idx (for/or ([i (in-range 1 minLen)])
                      (if (or (not (char=? (string-ref s1 i) (string-ref s2 i)))
                              (not (char=? (string-ref s2 i) (string-ref s3 i))))
                          i
                          #f))])
          (if idx
              (- (+ len1 len2 len3) (* idx 3))
              (- (+ len1 len2 len3) (* minLen 3)))))))
