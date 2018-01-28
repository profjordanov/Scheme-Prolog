

 
Курсова работа

по Логическо и функционално програмиране


изготвил:
Мирослав Калчев, ф.н. 103345, гр.39, сп. Информатикa


Клиент
Код	Име	Град	Бюджет
01	Иво	Варна	250
02	Павел	София	130
03	Сашо	Шумен	480
04	Мими	Плевен	90


Стока
Код	Име	Наличност	Цена
143	Мишки	180	50
128	Компютри	500	700
114	Клавиатури	300	100
253	Монитори	450	400


Покупка
Код	Код_Стока	Количество
01	143	25
02	128	70
03	114	15
04	253	30

 
ime_kl(01,ivo).
ime_kl(02,pavel).
ime_kl(03,sasho).
ime_kl(04,mimi).

ime_gr(01,varna).
ime_gr(02,sofiq).
ime_gr(03,shumen).
ime_gr(04,pleven).

budjet(01,250).
budjet(02,130).
budjet(03,480).
budjet(04,90).

stoka(143,mishki).
stoka(128,kompiutri).
stoka(114,klaviaturi).
stoka(253,monitori).

stoka_nal(143,180).
stoka_nal(128,500).
stoka_nal(114,300).
stoka_nal(253,450).

cena(143,50).
cena(128,700).
cena(114,100).
cena(253,400).

pokupka(01,143).
pokupka(02,128).
pokupka(03,114).
pokupka(04,253).

pokupka_kol(01,25).
pokupka_kol(02,70).
pokupka_kol(03,15).
pokupka_kol(04,30).
 






На клиентите е поставен лимит, който могат да похарчат от бюджета който имат. Ако този лимит е 30% от бюджета, колко пари имат право да похарчат?

limit(X,Y):-budjet(X,Z),Y is 0.3*Z.
?-limit(X,Y),write(X),write(" Ima pravo da poharchi "),write(Y),nl,fail.

Ако Гери е решила да си купи продукт, който има наличност по-голяма от 100 или цена по-малка от 5, кой е най-подходящият продукт за Гери, като цената е с предимство?

pokupka_geri(Stoka):-stoka(ID_stoka,Stoka),
cena(ID_stoka,Cena),Cena<5,!.
pokupka_geri(Stoka):-stoka(ID_stoka,Stoka),
stoka_nal(ID_stoka,Nalichnost),Nalichnost>100.
?-pokupka_geri(Stoka),write(Stoka),nl,fail.


 
1.	Каква стока си е купил Иво?
2.	От кой град е клиента, закупил мишката?
3.	Какво е името на клиента, закупил компютъра?
4.	Какво е името на стоката, закупена от клиентът от гр. Плевен?
5.	Какво е името на клиента, закупил продукт с количество по-малко от 35?
6.	Каква е наличността на продукта, закупен от Павел?



pokupka_geri(Stoka):-ime_kl(ID_pok,geri),
pokupka(ID_pok,ID_stoka),
stoka(ID_stoka,Stoka).
?-pokupka_geri(Stoka),write(Stoka),nl,fail.

pokupka_chervilo(Grad):-stoka(ID_stoka,chervilo),
pokupka(ID_pok,ID_stoka),
ime_gr(ID_pok,Grad).
?-pokupka_chervilo(Grad),write(Grad),nl,fail.

pokupka_lak(Ime):-stoka(ID_stoka,lak),
pokupka(ID_pok,ID_stoka),
ime_kl(ID_pok,Ime).
?-pokupka_lak(Ime),write(Ime),nl,fail.

pokupka_ruse(Stoka):-ime_gr(ID_pok,ruse),
pokupka(ID_pok,ID_stoka),
stoka(ID_stoka,Stoka).
?-pokupka_ruse(Stoka),write(Stoka),nl,fail.

pokupka_Kol(Ime):-pokupka_kol(ID_pok,Kol),Kol=10,
pokupka(ID_pok,ID_stoka),
ime_kl(ID_pok,Ime).
?-pokupka_Kol(Ime),write(Ime),nl,fail.

pokupka_dori(Nalichnost):-ime_kl(ID_pok,dori),
pokupka(ID_pok,ID_stoka),
stoka_nal(ID_stoka,Nalichnost).
?-pokupka_dori(Nalichnost),write(Nalichnost),nl,fail.

