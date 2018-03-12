naslednik(a,b).
naslednik(a,c).
naslednik(b,d).
naslednik(b,m).
naslednik(c,f).
naslednik(c,g).
naslednik(d,h).
naslednik(m,i).
naslednik(m,j).
naslednik(f,k).

goal(j).
df(Node, [Node]):-goal(Node).
df(Node, [Node|Solution]):-naslednik(Node,Node1),
df(Node1,Solution).
?-df(a,Solution),write(Solution),n1.
