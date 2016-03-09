!start.
+!start<- 
	enter;
	+iHaveToGoLeft;
	!go.

+!go : not dead & iHaveToGoLeft & myPos(X, Y) & X>2 <- !goLeft ; !go.
+!go : not dead & iHaveToGoRight & myPos(X, Y) & X<18 <- !goRight ; !go.
+!go : not dead & iHaveToGoLeft & myPos(X, Y) & X<=2 <- -iHaveToGoLeft; +iHaveToGoRight; !goRight ; !go.
+!go : not dead & iHaveToGoRight & myPos(X, Y) & X>=18 <- -iHaveToGoRight; +iHaveToGoLeft; !goLeft ; !go.



+dead <-  
	enter;
	+iHaveToGoLeft;
	!go.
	
	+!goLeft : myPos(MYX,MYY) & pos(MYX-1,MYY,empty) <- left.
	+!goLeft : myPos(MYX,MYY) & (not pos(MYX-1,MYY,empty)) <- down.
	+!goUp : myPos(MYX,MYY) & pos(MYX,MYY-1,empty) <- up.
	+!goUp : myPos(MYX,MYY) & (not pos(MYX,MYY-1,empty)) <- left.
	+!goRight : myPos(MYX,MYY) & pos(MYX+1,MYY,empty) <- right.
	+!goRight : myPos(MYX,MYY) & (not pos(MYX+1,MYY,empty)) <- up.
	+!goDown : myPos(MYX,MYY) & pos(MYX,MYY+1,empty) <- down.
	+!goDown : myPos(MYX,MYY) & (not pos(MYX,MYY+1,empty)) <- right.
