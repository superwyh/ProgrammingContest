(require racket/base)
(require racket/string)

(define/contract (my-atoi s)
  (-> string? exact-integer?)
  (let* ([trimmed (string-trim s)] ; 去掉前导和尾随空格
         [match (regexp-match #px"^[\\+\\-]?\\d+" trimmed)]) ; 查找有效的整数部分
    (if match
        (let ([num (string->number (first match))])
          (max (min num (- (expt 2 31) 1)) (- (expt 2 31))))
        0))) ; 如果没有匹配到有效的整数部分，则返回0