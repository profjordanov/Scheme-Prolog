op(800,fx,if). 
op(700,xfx,then). 
op(300,xfy,or). 
op(200,xfy,and). 

if matura or priemen then ocenka. 
if ocenka and diploma then vsichko_ok. 
if vsichko_ok and platil then priet_za_student. 

?-window(title("Student")). 

win_func(init):-menu(normal,action(mitem0),text("Obraten interpretator")), 
menu(normal,action(mitem1),text("Fakti")), 
menu(normal,action(mitem2),text("Izhod")). 


mitem1(press):-read(F,"Vyvedete fakt(matura/priemen/diploma/platil)"),nl, 
assert_in(fact(F)),nl. 

mitem2(press):-close_window(_). 

mitem0(press):-istina_li_e(priet_za_student), message("Message","Priet e za student!",!). 
istina_li_e(P):-fact(P). 
istina_li_e(P):-if Uslovie then P,istina_li_e(Uslovie). 
istina_li_e(P1 and P2):-istina_li_e(P1),istina_li_e(P2). 
istina_li_e(P1 or P2):-istina_li_e(P1);istina_li_e(P2). 
