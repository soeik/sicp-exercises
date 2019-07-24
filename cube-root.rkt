#lang sicp

(define (cbrt x)
  (cbrt-iter 1.0 x x))

(define (cbrt-iter guess previous-guess x)
  (if (good-enough? guess previous-guess x)
      guess
      (cbrt-iter (improve guess x) guess
                 x)))

(define (good-enough? guess previous-guess x)
  (< (/ (abs (- (cube guess) x)) guess) 0.0001))
  ;;(< (abs (- guess previous-guess)) 0.00000001))


(define (improve y x)
  (/ (+ (/ x y y) y y) 3))

(define (cube x)
  (* x x x))
