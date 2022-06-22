;; Utils
(define (gcd a b)
  (gcd-iter (abs a) (abs b)))

(define (gcd-iter a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))



;; Constructor and Selectors
;; Rational number as a Scheme Pair
(define (make-rat n d)
  (if (< d 0)
      ;; exercise 2.1 normalize sign
      (make-rat (* n -1) (* d -1))
      (let ((g (gcd n d)))
        (cons (/ n g) (/ d g)))))

(define (numer x) (car x))
(define (denom x) (cdr x))



;; Helper functions
;; Rational number as a constructor and denominator
(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))


(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))



;; Stuff (for testing)
(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))


(define one-half (make-rat 1 2))
(print-rat one-half)

(define one-third (make-rat 1 3))
(print-rat one-third)

(print-rat (mul-rat one-half one-third))

(print-rat (add-rat one-third one-third))

(print-rat (add-rat
            (mul-rat one-third one-third)
            (div-rat one-third one-half)))

(print-rat (add-rat (sub-rat one-half one-third) (sub-rat one-half one-third)))
