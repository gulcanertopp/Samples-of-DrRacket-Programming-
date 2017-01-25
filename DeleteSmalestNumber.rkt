#lang racket
 (define hourList (list (read) (read)(read) (read) (read)(read) (read) (read)))


(define min 0)
(for ([j (in-range 0 4)])
(for ([i (in-range 0 (length hourList))])
  

(if (string<=? (list-ref hourList i) (first hourList))(set! min (list-ref hourList i))
                                                 (display ""))


)
(newline)
(display min)
  
  (set! hourList (remove min hourList))) 
  


  
;saati doğru formatta girip girmediğini de konrol eden kodu yazdım fakat soruda istemediğiniz için eklemedim.
;şuanki kodumda kullanıcının dğru saat aralıklarını doğru formatta(hh:mm) girdiği varsayılıyor.