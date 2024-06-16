(define/contract (is-rational-equal S T)
  (-> string? string? boolean?)

  (define (parse-and-approximate s)
    (let* ((match-result (regexp-match #px"\\((.+)\\)" s)))
      (if match-result
          (let* ((match-positions (car (regexp-match-positions #px"\\((.+)\\)" s)))
                 (before (substring s 0 (car match-positions)))
                 (repeat-section (substring s (+ (car match-positions) 1) (- (cdr match-positions) 1)))
                 (expanded (string-append before (apply string-append (make-list 20 repeat-section)))))
            (substring expanded 0 (min 20 (string-length expanded))))
          s)))

  (define (to-numeric s)
    (let ((num (string->number s)))
      (if num num (error "Invalid number representation" s))))

  (define (f s)
    (to-numeric (parse-and-approximate s)))

  ;; 使用浮点数比较以处理"1.0"与"1"的特殊情况
  (define (parse-and-compare s t)
    (let ((n1 (f s))
          (n2 (f t)))
      (= (exact->inexact n1) (exact->inexact n2))))

  (parse-and-compare S T))
