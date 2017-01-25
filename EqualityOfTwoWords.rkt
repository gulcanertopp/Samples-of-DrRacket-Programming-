;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |8|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "universe.rkt" "teachpack" "2htdp")))))
(define (all-1-0? str)
  (if
   (eq? 0 (string-length str))
   #t
   (if
    (or (eq? #\1 (string-ref str 0)) (eq? #\0 (string-ref str 0)))
    (all-1-0? (substring str 1 (string-length str)))
    #f)))
"-----"

(define (t-f x)
  (if
   (eq? x #\1)
   #t
   #f))

(define (tf-s x)
  (if
   (eq? #t x)
   "1"
   "0"))

(define (AND str1 str2)
  (if
   (eq? (string-length str1) (string-length str2))
   (if
    (and
     (all-1-0? str1)
     (all-1-0? str2))
    (if
     (eq? 0 (string-length str1))
     str1
     (string-append (tf-s (and (t-f (string-ref str1 0)) (t-f (string-ref str2 0)))) (AND (substring str1 1 (string-length str1)) (substring str2 1 (string-length str1)))))
    (display "Not all 0s and 1s"))
   (display "Not the same length")))

(define str1 (read))
(define str2 (read))
(string-append str1 " and " str2 ":" (AND str1 str2))

