(define/contract (compute-area ax1 ay1 ax2 ay2 bx1 by1 bx2 by2)
  (-> exact-integer? exact-integer? exact-integer? exact-integer? exact-integer? exact-integer? exact-integer? exact-integer? exact-integer?)
  (let* ([s1 (* (- ay2 ay1) (- ax2 ax1))] ; 计算第一个矩形的面积
         [s2 (* (- by2 by1) (- bx2 bx1))] ; 计算第二个矩形的面积
         [overlap-length (max 0 (- (min ax2 bx2) (max ax1 bx1)))] ; 计算重叠部分的长度
         [overlap-width (max 0 (- (min ay2 by2) (max ay1 by1)))]  ; 计算重叠部分的宽度
         [overlap-area (* overlap-length overlap-width)])          ; 计算重叠部分的面积
    (- (+ s1 s2) overlap-area))) ; 总面积减去重叠部分的面积
