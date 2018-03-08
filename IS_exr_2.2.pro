%window(Handle, Parent, Win_func(_), Title, X, Y, Width, Height)
%window(handle(Handle), parent(Parent),class(win_func), title(Text), pos(X,Y),
%size(Width,Height)).
%menu(Type, Handle, Parent, Menu_func(_), Text)

?-window(_,_,win_func(_),"Students",100,100,300,200).
win_func(init):-menu(pop_up,_,_,enterdata(_),"Enter data"),
			  menu(pop_up,_,_,search(_),"Search data"),
			  menu(normal,_,_,exit(_),"Exit").
