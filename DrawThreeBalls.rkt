
#lang racket

(require htdp/draw)
(require lang/posn)
(define width 400)
(define height 400)
(start width height)

(define (first-child basx1 basy1 govdex1 govdey1 bacakx1 bacaky1 r a b)
   (for ([i 8])
       (draw-solid-disk (make-posn basx1 basy1 ) r 'red)
       

       (draw-solid-rect (make-posn govdex1 govdey1) a b 'red) 

     
       (draw-solid-disk (make-posn bacakx1 bacaky1) r 'black)
       (sleep-for-a-while 0.5)
       (clear-all)
       (set! basx1 (+ basx1 r))  (set! govdex1 (+ govdey1 a)) (set! bacakx1 (- bacaky1 r)) ))


(first-child 20 (/ height 2) (/ width 2) 20 (- height 20) (/ height 2) 20 50 20)



(define (meeting-circles x1 y1 x2 y2 x3 y3 r)
   (for ([i 8])
       (draw-solid-disk (make-posn x1 y1) r 'red)
       (draw-solid-rect (make-posn 120 50) 100 50 'red) 

       (draw-solid-disk (make-posn x2 y2) r 'blue)
       (draw-solid-disk (make-posn x3 y3) r 'black)
       (sleep-for-a-while 0.5)
       (clear-all)
       (set! x1 (+ x1 r))  (set! y2 (+ y2 r)) (set! x3 (- x3 r)) ))


(meeting-circles 20 (/ height 2) (/ width 2) 20 (- height 20) (/ height 2) 20)
