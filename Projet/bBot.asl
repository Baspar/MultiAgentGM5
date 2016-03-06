!start.
+!start<- 
	enter;
	!demandeRole.

//Gestion des drapeau
    //+pos(X, Y, blueFlag) <- .broadcast(tell, aFlagIsOn(blue, X, Y)); +aFlagIsOn(blue, X, Y).
    //+pos(X, Y, redFlag) <- .broadcast(tell, aFlagIsOn(red, X, Y)); +aFlagIsOn(red, X, Y).
    
//Demande de role
	+!demandeRole :
			myPos(X, Y)
		<-
			.broadcast(tell, askForRole(X, Y));
			+myInitialPos(X, Y);
			!whatsMyRole.
			
			
			
//Test role
	+!whatsMyRole : myInitialPos(X, Y) & askForRole(X1, Y1) & askForRole(X2, Y2) & askForRole(X3, Y3) & askForRole(X4, Y4) & (	not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))&
			(
				Y < Y1 |
				(Y == Y1 & X < X1)
			)&
			(
				Y < Y2 |
				(Y == Y2 & X < X2)
			)&
			(
				Y < Y3 |
				(Y == Y3 & X < X3)
            )&
			(
				Y > Y4 |
				(Y == Y4 & X > X4))
		<-
			!defenseHaut.
		+!whatsMyRole : myInitialPos(X, Y) & askForRole(X1, Y1) & askForRole(X2, Y2) & askForRole(X3, Y3) & askForRole(X4, Y4) & (	not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))&
			(
				Y < Y1 |
				(Y == Y1 & X < X1)
			)&
			(
				Y < Y2 |
				(Y == Y2 & X < X2)
			)&
			(
				Y > Y3 |
				(Y == Y3 & X > X3)
            )&
			(
				Y > Y4 |
				(Y == Y4 & X > X4))
		<-
			!defenseMilieu.
		+!whatsMyRole : myInitialPos(X, Y) & askForRole(X1, Y1) & askForRole(X2, Y2) & askForRole(X3, Y3) & askForRole(X4, Y4) & (	not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))&
			(
				Y < Y1 |
				(Y == Y1 & X < X1)
			)&
			(
				Y > Y2 |
				(Y == Y2 & X > X2)
			)&
			(
				Y > Y3 |
				(Y == Y3 & X > X3)
            )&
			(
				Y > Y4 |
				(Y == Y4 & X > X4))
		<-
			!defenseBas.
		+!whatsMyRole : myInitialPos(X, Y) & askForRole(X1, Y1) & askForRole(X2, Y2) & askForRole(X3, Y3) & askForRole(X4, Y4) & (	not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))&
			(
				Y > Y1 |
				(Y == Y1 & X > X1)
			)&
			(
				Y > Y2 |
				(Y == Y2 & X > X2)
			)&
			(
				Y > Y3 |
				(Y == Y3 & X > X3)
            )&
			(
				Y > Y4 |
				(Y == Y4 & X > X4))
		<-
			!protecteur.
+!whatsMyRole : myPos(MYX,MYY) & pos(MYX+1,MYY,empty) <- right; !whatsMyRole.
+!whatsMyRole : myPos(MYX,MYY) & not pos(MYX+1,MYY,empty) <- down; !whatsMyRole.



//Definition des goDirectionnels
	+!goLeft :not dead & myPos(MYX,MYY) & pos(MYX-1,MYY,empty) <- -move; left.
	+!goLeft :not dead & myPos(MYX,MYY) & (not pos(MYX-1,MYY,empty)) <- +move; !goUp.
	+!goUp :not dead & myPos(MYX,MYY) & pos(MYX,MYY-1,empty) <- -move; up.
	+!goUp :not dead & myPos(MYX,MYY) & (not pos(MYX,MYY-1,empty)) <- +move; !goLeft.
	+!goRight :not dead & myPos(MYX,MYY) & pos(MYX+1,MYY,empty) <- -move; right.
	+!goRight :not dead & myPos(MYX,MYY) & (not pos(MYX+1,MYY,empty)) <- +move; !goDown.
	+!goDown :not dead & myPos(MYX,MYY) & pos(MYX,MYY+1,empty) <- -move; down.
	+!goDown :not dead & myPos(MYX,MYY) & (not pos(MYX,MYY+1,empty)) <- +move; !goRight.

