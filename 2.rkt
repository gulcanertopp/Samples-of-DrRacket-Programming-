;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |2|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "universe.rkt" "teachpack" "2htdp")))))


 (define (CHEESE money chs)
  (if (= money 0) 0
      (if (< money 1.50) (display("unfortuanately we can not buy anything"))
         (if (< chs 1) 
             (CHEESE (- money 1.50)(+ 1 chs))
             chs))))
 (define (MILK money mlk)
  (if (= money 0) 0
      (if (< money 1.50) (display("unfortuanately we can not buy anything"))
         (if (< mlk 2) 
             (MILK (- money 1.50)(+ 1 mlk))
             mlk))))
  (define (BREAD money brd)
  (if (= money 0) 0
      (if (< money 1.50) (display("unfortuanately we can not buy anything"))
         (if (< brd 2) 
             (BREAD (- money 1.50)(+ 1 brd))
             brd))))     
  
(display "Amount of Money (in dollars)?")
(define money (read))

(display "Cheese: ") (CHEESE money 0)
(display "Milk: ") (MILK money 0)
(display "Bread: ") (BREAD money 0)
  