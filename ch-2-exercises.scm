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

;; First implementation of rectangle
;; Rectangle as a pair of segments - the top
;; horizontal and the left vertical segments
;; (define (make-rect top-left-point width height)
;;   (cons
;;    (make-segment top-left-point
;;                  (make-point (+ width (x-point top-left-point))
;;                              (y-point top-left-point)))
;;    (make-segment top-left-point
;;                  (make-point (x-point top-left-point)
;;                              (+ height (y-point top-left-point))))))

;; (define (top-line rect)
;;   (car rect))

;; (define (left-line rect)
;;   (cdr rect))

;; (define (width rect)
;;   (abs (- (x-point (start-segment (top-line rect)))
;;           (x-point (end-segment (top-line rect))))))

;; (define (height rect)
;;   (abs (- (y-point (start-segment (left-line rect)))
;;           (y-point (end-segment (left-line rect))))))

;; ...other selectors


;; Alernative implementation of rectangle
;; Rectangle as Pair(top-left-point, Pair(width, height))
(define (make-rect top-left-point width height)
  (cons top-left-point (cons width height)))

(define (width rect) (car (cdr rect)))

(define (height rect) (cdr (cdr rect)))

;; ... other selectors

;; -----------------------------------------------------------

;; Rectangle as its width and height
;;
;; Separate abstraction layer from the constructor and
;; selectors above. When the implementation for the above
;; changes, this layer should not have to change as long
;; as the interface (signatures for `width` and
;; `height`) remain the same
(define (area rect)
  (* (width rect) (height rect)))

(define (perimeter rect)
  (+ (* 2 (width rect))
     (* 2 (height rect))))


;; Stuff (for testing)
(define a-rect (make-rect (make-point 1 4) 3 3))

(perimeter a-rect)
