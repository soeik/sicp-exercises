#lang sicp

(define (sqrt x)
  (sqrt-iter 1.0 x x))

(define (sqrt-iter guess previous-guess x)
  (if (good-enough? guess previous-guess x)
      guess
      (sqrt-iter (improve guess x) guess
                 x)))

(define (good-enough? guess previous-guess x)
  (< (abs (- guess previous-guess)) 0.000000001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))



