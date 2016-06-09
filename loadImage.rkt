#lang racket

(require racket/gui/base)


(define bm (make-object bitmap% 16 16 #t #t))
(printf " ~a ~a ~a ~a~n" (send bm get-width) (send bm get-height) (send bm
get-depth) (send bm is-color?))

;(send bm load-file "plusZoom.png" 'png #f #t)
;(send bm load-file "test-icon.xbm" 'xbm #f #t)
;(printf " ~a ~a ~a ~a~n" (send bm get-width) (send bm get-height) (send bm
;get-depth) (send bm is-color?))




(define bm2 (read-bitmap "mag.png"))
(send (send bm make-dc) draw-bitmap bm2 0 0)
(send bm save-file "magPlus.png" 'png)

(define cursor (make-object cursor% bm bm 0 0))



