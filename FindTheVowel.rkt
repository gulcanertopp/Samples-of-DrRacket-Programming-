;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname gülcan4) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "universe.rkt" "teachpack" "2htdp")))))
(define (find-vovel str)
  (cond
    ((eq? (string-ref str 0) #\a) (string-ref str 0))
    ((eq? (string-ref str 0) #\e) (string-ref str 0))
    ((eq? (string-ref str 0) #\i) (string-ref str 0))
    ((eq? (string-ref str 0) #\u) (string-ref str 0))
    ((eq? (string-ref str 0) #\o) (string-ref str 0))
    (else (find-vovel (substring str 1 (string-length str))))))

(define (first-vovel str x)
  (cond
    ((eq? (string-ref str 0) #\a) x)
    ((eq? (string-ref str 0) #\e) x)
    ((eq? (string-ref str 0) #\i) x)
    ((eq? (string-ref str 0) #\u) x)
    ((eq? (string-ref str 0) #\o) x)
    (else (first-vovel (substring str 1 (string-length str)) (+ x 1)))))

(define (distance str)
  (- (string-length str) (first-vovel str 0) 1))

(define str (read))

(display "distance between ") (display (find-vovel str)) (display " and ") (display (string-ref str (- (string-length str) 1))) (display ": ") (distance str)