#lang racket


(define (func str)
  (define sum 0)
  (define deger 0)
  (define new 0)
  (define value 0)
  
  (for ([i (in-range 0 (string-length str))])
    (if(char-whitespace? (string-ref str i))
(and
       (and

      (and (set! deger (substring str value i)) (set! new (string-length deger)))
      (if (eq? 3 new) (set! sum (+ 1 sum)) (display "")))(set! value (+ i 1))) (display ""))

    
       )
  
   (if (eq? 3 (string-length(substring str value (string-length str))))

(set! sum (+ 1 sum)) (display "")
       )
    
   
(display sum))
  
  
  
  
  
(func "400 300 500 600 70 8")