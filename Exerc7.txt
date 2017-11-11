1.
(define (f x) (cond ((null? x) ())
                    ((odd? (car x))(cons (car x)(f (cdr x))))
                    (else (f (cdr x)))))
(f '(1 2 3 4))


2.
(define (f x) (if(null? x) () (cons (expt (car x) 2)(f (cdr x)))))
(f '(1 2 3))

3.
(define (f x) (if(null? x) () (cons (* (car x) 2)(f (cdr x)))))
(f '(1 2 3))

(member <obekt> <sposuk>)
(set! <identifikator> <izraz> )
4.
(define x '(1 2 3 4))
(define (f y) (if (member y x) 'yes (set! x (cons y x))))
(f 5)

5.
(define (f x y) (cond ((and (null? x)(null? y)) 'yes )
                            ((or (null? x)(null? y)) 'no)
                            ((equal? (car x)(car y))(f (cdr x)(cdr y)))
                            (else 'no )))

6.
(define (f x) (cond ((< (length x) 2) 0)
                     ((< (* (car x)(cadr x)) 0)(+1 (f (cdr x))))
                     (else (f (cdr x)))))
(f '(5 6 -7 3 -2))


8.
(define (f x) (cond ((null? x) ())
                    ((even? (car x))(cons (expt (car x) 3)(f (cdr x))))
                    (else (f (cdr x)))))
(f '(1 2 3 4))

9.
((lambda (x y) (+ (* x y)(* 2 x)(* 3 x)))(+ 2 5)(expt 2 3))

10.
(let ((x 5)(y 6)(sqrt (+ (expt x 2)(expt y 3)))))

11.
  a.
  (define (f a b c)(cond ((or (< (+ a b) c) (< (+ a c) b) (< (+ b c) a)) 0)(else 'staa)))
  (f 2 3 16)
  b.
  (define (f a b c) (cond ((and (= a b) (= b c) (= a c)) 3)(else 'niet)))
  (f 3 3 4)
  c.
  (define (f a b c) (cond ((or (= a b) (= b c) (= a c)) 2)(else 'niet)))
  (f 1 3 4)
  d.
  (define (f a b c) (cond ((or (= a b) (= b c) (= a c)) 2)(else '1)))
  (f 1 3 4)
