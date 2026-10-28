#lang sicp

;;; defining procedures

(define (getlargest a b c) 
  (if 
    (> 
      (if 
        (> a b) 
        a 
        b) 
      c) 
    (if 
      (> a b) 
      a 
      b) 
    c))

(define (getmiddle a b c)
  (cond ((= (getlargest a b c) a) (if (> b c) b c))
        ((= (getlargest a b c) b) (if (> a c) a c))
        ((= (getlargest a b c) c) (if (> a b) a b))
        )
  )

(define (sum-of-square a b)
  (+ (* a a) (* b b)))

(define (square-of-larger-two num1 num2 num3)
  (sum-of-square 
    (getlargest num1 num2 num3) 
    (getmiddle num1 num2 num3)
    )
  )

(square-of-larger-two 1 2 3)
