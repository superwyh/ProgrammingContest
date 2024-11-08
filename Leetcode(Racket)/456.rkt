(define/contract (find132pattern nums)
  (-> (listof exact-integer?) boolean?)
  (let loop ((stack '()) 
             (num -inf.0)
             (revnums (reverse nums)))
    (cond
      ((null? revnums) #f)
      ((< (car revnums) num) #t)
      (else
        (let loop-stack ((stack stack)
                         (num num))
          (if (and (not (null? stack)) (< (car stack) (car revnums)))
              (loop-stack (cdr stack) (car stack))
              (loop (cons (car revnums) stack) num (cdr revnums))))))))
