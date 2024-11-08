;; 计算一个数中连续最多的1的数量
(define (get-width num)
  (define w 0)
  (do () ((= num 0) w)
    (set! num (bitwise-and num (arithmetic-shift num -1)))
    (set! w (add1 w))))

;; 计算矩阵中最大正方形的面积
(define/contract (maximal-square matrix)
  (-> (listof (listof char?)) exact-integer?)
  (define nums (map (lambda (row) (string->number (list->string row) 2)) matrix))  ; 将每一行转换为二进制数
  (define res 0)
  (define n (length nums))
  (for ((i (in-range n)))
    (define temp (list-ref nums i))
    (define width 0)
    (for ((j (in-range i n)))
      (set! temp (bitwise-and temp (list-ref nums j)))
      (set! width (min (+ 1 (- j i)) (get-width temp)))
      (set! res (max res (* width width)))))
  res)