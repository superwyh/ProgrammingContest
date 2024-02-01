(define/contract (is-rectangle-overlap rec1 rec2)
  (-> (listof exact-integer?) (listof exact-integer?) boolean?)
  (and (> (fourth rec1) (second rec2))  ; rec1的上边界 > rec2的下边界
       (> (fourth rec2) (second rec1))  ; rec2的上边界 > rec1的下边界
       (> (third rec1) (first rec2))    ; rec1的右边界 > rec2的左边界
       (> (third rec2) (first rec1))))  ; rec2的右边界 > rec1的左边界
