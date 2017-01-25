;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
;;The program calculates the student's average passing score by taking 4 homework grades, 2 project grades, 1 visa grade and 1 final ;;grade from the user and reflects it on the screen
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "universe.rkt" "teachpack" "2htdp")))))
"-------------------------1------------------------------------"

;for finding sum of list of homeworks or projects.
(define (sum L)
  (if
   (eq? L empty)
   0
   (+ (car L) (sum (cdr L)))))

;for finding letter grade.
(define (letter-grade grade)
  (cond
  ((and (<= (round grade) 100) (>= (round grade) 90)) "AA")
  ((and (<= (round grade) 89) (>= (round grade) 85)) "BA")
  ((and (<= (round grade) 84) (>= (round grade) 80)) "BB")
  ((and (<= (round grade) 79) (>= (round grade) 75)) "CB")
  ((and (<= (round grade) 74) (>= (round grade) 65)) "CC")
  ((and (<= (round grade) 64) (>= (round grade) 58)) "DC")
  ((and (<= (round grade) 57) (>= (round grade) 50)) "DD")
  ((and (<= (round grade) 49) (>= (round grade) 40)) "FD")
  ((<= (round grade) 39) "FF")))



;student1
(display "Student-1?")
(newline)
(display "Homeworks? ")
(define St1-Hw (list (read) (read) (read) (read))) ;list of student1's homeworks.
(display "Projects? ")
(define St1-P (list (read) (read))) ;list of student1's projects.
(display "Midterm? ")
(define St1-M (read))
(display "Final? ")
(define St1-F (read))
(display "Final Course Grade (numeric): ")

(define st1-grade (+ (* (/ 1 5) (/ (sum St1-Hw) 4)) (* (/ 3 10) (/ (sum St1-P) 2)) (* (/ 1 5) St1-M) (* (/ 3 10) St1-F)))

st1-grade

(display "Final Course Grade (letter): ")

(letter-grade st1-grade)
(newline)


;student2
(display "Student-2? ")
(newline)
(display "Homeworks? ")
(define St2-Hw (list (read) (read) (read) (read))) ;list of student1's homeworks.
(display "Projects? ")
(define St2-P (list (read) (read))) ;list of student1's projects.
(display "Midterm? ")
(define St2-M (read))
(display "Final? ")
(define St2-F (read))
(display "Final Course Grade (numeric): ")

(define st2-grade (+ (* (/ 1 5) (/ (sum St2-Hw) 4)) (* (/ 3 10) (/ (sum St2-P) 2)) (* (/ 1 5) St2-M) (* (/ 3 10) St2-F)))

st2-grade

(display "Final Course Grade (letter): ")

(letter-grade st2-grade)
(newline)

;student3
(display "Student-3?")
(newline)
(display "Homeworks? ")
(define St3-Hw (list (read) (read) (read) (read))) ;list of student1's homeworks.
(display "Projects? ")
(define St3-P (list (read) (read))) ;list of student1's projects.
(display "Midterm? ")
(define St3-M (read))
(display "Final? ")
(define St3-F (read))
(display "Final Course Grade (numeric): ")

(define st3-grade (+ (* (/ 1 5) (/ (sum St3-Hw) 4)) (* (/ 3 10) (/ (sum St3-P) 2)) (* (/ 1 5) St3-M) (* (/ 3 10) St3-F)))

st3-grade

(display "Final Course Grade (letter): ")

(letter-grade st3-grade)
(newline)

(define grade-list (list st1-grade st2-grade st3-grade))

(display "Decreasing order of grades:")
(newline)
(cond
  ((eq? (car (sort grade-list <)) st1-grade) (string-append "Student-1 -> " (letter-grade st1-grade)))
  ((eq? (car (sort grade-list <)) st2-grade) (string-append "Student-2 -> " (letter-grade st2-grade)))
  ((eq? (car (sort grade-list <)) st3-grade) (string-append "Student-3 -> " (letter-grade st3-grade))))

(cond
  ((eq? (car (sort (remove (car (sort grade-list <)) grade-list) <)) st1-grade) (string-append "Student-1 -> " (letter-grade st1-grade)))
  ((eq? (car (sort (remove (car (sort grade-list <)) grade-list) <)) st2-grade) (string-append "Student-2 -> " (letter-grade st2-grade)))
  ((eq? (car (sort (remove (car (sort grade-list <)) grade-list) <)) st3-grade) (string-append "Student-3 -> " (letter-grade st3-grade))))

(cond
  ((eq? (car (sort (remove (car (remove (car (sort grade-list <)) grade-list)) (remove (car (sort grade-list <)) grade-list)) <)) st1-grade) (string-append "Student-1 -> " (letter-grade st1-grade)))
  ((eq? (car (sort (remove (car (remove (car (sort grade-list <)) grade-list)) (remove (car (sort grade-list <)) grade-list)) <)) st2-grade) (string-append "Student-2 -> " (letter-grade st2-grade)))
  ((eq? (car (sort (remove (car (remove (car (sort grade-list <)) grade-list)) (remove (car (sort grade-list <)) grade-list)) <)) st3-grade) (string-append "Student-3 -> " (letter-grade st3-grade))))








