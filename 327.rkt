;; 应该是racket效率的问题，无论怎么改都会有几组数据超时

(require racket/list)

;; 手动实现二分查找
(define (bisect-left lst x)
  (let loop ([lo 0] [hi (length lst)])
    (if (>= lo hi)
        lo
        (let* ([mid (quotient (+ lo hi) 2)]
               [mid-val (list-ref lst mid)])
          (if (< mid-val x)
              (loop (+ mid 1) hi)
              (loop lo mid))))))

(define (bisect-right lst x)
  (let loop ([lo 0] [hi (length lst)])
    (if (>= lo hi)
        lo
        (let* ([mid (quotient (+ lo hi) 2)]
               [mid-val (list-ref lst mid)])
          (if (<= mid-val x)
              (loop (+ mid 1) hi)
              (loop lo mid))))))

;; 手动实现插入排序
(define (insort lst x)
  (let ([idx (bisect-right lst x)])
    (append (take lst idx) (list x) (drop lst idx))))

(define/contract (count-range-sum nums lower upper)
  (-> (listof exact-integer?) exact-integer? exact-integer? exact-integer?)
  (let loop ([nums (reverse nums)]
             [ans 0]
             [d 0]
             [ls '()])
    (if (null? nums)
        ans
        (let* ([c (car nums)]
               [d (+ d c)]
               [ls (insort ls (- c d))]
               [r (bisect-right ls (- upper d))]
               [l (bisect-left ls (- lower d))]
               [ans (+ ans (- r l))])
          (loop (cdr nums) ans d ls)))))