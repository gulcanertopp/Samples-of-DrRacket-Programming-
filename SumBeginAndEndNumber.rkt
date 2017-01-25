
#lang racket
(define (func str)
  (define sum 0)
  (define enk 999999)
  (define enb 0)
  (define deger 0)
  (define value 0)
  (define total 0)
  (define val 0)


  

  (for ([i (in-range 0 (string-length str))])
    (if(char-whitespace? (string-ref str i))
       (and
 (and
  (set! deger (string->number(substring str value i)))  
      (if (<= deger enk) (set! enk deger) (display ""))
 (set! value (+ 1 i)))

(display ""))

    (display "")))
  
  (set! deger (string->number(substring str value (string-length str))))
  (if (<= deger enk) (set! enk deger) (display ""))

  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
  
(for ([j (in-range 0 (string-length str))])
    (if(char-whitespace? (string-ref str j))
       (and
 (and
  (set! deger (string->number(substring str val j)))  
      (if (>= deger enb) (set! enb deger) (display ""))
 (set! val (+ 1 j)))

(display ""))

    (display "")))
  
  (set! deger (string->number(substring str val (string-length str))))
  (if (>= deger enb) (set! enb deger) (display ""))
(set! total (+ enk enb))
  (display total))
    
  
(func "60 90 1 80 500")