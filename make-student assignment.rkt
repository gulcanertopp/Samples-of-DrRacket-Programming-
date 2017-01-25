#lang racket
(define totall 0)
  (define bolum 0)
(define-struct student (id name surname avarage)
  
 
(define st1 (make-student "123" "gülcan" "ertop" "100"))
(define st2 (make-student "456" "alper" "salvız" "100"))
(define st3 (make-student "789" "emre" "ertop" "100"))
(define st4 (make-student "452" "safak" "kılıc" "95"))
(define st5 (make-student "756" "ezgi" "devrim" "90"))
(define st6 (make-student "785" "esra" "topalogulları" "85"))
(define st7 (make-student "423" "muge" "uyanık" "70"))
(define st8 (make-student "963" "güner" "guler" "10"))
(define st9 (make-student "741" "hasan" "izmir" "85"))
(define st10 (make-student "852" "seyda" "turkkahraman" "100"))
  
(set! totall(+(student-avarage st1) (student-avarage st2) (student-avarage st3)
              (student-avarage st4)(student-avarage st5)(student-avarage st6)
              (student-avarage st7)(student-avarage st8)(student-avarage st9)(student-avarage st10))) (set! bolum (/ 10 total)))
(student)

