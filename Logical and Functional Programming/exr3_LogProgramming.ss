(define (f x) (if(and (>= x 5) (<= x 10)) 'Yes 'No))

(define (D a b c) (if (> (- (* b b)(* 4 a c)) 0) 'yes 'no))

(define (f x)(if (or (and (> x 1)(< x 6))(and (x 16)(< x 21))) 'yes 'no))

(cond (<predicat 1> <izraz 1>)
	  (<predicat 2> <izraz 2>)
	  (<predicat n> <izraz n>)
	  else <izraz>))
	  
(define (f x)(cond ((> x 2)(+ 4 (- (* x x) x)))
					((and (>= x 1)(<= x 2))(/ 1 x))
					(else 0)))

(define (f x y)(cond ((> x y)(* y 2))
					 ((< x y)(* x 2))
					 (else x)))
					 
(define (f x) (cond ((string=? x "hi") "Hi, How are you?")
					((string=? x "How are you?") "Fine, thank you!")
					(else "I am waiting!")))
______________________________________
					
(let ((<prom 1> <izraz 1>)
	 (<prom n> <izraz n>))
	 <tqlo>)

(let ((x 3)(y 4))(+ x y)) => 7

https://repl.it/

((lambda (x y)(+ (expt x 3))(expt y 4))) 2 3)

(let ((x 2)(y 3))(+ (expt x 3)(expt y 4)))

(let ((x 2)(y 3)(z 4))(* x y z))

(define (f x y)(let ((a (+ x 2))(b (- y 1)))
                        (+ (* a a y)(* b x)(* a b x y))))

	  
