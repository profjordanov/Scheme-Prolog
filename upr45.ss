(define (S a b c)(let ((p (/ (+ a b c) 2)))
                      (sqrt (* p(+ p a)(+ p b)(+ p c)))))

(let* ((x 2)(y (+ x 5)))(+ x y))

5 upr
1va zad:
(define (fact n) (if (= n 0) 1 (* n (fact(- n 1)))))

(quobient <chislo> <chislo>) - celochisleno delenie

(quobient 563 10)

(define (f x)(if(> x 0)(+ 1 (f (quotient x 10))) 0))

(define (f n)(cond ((= (remainder n 10) 7) 'Yes)((> n 0)(f (quotient n 10)))(else 'No)))

(define (f n) (cond ((= n 1) 1)((= (remainder n 3) 1)(* n (f (- n 3))))(else (f(- n 1)))))

(define (sum elemList)
  (if
    (null? elemList)
    0
    (+ (car elemList) (sum (cdr elemList)))
  )
)

(sum '(1 3 5))

 