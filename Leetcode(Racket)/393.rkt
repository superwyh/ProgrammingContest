(require racket/contract)

(define/contract (valid-utf8 data)
  (-> (listof exact-integer?) boolean?)
  (define n (length data))
  (define (byte-shift-right byte bits)
    (arithmetic-shift byte (- bits)))
  
  (define (valid-sequence? index count)
    (and (<= (+ index count) n)
         (for/and ([j (in-range 1 (+ count 1))])
           (= (byte-shift-right (list-ref data (+ index j)) 6) 2))))
  
  (define (loop i)
    (cond
      [(>= i n) #t]
      [(= (byte-shift-right (list-ref data i) 7) 0)
       (loop (+ i 1))]
      [(and (= (byte-shift-right (list-ref data i) 5) 6)
            (valid-sequence? i 1))
       (loop (+ i 2))]
      [(and (= (byte-shift-right (list-ref data i) 4) 14)
            (valid-sequence? i 2))
       (loop (+ i 3))]
      [(and (= (byte-shift-right (list-ref data i) 3) 30)
            (valid-sequence? i 3))
       (loop (+ i 4))]
      [else #f]))
  
  (loop 0))