//Defense haut
	+!defenseHaut : dead <- -move; -monte; -descente; enter; !defenseHaut.				
	+!defenseHaut : not move & not dead & myPos(X, Y) & X<7 <- !goRight; !defenseHaut.
	+!defenseHaut : not move & not dead & myPos(X, Y) & X>7 <- !goLeft; !defenseHaut.
	+!defenseHaut : not move & not dead & myPos(X, Y) & X==7 & Y>5 <- !goUp; !defenseHaut.
	+!defenseHaut : not move & not dead & myPos(X, Y) & X==7 & Y<3 <- !goDown; !defenseHaut.
	+!defenseHaut : not move & not dead & myPos(X, Y) & X==7 & Y==3 & not monte & not descente <- +descente; !goDown; !defenseHaut.
	+!defenseHaut : not move & not dead & myPos(X, Y) & X==7 & Y==4 & not monte & not descente <- +descente; !goDown; !defenseHaut.
	+!defenseHaut : not move & not dead & myPos(X, Y) & X==7 & Y==5 & not monte & not descente <- +monte; !goUp; !defenseHaut.
	+!defenseHaut : not move & not dead & myPos(X, Y) & X==7 & monte & not Y==3 <- !goUp; !defenseHaut.
	+!defenseHaut : not move & not dead & myPos(X, Y) & X==7 & monte & Y==3 <- -monte; +descente; !goDown; !defenseHaut.
	+!defenseHaut : not move & not dead & myPos(X, Y) & X==7 & descente & not Y==5 <- !goDown; !defenseHaut.
	+!defenseHaut : not move & not dead & myPos(X, Y) & X==7 & descente & Y==5 <- -descente; +monte; !goUp; !defenseHaut.
	
//Defense milieu
	+!defenseMilieu : dead <- -move; enter; !defenseMilieu.				
	+!defenseMilieu : not move & not dead & myPos(X, Y) & X<7 <- !goRight; !defenseMilieu.
	+!defenseMilieu : not move & not dead & myPos(X, Y) & X>7 <- !goLeft; !defenseMilieu.
	+!defenseMilieu : not move & not dead & myPos(X, Y) & X==7 & Y>11 <- !goUp; !defenseMilieu.
	+!defenseMilieu : not move & not dead & myPos(X, Y) & X==7 & Y<10 <- !goDown; !defenseMilieu.
	+!defenseMilieu : not move & not dead & myPos(X, Y) & X==7 & Y==10 <- !goDown; !defenseMilieu.
	+!defenseMilieu : not move & not dead & myPos(X, Y) & X==7 & Y==11 <- !goUp; !defenseMilieu.
	
//Defense bas
	+!defenseBas : dead <- -move; -monte; -descente; enter; !defenseBas.				
	+!defenseBas : not move & not dead & myPos(X, Y) & X<7 <- !goRight; !defenseBas.
	+!defenseBas : not move & not dead & myPos(X, Y) & X>7 <- !goLeft; !defenseBas.
	+!defenseBas : not move & not dead & myPos(X, Y) & X==7 & Y>18 <- !goUp; !defenseBas.
	+!defenseBas : not move & not dead & myPos(X, Y) & X==7 & Y<16 <- !goDown; !defenseBas.
	+!defenseBas : not move & not dead & myPos(X, Y) & X==7 & Y==16 & not monte & not descente <- +descente; !goDown; !defenseBas.
	+!defenseBas : not move & not dead & myPos(X, Y) & X==7 & Y==17 & not monte & not descente <- +descente; !goDown; !defenseBas.
	+!defenseBas : not move & not dead & myPos(X, Y) & X==7 & Y==18 & not monte & not descente <- +monte; !goUp; !defenseBas.
	+!defenseBas : not move & not dead & myPos(X, Y) & X==7 & monte & not Y==16 <- !goUp; !defenseBas.
	+!defenseBas : not move & not dead & myPos(X, Y) & X==7 & monte & Y==16 <- -monte; +descente; !goDown; !defenseBas.
	+!defenseBas : not move & not dead & myPos(X, Y) & X==7 & descente & not Y==18 <- !goDown; !defenseBas.
	+!defenseBas : not move & not dead & myPos(X, Y) & X==7 & descente & Y==18 <- -descente; +monte; !goUp; !defenseBas.
	
//Protecteur
	+!protecteur : dead <- -move; -monte; -descente; enter; !protecteur.
	+!protecteur : pos(XF, YF, redFlag) & myPos(X, Y) & XF==2 & X==4 <- !goLeft; !protecteur.
	+!protecteur : pos(XF, YF, redFlag) & myPos(X, Y) & XF==5 & X==3 <- !goRight; !protecteur.
	+!protecteur : not move & not dead & myPos(X, Y) & X<3 <- !goRight; !protecteur.
	+!protecteur : not move & not dead & myPos(X, Y) & X>4 <- !goLeft; !protecteur.
	+!protecteur : not move & not dead & myPos(X, Y) & Y>17 <- !goUp; !protecteur.
	+!protecteur : not move & not dead & myPos(X, Y) & Y<4 <- !goDown; !protecteur.
	+!protecteur : not move & not dead & myPos(X, Y) & Y>=4 & Y<=16 & not monte & not descente <- +descente; !goDown; !protecteur.
	+!protecteur : not move & not dead & myPos(X, Y) & Y==17 & not monte & not descente <- +monte; !goUp; !protecteur.
	+!protecteur : not move & not dead & myPos(X, Y) & monte & not Y==4 <- !goUp; !protecteur.
	+!protecteur : not move & not dead & myPos(X, Y) & monte & Y==4 <- -monte; +descente; !goDown; !protecteur.
	+!protecteur : not move & not dead & myPos(X, Y) & descente & not Y==17 <- !goDown; !protecteur.
	+!protecteur : not move & not dead & myPos(X, Y) & descente & Y==17 <- -descente; +monte; !goUp; !protecteur.
	
	
