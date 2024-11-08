(define/contract (construct-rectangle area)
  (-> exact-integer? (listof exact-integer?))
  (let loop ([L (inexact->exact (ceiling (sqrt area)))])
    (if (> L area)
        '() ; 如果超出范围，则返回空列表
        (if (zero? (remainder area L))
            (list (max L (quotient area L)) (min L (quotient area L)))
            (loop (+ L 1))))))
