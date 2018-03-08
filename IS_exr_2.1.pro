student(1234,anton).
student(2345,marina).
student(5555,ivan).



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
Кои са студентите с отлична оценка, без значение предмета? 
?- student(X,Y),mark(X,_,6),write(Y),nl,fail.
*/


/*
Кои са предметите, по които студентите имат отличен успех? Да се изведат и имената на студентите. 
?- student(FN,N),subject(SN,X),mark(FN,SN,6)
,write(N),write(" has perfect score on "),write(X),nl,fail.
*/





