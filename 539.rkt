(define/contract (find-min-difference timePoints)
  (-> (listof string?) exact-integer?)
  (let* ([convert-to-minutes (lambda (time)
                               (let* ([parts (map string->number (string-split time ":"))]
                                      [hours (first parts)]
                                      [minutes (second parts)])
                                 (+ (* hours 60) minutes)))]
         [minutes-list (map convert-to-minutes timePoints)]
         [sorted-list (sort minutes-list <)]
         [n (length sorted-list)])
    (if (< n 2)
        0
        (let* ([day-minutes 1440]
               [min-diff (let loop ([i 1]
                                    [current-min day-minutes])
                           (if (= i n)
                               current-min
                               (loop (+ i 1) (min current-min (- (list-ref sorted-list i) 
                                                                 (list-ref sorted-list (- i 1)))))))]
               [wrap-around-diff (+ (- day-minutes (last sorted-list)) (first sorted-list))])
          (min min-diff wrap-around-diff)))))
