(define/contract (find-content-children g s)
  (-> (listof exact-integer?) (listof exact-integer?) exact-integer?)
  (let ([g (sort g <)]
        [s (sort s <)])
    (let loop ([gi g] [si s] [cnt 0])
      (cond
        [(or (empty? gi) (empty? si)) cnt]
        [(<= (first gi) (first si))
         (loop (rest gi) (rest si) (add1 cnt))]
        [else (loop gi (rest si) cnt)]))))
