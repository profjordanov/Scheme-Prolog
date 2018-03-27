op(800,fx,if). 
op(700,xfx,then). 
op(300,xfy,or). 
op(200,xfy,and). 

if opel and astra then marka_model. 
if g_2002 and klimatik then ekstra. 
if ekstra and c_2500 then super. 
if marka_model and super then idealna. 

?-window(_,_,win_func(_),"Koli", 100, 100, 450, 320). 

win_func(init):-menu(normal,_,_,mitem0(_),"Cel1"), 
menu(normal,_,_,mitem01(_),"Cel2"), 
menu(normal,_,_,mitem1(_),"Fakti"), 
menu(normal,_,_,mitem2(_),"Izhod"). 


mitem1(press):-read(F,"Vyvedete fakt(opel astra g_2002 klimatik c_2500)"),nl, 
assert_in(fact(F)),nl. 

mitem2(press):-close_window(_). 

mitem0(press):-istina_li_e(marka_model), message("Message","Ima tursenata marka i model!",!). 
mitem01(press):-istina_li_e(idealna), message("Message","Idealnata kola e otkrita",!). 

istina_li_e(P):-fact(P). 
istina_li_e(P):-if Uslovie then P,istina_li_e(Uslovie). 
istina_li_e(P1 and P2):-istina_li_e(P1),istina_li_e(P2). 
istina_li_e(P1 or P2):-istina_li_e(P1);istina_li_e(P2). 
