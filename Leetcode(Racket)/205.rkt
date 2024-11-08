(require racket/set)

(define/contract (is-isomorphic s t)
  (-> string? string? boolean?)
  (let ([n (string-length s)])
    (if (not (= n (string-length t)))
        #f
        (let loop ([i 0]
                   [map-st (make-hasheq)]
                   [map-ts (make-hasheq)])
          (if (= i n)
              #t
              (let ([cs (string-ref s i)]
                    [ct (string-ref t i)])
                (cond
                  [(and (hash-has-key? map-st cs)
                        (not (equal? (hash-ref map-st cs) ct)))
                   #f]
                  [(and (hash-has-key? map-ts ct)
                        (not (equal? (hash-ref map-ts ct) cs)))
                   #f]
                  [else
                   (hash-set! map-st cs ct)
                   (hash-set! map-ts ct cs)
                   (loop (+ i 1) map-st map-ts)])))))))