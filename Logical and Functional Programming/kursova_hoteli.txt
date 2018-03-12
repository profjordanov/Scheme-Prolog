
ime_hotel(001,therma_palace).
ime_hotel(002,star).
ime_hotel(003,grand_bansko).
ime_hotel(004,grand_pomorie).
ime_hotel(005,rich).

ime_klient(01,meral).
ime_klient(02,iskra).
ime_klient(03,nadq).
ime_klient(04,radka).
ime_klient(05,rosen).
ime_klient(06,ivan).

hotel_grad(001,kavarna).
hotel_grad(002,smolqn).
hotel_grad(003,bansko).
hotel_grad(004,pomorie).
hotel_grad(005,velingrad).


oferta_hotel(001,[sauna,masaj,basein,djakuzi,programa_zdrave_za_gurba,zakuska,vecherq]).
oferta_hotel(002,[zakuska,vecherq,sauna,fitnes,tenis,golf,basein]).
oferta_hotel(003,[programa_otslabvane,basein,zakuska]).
oferta_hotel(004,[all_inclusive,programa_mlada_maika,frizior,manikur,pedikur]).
oferta_hotel(005,[apartament_djidji,romantichna_vecherq,masaj_za_nego_neq]).

cena_oferta(001,450).
cena_oferta(002,460).
cena_oferta(003,490).
cena_oferta(004,600).
cena_oferta(005,700).

suprug(rosen,iskra).
supruga(iskra,rosen).
mlada_maika(nadq).
interes(01,[programa_zdrave_za_gurba,masaj,sauna,filmi]).
interes(02,[romantichna_vecherq,masaj_za_nego_neq]).
interes(05,[romantichna_vecherq,masaj_za_nego_neq]).
interes(03,[programa_mlada_maika,manikur,frizior]).
interes(04,programa_za_otslabvane).
interes(06,[fitnes,tenis,golf,futbol]).
interes(01,001).
interes(02,005).
interes(03,005).
interes(04,003).
interes(06,002).



/*
Imeto na klienta,koito se interesuva ot oferta 001?

klient(Ime):- interes(Id_k,001),
ime_klient(D_k,Ime).
?-klient(Ime),write(Ime),nl.*/

/*
hotel_ot_kavarna(Ime):-hotel_grad(ID_hotel,kavarna),
					ime_hotel(ID_hotel,Ime).

?-hotel_ot_kavarna(Ime),write(Ime),nl,fail.
*/

/*
Id-to na oferta s cena 700
?- cena_oferta(X,700),write(X),nl.
*/

	

	/*Kakvi obshti interesi imat Iskra i Rosen?

 ?- interes(02,X),interes(05,X),write(X),nl.

*/

 /*?-interes(04,X),write(X),nl.*/

/*?-oferta_hotel(005,X),write(X),nl.*/

 /*?-hotel_grad(002,X),write(X).*/

