(define min-stack%
  (class object%
    (super-new)
    
    (init-field [stack '()] [min-stack '()])
    
    ; push : exact-integer? -> void?
    (define/public (push val)
      (set! stack (cons val stack))
      (if (null? min-stack)
          (set! min-stack (cons val min-stack))
          (set! min-stack (cons (min val (car min-stack)) min-stack))))

    ; pop : -> void?
    (define/public (pop)
      (when (not (null? stack))
        (set! stack (cdr stack))
        (set! min-stack (cdr min-stack))))

    ; top : -> exact-integer?
    (define/public (top)
      (if (null? stack)
          (error 'top "Stack is empty")
          (car stack)))

    ; get-min : -> exact-integer?
    (define/public (get-min)
      (if (null? min-stack)
          (error 'get-min "Min stack is empty")
          (car min-stack)))))
