#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; this is valid because
; procedures are first-class citizens in scheme.
; meaning that you can pass around procedures as data.
; and even the primitive operators (+ or -) are just special cases of procedures
; defined by a "special rule" in the language semantic
; so this is completely valid.
