;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lab6_solutions) (read-case-sensitive #t) (teachpacks ((lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.ss" "teachpack" "htdp")))))
;; Lab Settings 6

(define (factorial n)
(if (or (= n 0) (= n 1))
    1
    (* n (factorial (- n 1)))))
;;Exercise 1

(define (comb n m)
  (if (or (< n 0) (< m 0))
      "Enter only positive integers"
  (/ (factorial n) 
     (* (factorial m) 
        (factorial (- n m))))))

(comb 5 3)
(comb 3 1)
(comb 0 0)
(comb 12 -3)

;-------------------------------------------------

;;Exercise 2
(define (comb2 n m)
  (cond [(or (< n 0) (< m 0)) "Enter only positive integers"]
        [(or (= n m) (= m 0)) 1]
        [(or (= m 1) (= m (- n 1))) n]
        [else (+ (comb2 (- n 1) m) (comb2 (- n 1) (- m 1)))]))

(comb2 5 3)
(comb2 3 1)
(comb2 3 0)
(comb2 12 -3)
;-------------------------------------------------

;;Exercise 3
(define (odd-product n)
  (cond [(<= n 0) 0]
        [(= n 1) 1]
        [(odd? n) (* n (odd-product (- n 2)))]
        [(even? n) (* (- n 1) (odd-product (- n 3)))]))

;-------------------------------------------------

;;Exercise 4

(define (gcd2 a b)
  (if (= b 0)
      a
      (gcd2 b (remainder a b))))

(gcd 6 3)
(gcd 81 45) 

;Exercise 5;
(define (sum a b) 
  (if (> a b)  0   (+ a (sum (+ a 1) b))))

;;TESTS
(sum 3 5)
;---------------------------------------------------------
  ;Exercise 6
  (define (LastVowel? name)
  (or (equal? (string-ref name ( - (string-length name) 1) #\a)
      (equal? (string-ref name ( - (string-length name) 1)) #\e)
      (equal? (string-ref name ( - (string-length name) 1)) #\i)
      (equal? (string-ref name ( - (string-length name) 1)) #\o)
      (equal? (string-ref name ( - (string-length name) 1)) #\u)))

;;TESTS
(LastVowel? "adam")   ;should be "false"
(LastVowel? "Esra")  ;true
;-------------------------------------------------

;;Exercise 7
(define (palindromic2? str) 
    (cond  [(<= (string-length str) 1) #t] 
           [else (if (equal? (string-ref str 0) (string-ref str (- (string-length str) 1)))
              (palindromic2? (substring str 1 (- (string-length str) 1))) 
              #f)]))

(palindromic2? "esra")
(palindromic2? "madam")
;-------------------------------------------------
