;Given 3 (x, y) points, find if these points form a triangle or not.

(define x1 (read))
(define y1 (read))

(define x2 (read))
(define y2 (read))

(define x3 (read))
(define y3 (read))

(define a (sqrt (+ (sqr (- x2 x3))(sqr (- y2 y3)))))
(define b (sqrt (+ (sqr (- x1 x3))(sqr (- y1 y3)))))
(define c (sqrt (+ (sqr (- x1 x2))(sqr (- y1 y2)))))

(if (and (> (+ a b) c) (> (+ a c) b) (> (+ b c) a))
    (display "triangle")
    (display "not triangle"))