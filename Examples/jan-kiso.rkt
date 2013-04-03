#lang racket

;; jan-kiso : list-of num, list-of num -> list-of num
;; Parameters:
;; list-of half-hourly demands
;; list-of bucket thresholds; must be ordered
;; Return:
;; list-of counts in each bucket
;; Examples:
;; (jan-kiso '(10 20 30 40 50) '(30)) 
;; -> '(2 3)
;; (jan-kiso '(10 20 30 40 50) '(0 25 50))
;; -> '(0 2 2 1)
;; (jan-kiso '(10 20 30 40 50) '())
;; -> '(5)

; (define (jan-kiso xs thresholds)
  ; (ask someone to) turn thresholds in a list of buckets
  ; -> ((-Inf t0) (t0 t1) (t1 t2) ... (tn +Inf))
  ; lawrence : bucket xs -> {x | x <- xs, x in bucket}
  ;
  ; apply lawrence to each bucket
  ; make a list of the answers
  ; count the length of each element of this list
  ; "map" lawrence to the list of buckets
  ; )

(define (lawrence xs bucket)
  ; go through xs, and add x to list if x is in the bucket
  (define (in-this-bucket? x)
    (in-bucket? x bucket))
  (filter in-this-bucket? xs))


(define (in-bucket? x bucket)
  (and (>= x (first bucket))
       (< x (second bucket))))