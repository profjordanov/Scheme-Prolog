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

goal(d).
df2(Node, [Node],_):-goal(Node).
df2(Node, [Node|Solution],MaxDepth):-MaxDepth>0,
naslednik(Node,Node1),Max1 is MaxDepth-1,
df2(Node1,Solution,Max1).
?-df2(a,Solution,2),write(Solution),n1.
