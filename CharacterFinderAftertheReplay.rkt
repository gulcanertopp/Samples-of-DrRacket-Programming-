#lang racket
(define (func s)
  (define ch  "")
  (define min (string-ref s 0))
  
  
  (for ([i (in-range 0 (string-length s))])
    
    (set! ch (string-ref s i))
    (if (char-alphabetic? min)
    (if (char-alphabetic? ch)
        
        (if (char<=? ch min)
            
            (set! min ch) (display "")) (display ""))
        
         (set! min (string-ref s i))))
    (display min)
    )
  (func "**//4545sssbc")