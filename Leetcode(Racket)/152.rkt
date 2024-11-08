(define/contract (max-product nums)
  (-> (listof integer?) integer?)
  (let* ([pre-max (first nums)]
         [pre-min (first nums)]
         [ans (first nums)])
    (for ([num (in-list (rest nums))])
      (let* ([cur-max (max (* pre-max num) (* pre-min num) num)]
             [cur-min (min (* pre-max num) (* pre-min num) num)])
        (set! ans (max ans cur-max))
        (set! pre-max cur-max)
        (set! pre-min cur-min)))
    ans))
