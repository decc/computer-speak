#lang racket

;; list-add : list-of Number -> Number
;; Find the numeric sum of the values of a list
(define (list-add ll)
  (cond
    [ (empty? ll) 0 ]
    [ else (+ (first ll) 
              (list-add (rest ll))) ]))

