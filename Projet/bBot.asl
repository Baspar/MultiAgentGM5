!start.
+!start<- 
	enter;
	+ylmax(17);
	+ylmin(4);
	+yrmax(17);
	+yrmin(4);
	!demandeRole.

//Gestion des drapeaux
	//A Droite
    +pos(X, Y, blueFlag) : X<7 & not leftFlag(X, Y) <- +leftFlag(X, Y).
    +pos(X, Y, redFlag) : X<7 & not leftFlag(X, Y) <- +leftFlag(X, Y).
	+leftFlag(X1, Y1) : not leftBoundariesFound
					& leftFlag(X2, Y2) & leftFlag(X3, Y3) & leftFlag(X4, Y4)
					& (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
					& Y1<=Y2 & Y2<=Y3 & Y3<=Y4
					<- -ylmin(_); -ylmax(_); +ylmin(Y1+1); +ylmax(Y4-1); +leftBoundariesFound.
	+leftFlag(X1, Y1) : not leftBoundariesFound
					& leftFlag(X2, Y2) & leftFlag(X3, Y3) & leftFlag(X4, Y4)
					& (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
					& Y2<=Y1 & Y1<=Y3 & Y3<=Y4
					<- -ylmin(_); -ylmax(_); +ylmin(Y2+1); +ylmax(Y4-1); +leftBoundariesFound.
	+leftFlag(X1, Y1) : not leftBoundariesFound
					& leftFlag(X2, Y2) & leftFlag(X3, Y3) & leftFlag(X4, Y4)
					& (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
					& Y2<=Y3 & Y3<=Y1 & Y1<=Y4
					<- -ylmin(_); -ylmax(_); +ylmin(Y2+1); +ylmax(Y4-1); +leftBoundariesFound.
	+leftFlag(X1, Y1) : not leftBoundariesFound
					& leftFlag(X2, Y2) & leftFlag(X3, Y3) & leftFlag(X4, Y4)
					& (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
					& Y2<=Y3 & Y3<=Y4 & Y4<=Y1
					<- -ylmin(_); -ylmax(_); +ylmin(Y2+1); +ylmax(Y1-1); +leftBoundariesFound.
		
	//A Gauche
	+pos(X, Y, blueFlag) : X>7 & not rightFlag(X, Y) <- +rightFlag(X, Y).
    +pos(X, Y, redFlag) : X>7 & not rightFlag(X, Y) <- +rightFlag(X, Y).
	+rightFlag(X1, Y1) : not rightBoundariesFound
					& rightFlag(X2, Y2) & rightFlag(X3, Y3) & rightFlag(X4, Y4)
					& (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
					& Y1<=Y2 & Y2<=Y3 & Y3<=Y4
					<- -yrmin(_); -yrmax(_); +yrmin(Y1+1); +yrmax(Y4-1); +rightBoundariesFound.
	+rightFlag(X1, Y1) : not rightBoundariesFound
					& rightFlag(X2, Y2) & rightFlag(X3, Y3) & rightFlag(X4, Y4)
					& (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
					& Y2<=Y1 & Y1<=Y3 & Y3<=Y4
					<- -yrmin(_); -yrmax(_); +yrmin(Y2+1); +yrmax(Y4-1); +rightBoundariesFound.
	+rightFlag(X1, Y1) : not rightBoundariesFound
					& rightFlag(X2, Y2) & rightFlag(X3, Y3) & rightFlag(X4, Y4)
					& (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
					& Y2<=Y3 & Y3<=Y1 & Y1<=Y4
					<- -yrmin(_); -yrmax(_); +yrmin(Y2+1); +yrmax(Y4-1); +rightBoundariesFound.
	+rightFlag(X1, Y1) : not rightBoundariesFound
					& rightFlag(X2, Y2) & rightFlag(X3, Y3) & rightFlag(X4, Y4)
					& (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
					& Y2<=Y3 & Y3<=Y4 & Y4<=Y1
					<- -yrmin(_); -yrmax(_); +yrmin(Y2+1); +yrmax(Y1-1); +rightBoundariesFound.
    
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
				Y < Y4 |
				(Y == Y4 & X < X4))
		<-
			!eclaireur.
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
	+!goLeft :not dead & myPos(MYX,MYY) & pos(MYX-1,MYY,empty) <- -moveInProgress; left.
	+!goLeft :not dead & myPos(MYX,MYY) & (not pos(MYX-1,MYY,empty)) <- +moveInProgress; !goDown.
	+!goUp :not dead & myPos(MYX,MYY) & pos(MYX,MYY-1,empty) <- -moveInProgress; up.       
	+!goUp :not dead & myPos(MYX,MYY) & (not pos(MYX,MYY-1,empty)) <- +moveInProgress; !goLeft.
	+!goRight :not dead & myPos(MYX,MYY) & pos(MYX+1,MYY,empty) <- -moveInProgress; right.
	+!goRight :not dead & myPos(MYX,MYY) & (not pos(MYX+1,MYY,empty)) <- +moveInProgress; !goDown.
	+!goDown :not dead & myPos(MYX,MYY) & pos(MYX,MYY+1,empty) <- -moveInProgress; down.
	+!goDown :not dead & myPos(MYX,MYY) & (not pos(MYX,MYY+1,empty)) <- +moveInProgress; !goRight.

//Defense haut
	+!defenseHaut : dead <- -moveInProgress; -monte; -descente; enter; !defenseHaut.				
	+!defenseHaut : not moveInProgress & not dead & myPos(X, Y) & X<7 <- !goRight; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & myPos(X, Y) & X>8 <- !goLeft; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y>5 <- !goUp; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y<3 <- !goDown; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y==3 & not monte & not descente <- +descente; !goDown; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y==4 & not monte & not descente <- +descente; !goDown; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y==5 & not monte & not descente <- +monte; !goUp; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & monte & not Y==3 <- !goUp; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & monte & Y==3 <- -monte; +descente; !goDown; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & descente & not Y==5 <- !goDown; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & descente & Y==5 <- -descente; +monte; !goUp; !defenseHaut.
	
//Defense milieu
	+!defenseMilieu : dead <- -moveInProgress; enter; !defenseMilieu.				
	+!defenseMilieu : not moveInProgress & not dead & myPos(X, Y) & X<7 <- !goRight; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & myPos(X, Y) & X>8 <- !goLeft; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y>=11 <- !goUp; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y<=10 <- !goDown; !defenseMilieu.
	+!defenseMilieu : moveInProgress <- !defenseMilieu.
	
//Defense bas
	+!defenseBas : dead <- -moveInProgress; -monte; -descente; enter; !defenseBas.				
	+!defenseBas : not moveInProgress & not dead & myPos(X, Y) & X<7 <- !goRight; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & myPos(X, Y) & X>8 <- !goLeft; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y>18 <- !goUp; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y<16 <- !goDown; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y==16 & not monte & not descente <- +descente; !goDown; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y==17 & not monte & not descente <- +descente; !goDown; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y==18 & not monte & not descente <- +monte; !goUp; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & monte & not Y==16 <- !goUp; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & monte & Y==16 <- -monte; +descente; !goDown; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & descente & not Y==18 <- !goDown; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & descente & Y==18 <- -descente; +monte; !goUp; !defenseBas.
	
//Protecteur
	//Renaissance
	+!protecteur : dead <- -moveInProgress; -monte; -descente; enter; !protecteur.
	//Flag adverse hors de portee
	+!protecteur : pos(XF, YF, redFlag) & myPos(X, Y) & XF==2 & X==4 <- !goLeft; !protecteur.
	+!protecteur : pos(XF, YF, redFlag) & myPos(X, Y) & XF==5 & X==3 <- !goRight; !protecteur.
	//Trop a droite, trop a gauche
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & X<3 <- !goRight; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & X>4 <- !goLeft; !protecteur.
	//Trop en haut, trop en bas
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & ylmax(YM) & Y>YM <- +monte; !goUp; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & ylmin(YM) & Y<YM <- +descente; !goDown; !protecteur.
	//Apparition
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & ylmin(YM) & not Y==YM <- +monte; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & ylmin(YM) & Y==YM <- +descente; !protecteur.
	//Deplacement bord
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & pos(X,Y-1,empty) & monte & ylmin(YM) & not Y==YM <- up; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & pos(X,Y+1,empty) & monte & ylmin(YM) & Y==YM <- -monte; +descente; down; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & pos(X,Y+1,empty) & descente & ylmax(YM) & not Y==YM <- down; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & pos(X,Y-1,empty) & descente & ylmax(YM) & Y==YM <- -descente; +monte; up; !protecteur.
	//Deplacement bord, colonne droite
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==3 & monte <- right; up; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==3 & descente <- right; down; !protecteur.
	//Deplacement bord, colonne gauche
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==4 & monte <- left; up; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==4 & descente <- left; down; !protecteur.

//Eclaireur
	//Renaissance
	+!eclaireur : dead <- -moveInProgress; enter; !eclaireur.
	//Flag adverse hors de portee
	+!protecteur : pos(XF, YF, redFlag) & myPos(X, Y) & YF==Y & X==13 <- !goLeft; !protecteur.
	+!protecteur : pos(XF, YF, redFlag) & myPos(X, Y) & YF==Y & X==17 <- !goRight; !protecteur.
	//Trop a droite, trop a gauche
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X<14 <- !goRight; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X>16 <- !goLeft; !eclaireur.
	//Trop en haut, trop en bas
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & yrmax(YM) & Y>YM <- +monte; !goUp; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & yrmin(YM) & Y<YM <- +descente; !goDown; !eclaireur.
	//Apparition
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & yrmin(YM) & not Y==YM <- +monte; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & yrmin(YM) & Y==YM <- +descente; !eclaireur.
	//Recentrage
	+!eclaireur : not moveInProgress & not dead & myPos(14, Y) & pos(15,Y,empty) <- right; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(16, Y) & pos(15,Y,empty) <- left; !eclaireur.
	//Deplacement bord
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y-1,empty) & monte & yrmin(YM) & not Y==YM <- up; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y+1,empty) & monte & yrmin(YM) & Y==YM <- -monte; +descente; down; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y+1,empty) & descente & yrmax(YM) & not Y==YM <- down; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y-1,empty) & descente & yrmax(YM) & Y==YM <- -descente; +monte; up; !eclaireur.
	//Pas au centre, maispas le choix
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y-1,empty) & not pos(15,Y,empty) & monte & yrmin(YM) & not Y==YM <- up; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y+1,empty) & not pos(15,Y,empty) & monte & yrmin(YM) & Y==YM <- -monte; +descente; down; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y+1,empty) & not pos(15,Y,empty) & descente & yrmax(YM) & not Y==YM <- down; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y-1,empty) & not pos(15,Y,empty) & descente & yrmax(YM) & Y==YM <- -descente; +monte; up; !eclaireur.
	//Deplacement bord, colonne droite
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==14 & monte <- right; up; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==14 & descente <- right; down; !eclaireur.
	//Deplacement bord, colonne milieu
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==15 & monte <- right; up; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==15 & descente <- left; down; !eclaireur.
	//Deplacement bord, colonne gauche
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==16 & monte <- left; up; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==16 & descente <- left; down; !eclaireur.
