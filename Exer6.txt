1.
(car(cdr (cdr '(1 2 3 4 5))))

2.
(define z '(1 (2 3) 4))
(car(car (cdr z)))
(caadr z)

3.
(reverse '( 2 4 6 8))

4.
(length '( 2 4 6 8))

5.
(define (f x) (if (null? x) 0 (+ 1(f (cdr x)))))
(f '(1 2 3))

6.
(define (f x)(cond ((null? x) 0)((zero? (car x))(+ 1 (f (cdr x))))(else (f (cdr x)))))
(f '(0 1 0 2 0 3))

7.
(define (f elemList)
  (if
    (null? elemList)
    1
    (* (car elemList) (f (cdr elemList)))
  )
)
(f '(2 2 3))

8.
(append '(1 2 3 4) '(15 16))
(cons '(1 2 3 4) '(15 16))
(define (f x y)(if (null? x ) y (cons (car x)(f (cdr x) y))))
(f '(1 2) '(2 3))
