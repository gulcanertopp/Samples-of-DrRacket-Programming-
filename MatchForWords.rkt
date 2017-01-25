;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "universe.rkt" "teachpack" "2htdp")))))
(define (mtch str1 str2 c)
  (if
   (eq? 0 (string-length str1))
   c
   (if
    (eq? (string-ref str1 0) (string-ref str2 0))
    (mtch (substring str1 1 (string-length str1)) (substring str2 1 (string-length str2)) (+ c 1))
    (mtch (substring str1 1 (string-length str1)) (substring str2 1 (string-length str2)) c))))

(define str1 (read))
(define str2 (read))

(if (eq? (mtch str1 str2 0) 0)
    (display "no")
    (display (mtch str1 str2 0)))

(display " matches")

