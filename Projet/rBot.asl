!start.
+!start<- 
	enter;
	!go.

+!go : dead <- -iHaveToGoLeft; -iHaveToGoRight; enter; !go.

+!go : not dead & not iHaveToGoLeft & not iHaveToGoRight & myPos(X, Y) & X>10 <- +iHaveToGoLeft; !go.
+!go : not dead & not iHaveToGoLeft & not iHaveToGoRight & myPos(X, Y) & X<10 <- +iHaveToGoRight; !go.

+!go : not dead & iHaveToGoLeft & myPos(X, Y) & pos(X-1,Y,empty)& X>2 <- left ; !go.
+!go : not dead & iHaveToGoLeft & myPos(X, Y) & not pos(X-1,Y,empty)& X>2 <- up ; !go.
+!go : not dead & iHaveToGoRight & myPos(X, Y) & pos(X+1,Y,empty)& X<18 <- right ; !go.
+!go : not dead & iHaveToGoRight & myPos(X, Y) & not pos(X+1,Y,empty)& X<18 <- down ; !go.
+!go : not dead & iHaveToGoLeft & myPos(X, Y) & pos(X+1,Y,empty)& X<=2 <- -iHaveToGoLeft; +iHaveToGoRight; right ; !go.
+!go : not dead & iHaveToGoLeft & myPos(X, Y) & not pos(X+1,Y,empty)& X<=2 <- -iHaveToGoLeft; +iHaveToGoRight; down ; !go.
+!go : not dead & iHaveToGoRight & myPos(X, Y) & pos(X-1,Y,empty)& X>=18 <- -iHaveToGoRight; +iHaveToGoLeft; left ; !go.
+!go : not dead & iHaveToGoRight & myPos(X, Y) & not pos(X-1,Y,empty)& X>=18 <- -iHaveToGoRight; +iHaveToGoLeft; up ; !go.
