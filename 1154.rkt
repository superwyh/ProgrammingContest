(define/contract (day-of-year date)
  (-> string? exact-integer?)

  (define (leap-year? year)
    (or (= 0 (modulo year 400))
        (and (= 0 (modulo year 4))
             (not (= 0 (modulo year 100))))))

  (define days-before-month '(0 31 59 90 120 151 181 212 243 273 304 334))
  (define year (string->number (substring date 0 4)))
  (define month (string->number (substring date 5 7)))
  (define day (string->number (substring date 8)))
  (define day-count (+ day (list-ref days-before-month (- month 1))))
  
  (if (and (leap-year? year) (>= month 3))
      (+ day-count 1)
      day-count))
