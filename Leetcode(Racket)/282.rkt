(require racket/list
         racket/contract)

(define/contract (add-operators num target)
  (-> string? exact-integer? (listof string?))
  (let* ([n (string-length num)]
         [res '()]
         [path ""])

    (define (backtrace idx cursum preadd)
      (if (= idx n)
          (when (= cursum target)
            (set! res (cons path res)))
          (let loop ([i idx])
            (when (< i n)
              (let* ([x-str (substring num idx (+ i 1))]
                     [x (string->number x-str)]
                     [pn (string-length path)])
                (if (and (> i idx) (char=? (string-ref num idx) #\0))
                    (void) ; 跳过前导零
                    (begin
                      (if (= idx 0)
                          (begin
                            (set! path (string-append path x-str))
                            (backtrace (+ i 1) (+ cursum x) x)
                            (set! path (substring path 0 pn)))
                          (begin
                            ;; 添加 '+'
                            (set! path (string-append path "+" x-str))
                            (backtrace (+ i 1) (+ cursum x) x)
                            (set! path (substring path 0 pn))

                            ;; 添加 '-'
                            (set! path (string-append path "-" x-str))
                            (backtrace (+ i 1) (- cursum x) (- x))
                            (set! path (substring path 0 pn))

                            ;; 添加 '*'
                            (set! path (string-append path "*" x-str))
                            (backtrace (+ i 1) (+ (- cursum preadd) (* preadd x)) (* preadd x))
                            (set! path (substring path 0 pn))))))
                (loop (+ i 1)))))))
    (backtrace 0 0 0)
    res))
