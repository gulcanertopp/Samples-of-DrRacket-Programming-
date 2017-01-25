;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Homework4) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "htdp")) #f)))
;Şafak                                   KILIÇ                              140304011
;FATMA GÜLCAN                            ERTOP                              140304062
;EZGİ                                    DEVRİM                             140304001


(start 1000 1000)

(define (draw-second-man x)
  (and
   (draw-solid-disk (make-posn (+ x 50) 400) 50 'brown) ;baş
   (draw-solid-rect (make-posn x 450) 100 150 'red) ;gövde
   (draw-solid-rect (make-posn (+ x 25) 600) 50 80 'brown) ;bacak
   (draw-solid-rect (make-posn (+ x 25) 470) 50 100 'brown) ;kol
   (draw-solid-rect (make-posn (+ x 5) 680) 70 20 'black) ;ayakkabı
   (draw-solid-disk (make-posn (+ x 25) 375) 15 'white);göz
   (draw-solid-disk (make-posn (+ x 25) 375) 5 'black)
   (draw-solid-rect (make-posn x 340) 100 20 'black)
   (draw-solid-rect (make-posn (+ x 30) 300) 40 40 'black)
   (draw-solid-disk (make-posn x 400) 10 'brown) ;burun
   (draw-solid-disk (make-posn (+ x 25) 425) 10 'black)
   (draw-solid-disk (make-posn (+ x 26) 423) 10 'brown)))

(draw-second-man 900)

(define (draw-secondman-eksik x)
  (and
   (draw-solid-disk (make-posn (+ x 50) 400) 50 'brown) ;baş
   (draw-solid-rect (make-posn x 450) 100 150 'red) ;gövde
   (draw-solid-rect (make-posn (+ x 25) 470) 50 100 'brown) ;kol
   (draw-solid-disk (make-posn (+ x 25) 375) 15 'white);göz
   (draw-solid-disk (make-posn (+ x 25) 375) 5 'black)
   (draw-solid-rect (make-posn x 340) 100 20 'black)
   (draw-solid-rect (make-posn (+ x 30) 300) 40 40 'black)
   (draw-solid-disk (make-posn x 400) 10 'brown) ;burun
   (draw-solid-disk (make-posn (+ x 25) 425) 10 'black)
   (draw-solid-disk (make-posn (+ x 26) 423) 10 'brown)))

(define (draw-secondman-back x)
  (and
   (draw-solid-disk (make-posn (+ x 50) 400) 50 'brown) ;baş
   (draw-solid-rect (make-posn x 340) 100 20 'black)
   (draw-solid-rect (make-posn (+ x 30) 300) 40 40 'black)
   (draw-solid-rect (make-posn x 450) 100 150 'red) ;gövde
   (draw-solid-rect (make-posn 527 470) 20 50 'brown) ;sağ kol
   (draw-solid-rect (make-posn (+ x 99) 470) 20 100 'brown) ;sol kol
   (draw-solid-rect (make-posn (+ x 15) 600) 20 80 'brown) ;sağ bacak
   (draw-solid-rect (make-posn (+ x 60) 600) 20 80 'brown) ;sol bacak
   (draw-solid-rect (make-posn (+ x 15) 680) 20 20 'black) ;ayakkabı
   (draw-solid-rect (make-posn (+ x 60) 680) 20 20 'black)))

(define (draw-third-man y)
  (and
   (draw-solid-disk (make-posn 495 (- y 410)) 40 'sienna) ;saç
   (draw-solid-disk (make-posn 495 (- y 410)) 30 'lightblue)
   (draw-solid-disk (make-posn 495 (- y 370)) 60 'brown)
   (draw-solid-disk (make-posn 495 (- y 350)) 50 'lemonchiffon) ;baş
   (draw-solid-rect (make-posn 510 (- y 150)) 20 75 'lemonchiffon) ;sağ bacak
   (draw-solid-rect (make-posn 460 (- y 150)) 20 75 'lemonchiffon) ;sol bacak
   (draw-solid-rect (make-posn 450 (- y 300)) 90 165 'pink) ;gövde
   (draw-solid-rect (make-posn 540 (- y 300)) 20 100 'lemonchiffon) ;sağ kol
   (draw-solid-rect (make-posn 430 (- y 300)) 20 100 'lemonchiffon) ;sol kol
   (draw-solid-rect (make-posn 460 (- y 70)) 20 20 'blue) ;ayakkabı
   (draw-solid-rect (make-posn 510 (- y 70)) 20 20 'blue)
   (draw-solid-disk (make-posn 515 (- y 360)) 15 'white);sol göz
   (draw-solid-disk (make-posn 515 (- y 360)) 10 'darkgreen)
   (draw-solid-disk (make-posn 515 (- y 360)) 5 'black) 
   (draw-solid-disk (make-posn 475 (- y 360)) 15 'white);sağ göz
   (draw-solid-disk (make-posn 475 (- y 360)) 10 'darkgreen)
   (draw-solid-disk (make-posn 475 (- y 360)) 5 'black)
   (draw-solid-disk (make-posn 495 (- y 330)) 15 'red);dudak
   (draw-solid-disk (make-posn 495 (- y 332)) 15 'lemonchiffon)
   ))

(draw-third-man 450)

(define (move-third-man y)
  (if
   (> y 700)
   #f
   (and
   (draw-solid-disk (make-posn 495 (- y 410)) 40 'sienna) ;saç
   (draw-solid-disk (make-posn 495 (- y 410)) 30 'lightblue)
   (draw-solid-disk (make-posn 495 (- y 370)) 60 'brown)
   (draw-solid-disk (make-posn 495 (- y 350)) 50 'lemonchiffon) ;baş
   (draw-solid-rect (make-posn 510 (- y 150)) 20 75 'lemonchiffon) ;sağ bacak
   (draw-solid-rect (make-posn 460 (- y 150)) 20 75 'lemonchiffon) ;sol bacak
   (draw-solid-rect (make-posn 450 (- y 300)) 90 165 'pink) ;gövde
   (draw-solid-rect (make-posn 540 (- y 300)) 20 100 'lemonchiffon) ;sağ kol
   (draw-solid-rect (make-posn 430 (- y 300)) 20 100 'lemonchiffon) ;sol kol
   (draw-solid-rect (make-posn 460 (- y 70)) 20 20 'blue) ;ayakkabı
   (draw-solid-rect (make-posn 510 (- y 70)) 20 20 'blue)
   (draw-solid-disk (make-posn 515 (- y 360)) 15 'white);sol göz
   (draw-solid-disk (make-posn 515 (- y 360)) 10 'darkgreen)
   (draw-solid-disk (make-posn 515 (- y 360)) 5 'black) 
   (draw-solid-disk (make-posn 475 (- y 360)) 15 'white);sağ göz
   (draw-solid-disk (make-posn 475 (- y 360)) 10 'darkgreen)
   (draw-solid-disk (make-posn 475 (- y 360)) 5 'black)
   (draw-solid-disk (make-posn 495 (- y 330)) 15 'red);dudak
   (draw-solid-disk (make-posn 495 (- y 332)) 15 'lemonchiffon)
   (sleep-for-a-while 0.1)
   (clear-solid-disk (make-posn 495 (- y 410)) 40 'sienna) ;saç
   (clear-solid-disk (make-posn 495 (- y 410)) 30 'lightblue)
   (clear-solid-disk (make-posn 495 (- y 370)) 60 'brown)
   (clear-solid-disk (make-posn 495 (- y 350)) 50 'lemonchiffon) ;baş
   (clear-solid-rect (make-posn 510 (- y 150)) 20 75 'lemonchiffon) ;sağ bacak
   (clear-solid-rect (make-posn 460 (- y 150)) 20 75 'lemonchiffon) ;sol bacak
   (clear-solid-rect (make-posn 450 (- y 300)) 90 165 'pink) ;gövde
   (clear-solid-rect (make-posn 540 (- y 300)) 20 100 'lemonchiffon) ;sağ kol
   (clear-solid-rect (make-posn 430 (- y 300)) 20 100 'lemonchiffon) ;sol kol
   (clear-solid-rect (make-posn 460 (- y 70)) 20 20 'blue) ;ayakkabı
   (clear-solid-rect (make-posn 510 (- y 70)) 20 20 'blue)
   (clear-solid-disk (make-posn 515 (- y 360)) 15 'white);sol göz
   (clear-solid-disk (make-posn 515 (- y 360)) 10 'darkgreen)
   (clear-solid-disk (make-posn 515 (- y 360)) 5 'black) 
   (clear-solid-disk (make-posn 475 (- y 360)) 15 'white);sağ göz
   (clear-solid-disk (make-posn 475 (- y 360)) 10 'darkgreen)
   (clear-solid-disk (make-posn 475 (- y 360)) 5 'black)
   (clear-solid-disk (make-posn 495 (- y 330)) 15 'red);dudak
   (clear-solid-disk (make-posn 495 (- y 332)) 15 'lemonchiffon)

   (move-third-man (+ y 10)))))

(move-third-man 450)
(draw-third-man 700)

(define (draw-first-man x)
 (and
  (draw-solid-disk (make-posn (+ x 50) 400) 50 'peachpuff) ;baş
  (draw-solid-rect (make-posn x 350) 50 80 'yellow) ;saç
  (draw-solid-rect (make-posn x 450) 100 150 'green) ;gövde
  (draw-solid-rect (make-posn (+ x 25) 600) 50 80 'peachpuff) ;bacak
  (draw-solid-rect (make-posn (+ x 25) 470) 50 100 'peachpuff) ;kol
  (draw-solid-rect (make-posn (+ x 25) 680) 70 20 'black) ;ayakkabı
  (draw-solid-disk (make-posn (+ x 75) 375) 15 'white);göz
  (draw-solid-disk (make-posn (+ x 75) 375) 5 'black)
  (draw-solid-rect (make-posn x 340) 100 20 'purple)
  (draw-solid-rect (make-posn (+ x 20) 310) 60 30 'purple)
  (draw-solid-disk (make-posn (+ x 100) 400) 10 'peachpuff) ;burun
  (draw-solid-disk (make-posn (+ x 75) 425) 10 'black)
  (draw-solid-disk (make-posn (+ x 76) 423) 10 'peachpuff)))

(draw-first-man 90)

(define (move-first-man x)
  (if
   (> x 320)
   #f
   (and
   (draw-solid-disk (make-posn (+ x 50) 400) 50 'peachpuff) ;baş
   (draw-solid-rect (make-posn x 350) 50 80 'yellow) ;saç
   (draw-solid-rect (make-posn x 450) 100 150 'green) ;gövde
   (draw-solid-rect (make-posn (+ x 25) 600) 50 80 'peachpuff) ;bacak
   (draw-solid-rect (make-posn (+ x 25) 470) 50 100 'peachpuff) ;kol
   (draw-solid-rect (make-posn (+ x 25) 680) 70 20 'black) ;ayakkabı
   (draw-solid-disk (make-posn (+ x 75) 375) 15 'white);göz
   (draw-solid-disk (make-posn (+ x 75) 375) 5 'black)
   (draw-solid-rect (make-posn x 340) 100 20 'purple)
   (draw-solid-rect (make-posn (+ x 20) 310) 60 30 'purple)
   (draw-solid-disk (make-posn (+ x 100) 400) 10 'peachpuff) ;burun
   (draw-solid-disk (make-posn (+ x 75) 425) 10 'black)
   (draw-solid-disk (make-posn (+ x 76) 423) 10 'peachpuff)
   (sleep-for-a-while 0.1)
   (clear-solid-disk (make-posn (+ x 50) 400) 50 'peachpuff) ;baş
   (clear-solid-rect (make-posn x 350) 50 80 'yellow) ;saç
   (clear-solid-rect (make-posn x 450) 100 150 'green) ;gövde
   (clear-solid-rect (make-posn (+ x 25) 600) 50 80 'peachpuff) ;bacak
   (clear-solid-rect (make-posn (+ x 25) 470) 50 100 'peachpuff) ;kol
   (clear-solid-rect (make-posn (+ x 25) 680) 70 20 'black) ;ayakkabı
   (clear-solid-disk (make-posn (+ x 75) 375) 15 'white);göz
   (clear-solid-disk (make-posn (+ x 75) 375) 5 'black)
   (clear-solid-rect (make-posn x 340) 100 20 'purple)
   (clear-solid-rect (make-posn (+ x 20) 310) 60 30 'purple)
   (clear-solid-disk (make-posn (+ x 100) 400) 10 'peachpuff) ;burun
   (clear-solid-disk (make-posn (+ x 75) 425) 10 'black)
   (clear-solid-disk (make-posn (+ x 76) 423) 10 'peachpuff)
    (move-first-man (+ x 10)))))
    

(move-first-man 90)
(draw-first-man 320)


(define (move-second-man x)
  (if
   (< x 545)
   #f
   (and
   (draw-solid-disk (make-posn (+ x 50) 400) 50 'brown) ;baş
   (draw-solid-rect (make-posn x 450) 100 150 'red) ;gövde
   (draw-solid-rect (make-posn (+ x 25) 600) 50 80 'brown) ;bacak
   (draw-solid-rect (make-posn (+ x 25) 470) 50 100 'brown) ;kol
   (draw-solid-rect (make-posn (+ x 5) 680) 70 20 'black) ;ayakkabı
   (draw-solid-disk (make-posn (+ x 25) 375) 15 'white);göz
   (draw-solid-disk (make-posn (+ x 25) 375) 5 'black)
   (draw-solid-rect (make-posn x 340) 100 20 'black)
   (draw-solid-rect (make-posn (+ x 30) 300) 40 40 'black)
   (draw-solid-disk (make-posn x 400) 10 'brown) ;burun
   (draw-solid-disk (make-posn (+ x 25) 425) 10 'black)
   (draw-solid-disk (make-posn (+ x 26) 423) 10 'brown)
   (sleep-for-a-while 0.1)
   (clear-solid-disk (make-posn (+ x 50) 400) 50 'brown) ;baş
   (clear-solid-rect (make-posn x 450) 100 150 'red) ;gövde
   (clear-solid-rect (make-posn (+ x 25) 600) 50 80 'brown) ;bacak
   (clear-solid-rect (make-posn (+ x 25) 470) 50 100 'brown) ;kol
   (clear-solid-rect (make-posn (+ x 5) 680) 70 20 'black) ;ayakkabı
   (clear-solid-disk (make-posn (+ x 25) 375) 15 'white);göz
   (clear-solid-disk (make-posn (+ x 25) 375) 5 'black)
   (clear-solid-rect (make-posn x 340) 100 20 'black)
   (clear-solid-rect (make-posn (+ x 30) 300) 40 40 'black)
   (clear-solid-disk (make-posn x 400) 10 'brown) ;burun
   (clear-solid-disk (make-posn (+ x 25) 425) 10 'black)
   (clear-solid-disk (make-posn (+ x 26) 423) 10 'brown)

    (move-second-man (- x 10)))))

(move-second-man 900)
(draw-second-man 545)

(draw-solid-rect (make-posn 320 450) 100 150 'green)
(draw-solid-rect (make-posn 345 470) 150 50 'peachpuff)
(draw-solid-rect (make-posn 475 470) 70 50 'brown)

(define (shake x)
  (if
   (= x 0)
   (and
    (draw-solid-disk (make-posn 200 100) 100 'lightblue)
    (draw-solid-disk (make-posn 280 170) 40 'lightblue)
    (draw-solid-string (make-posn 120 100) "Selam.")
    (clear-solid-rect (make-posn 345 470) 200 50)
    (draw-third-man 700)
    (draw-secondman-eksik 545)
    (draw-solid-rect (make-posn 320 450) 100 150 'green)
    (draw-solid-rect (make-posn 345 465) 150 50 'peachpuff)
    (draw-solid-rect (make-posn 475 465) 70 50 'brown)
    (sleep-for-a-while 0.1)
    (draw-solid-disk (make-posn 700 100) 100 'lightblue)
    (draw-solid-disk (make-posn 730 180) 40 'lightblue)
    (draw-solid-string (make-posn 650 100) "Selam.")
    (clear-solid-rect (make-posn 345 465) 200 50)
    (draw-third-man 700)
    (draw-secondman-eksik 545)
    (draw-solid-rect (make-posn 320 450) 100 150 'green)
    (draw-solid-rect (make-posn 345 470) 150 50 'peachpuff)
    (draw-solid-rect (make-posn 475 470) 70 50 'brown)
    (sleep-for-a-while 0.5)
    (shake (+ x 1)))
   (if
    (= x 1)
    (and
     (draw-solid-string (make-posn 120 115) "Naber?")
     (clear-solid-rect (make-posn 345 470) 200 50)
     (draw-third-man 700)
     (draw-secondman-eksik 545)
     (draw-solid-rect (make-posn 320 450) 100 150 'green)
     (draw-solid-rect (make-posn 345 465) 150 50 'peachpuff)
     (draw-solid-rect (make-posn 475 465) 70 50 'brown)
     (sleep-for-a-while 0.1)
     (draw-solid-string (make-posn 650 115) "İyidir. Sen?")
     (clear-solid-rect (make-posn 345 465) 200 50)
     (draw-third-man 700)
     (draw-secondman-eksik 545)
     (draw-solid-rect (make-posn 320 450) 100 150 'green)
     (draw-solid-rect (make-posn 345 470) 150 50 'peachpuff)
     (draw-solid-rect (make-posn 475 470) 70 50 'brown)
     
     (sleep-for-a-while 0.5)
     (shake (+ x 1)))
    (if
     (= x 2)
     (and
      (draw-solid-string (make-posn 120 130) "İyi. Ödev ne zamana?")
      (clear-solid-rect (make-posn 345 470) 200 50)
      (draw-third-man 700)
      (draw-secondman-eksik 545)
      (draw-solid-rect (make-posn 320 450) 100 150 'green)
      (draw-solid-rect (make-posn 345 465) 150 50 'peachpuff)
      (draw-solid-rect (make-posn 475 465) 70 50 'brown)
      (sleep-for-a-while 0.1)
      (draw-solid-string (make-posn 650 130) "Yarın galiba.")
      (clear-solid-rect (make-posn 345 465) 200 50)
      (draw-third-man 700)
      (draw-secondman-eksik 545)
      (draw-solid-rect (make-posn 320 450) 100 150 'green)
      (draw-solid-rect (make-posn 345 470) 150 50 'peachpuff)
      (draw-solid-rect (make-posn 475 470) 70 50 'brown)
      
      (sleep-for-a-while 0.5)
      (shake (+ x 1)))
     (if
      (= x 3)
      (and
       (draw-solid-string (make-posn 120 145) "Tamam teşekkür ederim :)")
       (clear-solid-rect (make-posn 345 470) 200 50)
       (draw-third-man 700)
       (draw-secondman-eksik 545)
       (draw-solid-rect (make-posn 320 450) 100 150 'green)
       (draw-solid-rect (make-posn 345 465) 150 50 'peachpuff)
       (draw-solid-rect (make-posn 475 465) 70 50 'brown)
       (sleep-for-a-while 0.1)
       (draw-solid-string (make-posn 650 145) "Rica ederim :)")
       (clear-solid-rect (make-posn 345 465) 200 50)
       (draw-third-man 700)
       (draw-secondman-eksik 545)
       (draw-solid-rect (make-posn 320 450) 100 150 'green)
       (draw-solid-rect (make-posn 345 470) 150 50 'peachpuff)
       (draw-solid-rect (make-posn 475 470) 70 50 'brown)
       (sleep-for-a-while 0.5)
       (shake (+ x 1)))
      (if
       (= x 4)
       (and
        (draw-solid-string (make-posn 120 160) "Görüşürüz.")
        (clear-solid-rect (make-posn 345 470) 200 50)
        (draw-third-man 700)
        (draw-secondman-eksik 545)
        (draw-solid-rect (make-posn 320 450) 100 150 'green)
        (draw-solid-rect (make-posn 345 465) 150 50 'peachpuff)
        (draw-solid-rect (make-posn 475 465) 70 50 'brown)
        (sleep-for-a-while 0.1)
        (draw-solid-string (make-posn 650 160) "Görüşürüz.")
        (clear-solid-rect (make-posn 345 465) 200 50)
        (draw-third-man 700)
        (draw-secondman-eksik 545)
        (draw-solid-rect (make-posn 320 450) 100 150 'green)
        (draw-solid-rect (make-posn 345 470) 150 50 'peachpuff)
        (draw-solid-rect (make-posn 475 470) 70 50 'brown)
        (sleep-for-a-while 0.5)
        (shake (+ x 1)))
       (if
        (= x 5)
        #f
        #f)))))))
(shake 0)


(clear-solid-rect (make-posn 0 0) 1000 1000) ;ekranı temizleme

(draw-first-man 320)
(draw-third-man 700)
(draw-secondman-back 545)




(define (shake2 a)
  (if
   (= a 6)
   (and
    (draw-solid-disk (make-posn 200 100) 100 'lightblue)
    (draw-solid-disk (make-posn 255 200) 40 'lightblue)
    (draw-solid-string (make-posn 140 100) "Selam")
    (clear-solid-rect (make-posn 450 470) 70 50)
    (draw-third-man 700)
    (draw-secondman-back 545)
    (draw-solid-rect (make-posn 527 465) 20 50 'brown)
    (sleep-for-a-while 0.1)
    (draw-solid-disk (make-posn 720 100) 100 'lightblue)
    (draw-solid-disk (make-posn 750 200) 40 'lightblue)
    (draw-solid-string (make-posn 700 100) "Selam")
    (clear-solid-rect (make-posn 450 465) 70 50)
    (draw-third-man 700)
    (draw-secondman-back 545)
    (draw-solid-rect (make-posn 527 470) 20 50 'brown)
    (sleep-for-a-while 0.5)
    (shake2 (+ a 1)))
  (if
   (= a 7)
   (and
    (draw-solid-string (make-posn 140 115) "Nasılsın?")
    (clear-solid-rect (make-posn 450 470) 70 50)
    (draw-third-man 700)
    (draw-secondman-back 545)
    (draw-solid-rect (make-posn 527 465) 20 50 'brown)
    (sleep-for-a-while 0.1)
    (draw-solid-string (make-posn 700 115) "İyiyim. Sen?")
    (clear-solid-rect (make-posn 450 465) 70 50)
    (draw-third-man 700)
    (draw-secondman-back 545)
    (draw-solid-rect (make-posn 527 470) 20 50 'brown)
    (sleep-for-a-while 0.5)
    (shake2 (+ a 1)))
  (if
   (= a 8)
    (and
    (draw-solid-string (make-posn 140 130) "Ben de iyiyim.")
    (clear-solid-rect (make-posn 450 470) 70 50)
    (draw-third-man 700)
    (draw-secondman-back 545)
    (draw-solid-rect (make-posn 527 465) 20 50 'brown)
    (sleep-for-a-while 0.1)
    (draw-solid-string (make-posn 700 130) "Sonra görüşürüz.")
    (clear-solid-rect (make-posn 450 465) 70 50)
    (draw-third-man 700)
    (draw-secondman-back 545)
    (draw-solid-rect (make-posn 527 470) 20 50 'brown)
    (sleep-for-a-while 0.5)
    (shake2 (+ a 1)))
  (if
   (= a 9)
    (and
    (draw-solid-string (make-posn 140 145) "Görüşürüz.")
    (clear-solid-rect (make-posn 450 470) 70 50)
    (draw-third-man 700)
    (draw-secondman-back 545)
    (draw-solid-rect (make-posn 527 465) 20 50 'brown)
    (sleep-for-a-while 0.5)
    (shake2 (+ a 1)))
  (if
   (= a 10)
    #f
    #f))
  ))))
(shake2 6)

(define (move-firstman-reverse x)
  (if
   (< x -200)
   #f
   (and
   (draw-solid-disk (make-posn (+ x 50) 400) 50 'peachpuff) ;baş
   (draw-solid-rect (make-posn (+ x 50) 350) 50 80 'yellow) ;saç
   (draw-solid-rect (make-posn x 450) 100 150 'green) ;gövde
   (draw-solid-rect (make-posn (+ x 25) 600) 50 80 'peachpuff) ;bacak
   (draw-solid-rect (make-posn (+ x 25) 470) 50 100 'peachpuff) ;kol
   (draw-solid-rect (make-posn x 680) 70 20 'black) ;ayakkabı
   (draw-solid-disk (make-posn (+ x 40) 375) 15 'white);göz
   (draw-solid-disk (make-posn (+ x 40) 375) 5 'black)
   (draw-solid-rect (make-posn x 340) 100 20 'purple)
   (draw-solid-rect (make-posn (+ x 20) 310) 60 30 'purple)
   (draw-solid-disk (make-posn (+ x 25) 400) 10 'peachpuff) ;burun
   (draw-solid-disk (make-posn (+ x 25) 425) 10 'black)
   (draw-solid-disk (make-posn (+ x 26) 423) 10 'peachpuff)
   (sleep-for-a-while 0.1)
   (clear-solid-disk (make-posn (+ x 50) 400) 50 'peachpuff) ;baş
   (clear-solid-rect (make-posn (+ x 50) 350) 50 80 'yellow) ;saç
   (clear-solid-rect (make-posn x 450) 100 150 'green) ;gövde
   (clear-solid-rect (make-posn (+ x 25) 600) 50 80 'peachpuff) ;bacak
   (clear-solid-rect (make-posn (+ x 25) 470) 50 100 'peachpuff) ;kol
   (clear-solid-rect (make-posn (+ x 20) 680) 70 20 'black) ;ayakkabı
   (clear-solid-disk (make-posn (+ x 55) 375) 15 'white);göz
   (clear-solid-disk (make-posn (+ x 55) 375) 5 'black)
   (clear-solid-rect (make-posn x 340) 100 20 'purple)
   (clear-solid-rect (make-posn (+ x 20) 310) 60 30 'purple)
   (clear-solid-disk (make-posn (+ x 25) 400) 10 'peachpuff) ;burun
   (clear-solid-disk (make-posn (+ x 25) 425) 10 'black)
   (clear-solid-disk (make-posn (+ x 26) 423) 10 'peachpuff)
    (move-firstman-reverse (- x 10)))))
(define (move-secondman-reverse x)
  (if
   (> x 1200)
   #f
   (and
   (draw-solid-disk (make-posn (+ x 50) 400) 50 'brown) ;baş
   (draw-solid-rect (make-posn x 450) 100 150 'red) ;gövde
   (draw-solid-rect (make-posn (+ x 25) 600) 50 80 'brown) ;bacak
   (draw-solid-rect (make-posn (+ x 25) 470) 50 100 'brown) ;kol
   (draw-solid-rect (make-posn (+ x 30) 680) 70 20 'black) ;ayakkabı
   (draw-solid-disk (make-posn (+ x 60) 375) 15 'white);göz
   (draw-solid-disk (make-posn (+ x 60) 375) 5 'black)
   (draw-solid-rect (make-posn x 340) 100 20 'black)
   (draw-solid-rect (make-posn (+ x 30) 300) 40 40 'black)
   (draw-solid-disk (make-posn (+ x 75) 400) 10 'brown) ;burun
   (draw-solid-disk (make-posn (+ x 66) 425) 10 'black)
   (draw-solid-disk (make-posn (+ x 65) 423) 10 'brown)
    (sleep-for-a-while 0.1)
   (clear-solid-disk (make-posn (+ x 50) 400) 50 'brown) ;baş
   (clear-solid-rect (make-posn x 450) 100 150 'red) ;gövde
   (clear-solid-rect (make-posn (+ x 25) 600) 50 80 'brown) ;bacak
   (clear-solid-rect (make-posn (+ x 25) 470) 50 100 'brown) ;kol
   (clear-solid-rect (make-posn (+ x 30) 680) 70 20 'black) ;ayakkabı
   (clear-solid-disk (make-posn (+ x 60) 375) 15 'white);göz
   (clear-solid-disk (make-posn (+ x 60) 375) 5 'black)
   (clear-solid-rect (make-posn x 340) 100 20 'black)
   (clear-solid-rect (make-posn (+ x 30) 300) 40 40 'black)
   (clear-solid-disk (make-posn (+ x 75) 400) 10 'brown) ;burun
   (clear-solid-disk (make-posn (+ x 66) 425) 10 'black)
   (clear-solid-disk (make-posn (+ x 65) 423) 10 'brown)
    (move-secondman-reverse (+ x 10))
    )))
(clear-solid-disk (make-posn 420 400) 20)
(clear-solid-rect (make-posn 345 680) 70 20)
(move-firstman-reverse 320)
(draw-third-man 700)
(clear-solid-rect (make-posn 0 0) 1000 1000)
(draw-third-man 700)
(move-secondman-reverse 545)
(draw-third-man 700)

(define (move-thirdman-eksik y)
  (if
   (< y 1000)
   #f
   (and
   (draw-solid-disk (make-posn 495 (- y 350)) 50 'lemonchiffon) ;baş
   (draw-solid-disk (make-posn 495 (- y 370)) 60 'brown)
   (draw-solid-disk (make-posn 495 (- y 410)) 40 'sienna) ;saç
   (draw-solid-rect (make-posn 510 (- y 150)) 20 75 'lemonchiffon) ;sağ bacak
   (draw-solid-rect (make-posn 460 (- y 150)) 20 75 'lemonchiffon) ;sol bacak
   (draw-solid-rect (make-posn 450 (- y 300)) 90 165 'pink) ;gövde
   (draw-solid-rect (make-posn 540 (- y 300)) 20 100 'lemonchiffon) ;sağ kol
   (draw-solid-rect (make-posn 430 (- y 300)) 20 100 'lemonchiffon) ;sol kol
   (draw-solid-rect (make-posn 460 (- y 70)) 20 20 'blue) ;ayakkabı
   (draw-solid-rect (make-posn 510 (- y 70)) 20 20 'blue)
   (sleep-for-a-while 0.1)
   (clear-solid-disk (make-posn 495 (- y 350)) 50 'lemonchiffon) ;baş
   (clear-solid-disk (make-posn 495 (- y 370)) 60 'brown)
   (clear-solid-disk (make-posn 495 (- y 410)) 40 'sienna) ;saç
   (clear-solid-rect (make-posn 510 (- y 150)) 20 75 'lemonchiffon) ;sağ bacak
   (clear-solid-rect (make-posn 460 (- y 150)) 20 75 'lemonchiffon) ;sol bacak
   (clear-solid-rect (make-posn 450 (- y 300)) 90 165 'pink) ;gövde
   (clear-solid-rect (make-posn 540 (- y 300)) 20 100 'lemonchiffon) ;sağ kol
   (clear-solid-rect (make-posn 430 (- y 300)) 20 100 'lemonchiffon) ;sol kol
   (clear-solid-rect (make-posn 460 (- y 70)) 20 20 'blue) ;ayakkabı
   (clear-solid-rect (make-posn 510 (- y 70)) 20 20 'blue)
   (move-third-man (- y 10)))))

(move-thirdman-eksik 700)