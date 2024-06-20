(define/contract (reverse-words s)
  (-> string? string?)
  (let ([result ""]
        [temp ""]
        [flag #t])
    (for ([j (in-string s)])
      (if (not (char-whitespace? j))
          (begin
            (set! flag #t)
            (set! temp (string-append temp (string j))))
          (when flag
            (set! result (string-append temp " " result))
            (set! temp "")
            (set! flag #f))))
    (when (not (string=? temp ""))
      (set! result (string-append temp " " result)))
    (string-trim result)))