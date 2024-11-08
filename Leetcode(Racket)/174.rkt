(define/contract (calculate-minimum-hp dungeon)
  (-> (listof (listof exact-integer?)) exact-integer?)
  (let* ([m (length dungeon)]
         [n (length (first dungeon))]
         [dp (make-vector (+ n 1) 1000000000)]) ; 初始化dp数组，最后加1是为了满足公主房间时生命至少为1的要求
    (vector-set! dp n 1)
    (for ([i (in-range (- m 1) -1 -1)])
      (for ([j (in-range (- n 1) -1 -1)])
        (let ([min-hp (min (vector-ref dp (+ j 1)) (vector-ref dp j))])
          (vector-set! dp j (max (- min-hp (list-ref (list-ref dungeon i) j)) 1))))
      (vector-set! dp n 1000000000)) ; 将最后一个元素重置为无效值
    (vector-ref dp 0)))