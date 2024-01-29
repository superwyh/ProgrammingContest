(define/contract (max-area height)
  (-> (listof exact-integer?) exact-integer?)
  
  (define (calculate-area left right maxh ans)
    (if (or (>= left right) (>= ans (* maxh (- right left))))
        ans
        (let* ((current-area (* (- right left) (min (list-ref height left) (list-ref height right))))
               (new-ans (max ans current-area)))
          (if (< (list-ref height left) (list-ref height right))
              (calculate-area (+ left 1) right maxh new-ans)
              (calculate-area left (- right 1) maxh new-ans)))))

  (calculate-area 0 (- (length height) 1) (apply max height) 0))
