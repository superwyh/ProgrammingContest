(define/contract (my-pow x n)
  (-> flonum? exact-integer? flonum?)
  (exact->inexact
    (if (< n 0)
        (let ([x (/ 1 x)])
          (my-pow-helper x (- n)))
        (my-pow-helper x n))))

(define (my-pow-helper x n)
  (let loop ([n n] [acc 1] [curr x])
    (cond [(= n 0) acc]
          [(odd? n) (loop (quotient n 2) (* acc curr) (* curr curr))]
          [else (loop (quotient n 2) acc (* curr curr))])))
