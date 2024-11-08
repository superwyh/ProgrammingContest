(define/contract (eval-rpn tokens)
  (-> (listof string?) exact-integer?)
  (let ([stack '()]
        [ope '("+" "-" "*" "/")])
    (define (handler operator a b)
      (cond
        [(string=? operator "+") (+ a b)]
        [(string=? operator "-") (- a b)]
        [(string=? operator "*") (* a b)]
        [else (quotient a b)]))
    (for ([num (in-list tokens)])
      (if (member num ope)
          (let ([b (car stack)]
                [a (cadr stack)])
            (set! stack (cdr (cdr stack)))
            (set! stack (cons (handler num a b) stack)))
          (set! stack (cons (string->number num) stack))))
    (car stack)))
