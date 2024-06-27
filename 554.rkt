(require racket/list)
(require racket/set)
(require racket/contract)
(require racket/hash)

(define/contract (least-bricks wall)
  (-> (listof (listof exact-integer?)) exact-integer?)
  (let* ([gapdict (make-hasheq)]
         [wall-length (length wall)])
    (for-each
     (lambda (wallline)
       (let loop ([dis 0] [i 0])
         (when (< i (- (length wallline) 1))
           (let* ([brick-width (list-ref wallline i)]
                  [new-dis (+ dis brick-width)])
             (hash-update! gapdict new-dis add1 0)
             (loop new-dis (+ i 1))))))
     wall)
    (if (zero? (hash-count gapdict))
        wall-length
        (- wall-length (apply max (hash-values gapdict))))))