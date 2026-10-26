#lang sicp

;; exercise 1.1

10 ; evalutes to 10

(+ 5 3 4) ; evalutes to 12

(- 9 1) ; evalutes to 8

(/ 6 2) ; evalutes to 3

(+ (* 2 4) (- 4 6))
; (+ 8 (- 2))
; 6

(define a 3)
a
; a = 3

(define b (+ a 1))
b
; b = 4

(+ a b (* a b))
; (+ 3 4 (* 3 4))
; (+ 3 4 12)
; 19

(= a b)
; predicates
; #f

(if (and (> b a) (< b (* a b)))
    b
    a)
; b = 4

; (> b a) -> true
; (< b (* a b)) -> 4 < 12 -> true
; (and (true) (true))
; return b

; a = 3
; b = 4
; so, 6 + 7 + 3 = 16
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))
; (+ 2 4) = 6

(* (cond ((> a b) a)
          ((< a b) b) 
          (else -1))
   (+ a 1)) 
; b = 4
; (* b (+ a 1))
; (* 4 4)
; 16


