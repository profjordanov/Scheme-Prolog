student(1234,Anton).
student(2345,Marina).
student(5555,Ivan).


subject(1,web).
subject(2,lfp).
subject(3,mreji).

mark(1234,1,6).
mark(1234,2,5).
mark(2345,1,5).
mark(2345,3,3).
mark(5555,2,6).
mark(5555,3,4).

/*
?- student(X,Y),mark(X,_,6),write(Y),nl,fail.
*/




