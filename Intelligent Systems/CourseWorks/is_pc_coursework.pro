op(800,fx,if). 
op(700,xfx,then). 
op(300,xfy,or). 
op(200,xfy,and). 

?-window(_,_,win_func(_),"Computers", 100, 100, 450, 320). 

win_func(init):-menu(normal,_,_,mitem0(_),"Reverse interpreter"), 
menu(normal,_,_,mitem1(_),"Facts"), 
menu(normal,_,_,mitem2(_),"Exit"). 


mitem1(press):-read(F,"Enter a fact(photoshop/html or visual_studio/eclipse & price & paid)"),nl, 
assert_in(fact(F)),nl. 

mitem2(press):-close_window(_). 

mitem0(press):-is_real(bought_macbook), message("Message","Congratulations, you bought Mac!",!).
mitem0(press):-is_real(bought_lenovo), message("Message","Congratulations, you bought Lenovo!",!). 
is_real(P):-fact(P). 
is_real(P):-if condition then P,is_real(condition). 
is_real(P1 and P2):-is_real(P1),is_real(P2). 
is_real(P1 or P2):-is_real(P1);is_real(P2).

if photoshop or html then macbook. 
if visual_studio or eclipse then lenovo_thinkpad.
if macbook and price_2500 then payready_mac. 
if lenovo_thinkpad and price_1000 then payready_lenovo. 
if payready_mac and paid then bought_macbook. 
if payready_lenovo and paid then bought_lenovo. 
