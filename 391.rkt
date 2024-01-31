(define/contract (is-rectangle-cover rectangles)
  (-> (listof (listof exact-integer?)) boolean?)
  (let* ([first-rect (car rectangles)]
         [mx (car first-rect)]
         [my (cadr first-rect)]
         [ma (caddr first-rect)]
         [mb (cadddr first-rect)]
         [s 0]
         [s1 0]
         [s2 0]
         [s3 0])
    (for ([rect rectangles])
      (let* ([x (car rect)]
             [y (cadr rect)]
             [a (caddr rect)]
             [b (cadddr rect)]
             [x1 (- a x)]
             [x2 (- (* a a) (* x x))]
             [y1 (- b y)]
             [y2 (- (* b b) (* y y))])
        (set! mx (min mx x))
        (set! my (min my y))
        (set! ma (max ma a))
        (set! mb (max mb b))
        (set! s (+ s (* x1 y1)))
        (set! s1 (+ s1 (* x2 y1)))
        (set! s2 (+ s2 (* x1 y2)))
        (set! s3 (+ s3 (* x2 y2)))))
    (and (= s (* (- ma mx) (- mb my)))
         (= s1 (* (- (* ma ma) (* mx mx)) (- mb my)))
         (= s2 (* (- ma mx) (- (* mb mb) (* my my))))
         (= s3 (* (- (* ma ma) (* mx mx)) (- (* mb mb) (* my my)))))))
