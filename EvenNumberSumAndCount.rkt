;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |11|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "universe.rkt" "teachpack" "2htdp")))))
(define (hm-even x c)
  (if
   (eq? x 0)
   c
   (if
    (even? (remainder x 10))
    (hm-even (floor (/ x 10)) (+ 1 c))
    (hm-even (floor (/ x 10)) c))))

(define (sum-even x sum)
  (if
   (eq? x 0)
   sum
   (if
    (even? (remainder x 10))
    (sum-even (floor (/ x 10)) (+ sum (remainder x 10)))
    (sum-even (floor (/ x 10)) sum))))

(define num (read))

(display "sum: ")
(display (sum-even num 0))
(newline)
(display "count: ")
(display (hm-even num 0))