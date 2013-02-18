#lang racket

;; Compute income tax for 2012/13 tax year from gross income
;; income-tax: Number -> Number
;; 
;; For 2012/13, the tax rates and brackets are:
;; tax allowance: 8,105
;; 20% bracket  : next 34,370
;; 40% bracket  : up to 150,000 gross income
;; 50%          : thereafter

(define (income-tax gross-income)
  (cond 
   [ (< gross-income 8105) 0]        ; tax allowance
   [ (< gross-income (+ 8105 34370)) ; 20% bracket
    (* 0.2
       (- gross-income 8105)) ]
   [ (< gross-income 150000)         ; 40% bracket
     (+ (* 0.2 34370)
        (* 0.4
           (- gross-income (+ 8105 34370)))) ]
   [ else                            ; 50% bracket
    (+ (* 0.2 34370)
       (* 0.4
          (- 150000 (+ 8105 34370)))
       (* 0.5 (- gross-income 150000))) ])) 


