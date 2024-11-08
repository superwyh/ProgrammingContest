(define/contract (minimum-chairs s)
  (-> string? exact-integer?)
  (let loop ([chars (string->list s)] [ans 0] [cnt 0])
    (cond
      [(empty? chars) ans]
      [(char=? (first chars) #\E)
       (loop (rest chars) (max ans (add1 cnt)) (add1 cnt))]
      [else
       (loop (rest chars) ans (sub1 cnt))])))