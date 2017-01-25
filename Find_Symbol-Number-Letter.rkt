;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "universe.rkt" "teachpack" "2htdp")))))
(define (Num str num)
  (if
   (eq? 0 (string-length str))
   num
   (cond
     ((char-numeric? (string-ref str 0)) (Num (substring str 1 (string-length str)) (+ 1 num)))
     (else (Num (substring str 1 (string-length str)) num)))))

(define (Lettr str lett)
  (if
   (eq? 0 (string-length str))
   lett
   (cond
     ((char-alphabetic? (string-ref str 0)) (Lettr (substring str 1 (string-length str)) (+ 1 lett)))
     (else (Lettr (substring str 1 (string-length str)) lett)))))


(define (Symbl str sym)
  (if
   (eq? 0 (string-length str))
   sym
   (cond
     ((symbol? (string-ref str 0)) (Symbl (substring str 1 (string-length str)) (+ 1 sym)))
     (else (Symbl (substring str 1 (string-length str)) sym)))))

(define str (read))

(display "numbers: ") (Num str 0)
(display "symbols: ") (Symbl str 0)
(display "letters: ") (Lettr str 0)