(define num-array%
  (class object%
    (super-new)

    (init-field nums)
    
    (define pre-sum (list 0))
    
    (define (initialize-pre-sum)
      (for ([num (in-list nums)])
        (set! pre-sum (append pre-sum (list (+ (last pre-sum) num))))))

    (initialize-pre-sum)
    
    (define pre-sum-vec (list->vector pre-sum))
    
    (define/public (sum-range left right)
      (- (vector-ref pre-sum-vec (+ right 1))
         (vector-ref pre-sum-vec left)))))