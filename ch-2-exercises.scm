;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Exercise 2.2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; A point as a pair of numbers
(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))


;; A segment as a pair of points
(define (make-segment start end)
  (cons start end))

(define (start-segment s)
  (car s))

(define (end-segment s)
  (cdr s))


;; A segment as start and end points
(define (midpoint-segment s)
  (make-point
   (/ (+ (x-point (start-segment s))
         (x-point (end-segment s)))
      2)
   (/ (+ (y-point (start-segment s))
         (y-point (end-segment s)))
      2)))

;; Test
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ", ")
  (display (y-point p))
  (display ")"))

(print-point
 (make-segment
  (make-point 1 1)
  (make-point 2 2)))

(print-point
 (midpoint-segment
  (make-segment
   (make-point (/ 1 2) 4)
   (make-point (/ 1 2) 4))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Exercise 2.3
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Rectangle as a pair of segments - the top
;; horizontal and 
(define (make-rect tl-point br-point)
  (cons (make-segment ())))

(define (width rect)
  ())

(define (height rect))


(define (area rect))

(define (perimeter rect))
