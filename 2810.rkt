(define/contract (final-string s)
  (-> string? string?)

  (define (process-characters str)
    (define (helper chars acc)
      (if (null? chars)
          acc
          (let ((current-char (car chars)))
            (if (char=? current-char #\i)
                (helper (cdr chars) (list->string (reverse (string->list acc))))
                (helper (cdr chars) (string-append acc (string current-char)))))))
    (helper (string->list str) ""))

  (process-characters s))
