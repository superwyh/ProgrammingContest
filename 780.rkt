(define/contract (reaching-points sx sy tx ty)
  (-> exact-integer? exact-integer? exact-integer? exact-integer? boolean?)

  (define (helper sx sy tx ty)
    (cond
      [(or (< tx sx) (< ty sy)) #f] 
      [(= sx tx) (= 0 (modulo (- ty sy) sx))] 
      [(= sy ty) (= 0 (modulo (- tx sx) sy))] 
      [else 
       (if (> tx ty)
           (helper sx sy (modulo tx ty) ty)
           (helper sx sy tx (modulo ty tx)))]))

  (helper sx sy tx ty))
