(define/contract (sum-distance nums s d)
  (-> (listof exact-integer?) string? exact-integer? exact-integer?)

  (define mod (+ (expt 10 9) 7))

  (define (update-nums nums s d)
    (map (lambda (num char) 
           (if (char=? char #\R) 
               (+ num d) 
               (- num d))) 
         nums 
         (string->list s)))

  (define (calculate-sum nums)
    (define (helper nums i s res)
      (if (null? (cdr nums))
          res
          (let* ((dis (- (cadr nums) (car nums)))
                 (new-s (modulo (+ s (* i dis)) mod))
                 (new-res (modulo (+ res new-s) mod)))
            (helper (cdr nums) (add1 i) new-s new-res))))
    (helper nums 1 0 0))

  (calculate-sum (sort (update-nums nums s d) <)))
