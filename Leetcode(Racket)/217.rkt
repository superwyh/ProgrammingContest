
(define/contract (contains-duplicate nums)
  (-> (listof exact-integer?) boolean?)
  (not (= (length (remove-duplicates nums)) (length nums))))