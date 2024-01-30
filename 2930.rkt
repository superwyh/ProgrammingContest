; 这道题所有测试用例都过了，但是超时了 …… 
; 这道题也可以用容斥原理做，但是不知道为什么，在服务器提交时，用容斥原理取模的时候某些数据会得到和我本地截然不同的结果。

(define MOD (+ (expt 10 9) 7))

(define dfs-memo (make-hash))

(define (mod-add x y)
  (remainder (+ x y) MOD))

(define (mod-mul x y)
  (remainder (* x y) MOD))

(define (dfs i L t e)
  (let ([key (list i L t e)])
    (if (hash-has-key? dfs-memo key)
        (hash-ref dfs-memo key)
        (let ([res (if (= i 0)
                       (if (and (= L 0) (= t 0) (= e 0)) 1 0)
                       (mod-add
                        (mod-add
                         (mod-add (dfs (- i 1) 0 t e)
                                  (dfs (- i 1) L 0 e))
                         (dfs (- i 1) L t (max (- e 1) 0)))
                        (mod-mul (dfs (- i 1) L t e) 23)))])
          (hash-set! dfs-memo key res)
          res))))

(define/contract (string-count n)
  (-> exact-integer? exact-integer?)
  (dfs n 1 1 2))
