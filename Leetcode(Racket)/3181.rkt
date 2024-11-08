(require racket/set
         racket/list
         racket/math)

(define/contract (max-total-reward rewardValues)
  (-> (listof exact-integer?) exact-integer?)
  (let* ([m (apply max rewardValues)]
         [s (make-hash)])
    ;; 第一个循环
    (define (first-loop rewardValues)
      (let loop ([vals rewardValues])
        (cond
          [(null? vals) #f]
          [else
           (let ([v (car vals)])
             (if (hash-has-key? s v)
                 (loop (cdr vals))
                 (if (or (= v (- m 1))
                         (hash-has-key? s (- m 1 v)))
                     (+ (* m 2) -1)
                     (begin
                       (hash-set! s v #t)
                       (loop (cdr vals))))))])))
    ;; 初始化 f
    (define (second-loop s)
      (let ([f 1])
        (for ([v (sort (hash-keys s) <)])
          (set! f (bitwise-ior f (arithmetic-shift (bitwise-and f (sub1 (arithmetic-shift 1 v))) v))))
        ;; 返回结果
        (- (integer-length f) 1)))
    ;; 先执行第一个循环，如果提前返回则直接返回结果
    (let ([result (first-loop rewardValues)])
      (if result
          result
          (second-loop s)))))