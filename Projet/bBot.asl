!start.
+!start<- 
	enter;
	+ylmax(18);
	+ylmin(3);
	+yrmax(18);
	+yrmin(3);
	!demandeRole.

//Gestion des drapeaux
	//A Gauche
    +pos(X, Y, blueFlag) : X<7 & not leftFlag(X, Y) <- +leftFlag(X, Y); .broadcast(send, leftFlag(X, Y)).
    +pos(X, Y, redFlag) : X<7 & not leftFlag(X, Y) <- +leftFlag(X, Y); .broadcast(send, leftFlag(X, Y)).
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
		
	//A Droite
	+pos(X, Y, blueFlag) : X>7 & not rightFlag(X, Y) <- +rightFlag(X, Y); .broadcast(send, rightFlag(X, Y)).
    +pos(X, Y, redFlag) : X>7 & not rightFlag(X, Y) <- +rightFlag(X, Y); .broadcast(send, rightFlag(X, Y)).
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
			+iAmEclaireur;
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
            +iAmDefenseHaut;
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
            +iAmDefenseMilieu;
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
            +iAmDefenseBas;
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
            +iAmPseudoEclaireur;
			!pseudoEclaireur.
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
  	+!defenseHaut : not dead <- !defenseHaut.
	
//Defense milieu
	+!defenseMilieu : dead <- -moveInProgress; enter; !defenseMilieu.				
	+!defenseMilieu : not moveInProgress & not dead & myPos(X, Y) & X<7 <- !goRight; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & myPos(X, Y) & X>8 <- !goLeft; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y>=11 <- !goUp; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & myPos(X, Y) & (X==7|X==8) & Y<=10 <- !goDown; !defenseMilieu.
	+!defenseMilieu : not dead <- !defenseMilieu.
	
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
    +!defenseBas : not dead <- !defenseBas.

//Protecteur
	//Renaissance
	+!protecteur : dead <- -moveInProgress; -monte; -descente; enter; !protecteur.
	//Flag adverse hors de portee
	+!protecteur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & XF==2 & X==4 <- !goLeft; !protecteur.
	+!protecteur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & XF==5 & X==3 <- !goRight; !protecteur.
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
    //Else
    +!protecteur : not dead <- !protecteur.


//Eclaireur
	//Renaissance
	+!eclaireur : dead <- -moveInProgress; enter; !eclaireur.
	//Flag adverse hors de portee
	+!eclaireur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==13 & X==15 <- left; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==17 & X==15 <- right; !eclaireur.
    //Trop a droite, trop a gauche
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X<14 <- !goRight; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X>16 <- !goLeft; !eclaireur.
	//Trop en haut, trop en bas
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & yrmax(YM) & Y>YM <- +monte; !goUp; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & yrmin(YM) & Y<YM <- +descente; !goDown; !eclaireur.
	//Apparition
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & yrmin(YM) & not Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- +monte; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & yrmin(YM) & Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- +descente; !eclaireur.
	//Recentrage
	+!eclaireur : not moveInProgress & not dead & myPos(14, Y) & pos(15,Y,empty) & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(16, Y) & pos(15,Y,empty) & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; !eclaireur.
	//Deplacement
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y-1,empty) & monte & yrmin(YM) & not Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- up; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y+1,empty) & monte & yrmin(YM) & Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -monte; +descente; down; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y+1,empty) & descente & yrmax(YM) & not Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- down; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y-1,empty) & descente & yrmax(YM) & Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -descente; +monte; up; !eclaireur.
	//Pas au centre, mais pas le choix
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y-1,empty) & not pos(15,Y,empty) & monte & yrmin(YM) & not Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- up; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y+1,empty) & not pos(15,Y,empty) & monte & yrmin(YM) & Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -monte; +descente; down; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y+1,empty) & not pos(15,Y,empty) & descente & yrmax(YM) & not Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- down; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y-1,empty) & not pos(15,Y,empty) & descente & yrmax(YM) & Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -descente; +monte; up; !eclaireur.
	//Evitement, colonne droite
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==14 & monte &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; up; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==14 & descente &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; down; !eclaireur.
	//Evitement, colonne milieu
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==15 & monte &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; up; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==15 & descente &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; down; !eclaireur.
	//Evitement, colonne gauche
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==16 & monte &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; up; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==16 & descente &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; down; !eclaireur.
    //Else
    +!eclaireur : not dead <- !eclaireur.

//PseudoEclaireur
	//Renaissance
	+!pseudoEclaireur : dead <- -moveInProgress; -iAmPseudoEclaireur; +iAmProtecteur; enter; !protecteur.
    +!pseudoEclaireur : rightBoundariesFound <- -moveInProgress; -iAmPseudoEclaireur; +iAmProtecteur; !protecteur.
	//Flag adverse hors de portee
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==13 & X==15 <- left; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==17 & X==15 <- right; !pseudoEclaireur.
    //Trop a droite, trop a gauche
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & X<14 <- !goRight; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & X>16 <- !goLeft; !pseudoEclaireur.
	//Trop en haut, trop en bas
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & yrmax(YM) & Y>YM <- +monte; !goUp; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & yrmin(YM) & Y<YM <- +descente; !goDown; !pseudoEclaireur.
	//Apparition
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & yrmin(YM) & not Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- +monte; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & yrmin(YM) & Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- +descente; !pseudoEclaireur.
	//Recentrage
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(14, Y) & pos(15,Y,empty) & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(16, Y) & pos(15,Y,empty) & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; !pseudoEclaireur.
	//Deplacement
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y-1,empty) & monte & yrmin(YM) & not Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- up; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y+1,empty) & monte & yrmin(YM) & Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -monte; +descente; down; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y+1,empty) & descente & yrmax(YM) & not Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- down; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y-1,empty) & descente & yrmax(YM) & Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -descente; +monte; up; !pseudoEclaireur.
	//Pas au centre, mais pas le choix
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y-1,empty) & not pos(15,Y,empty) & monte & yrmin(YM) & not Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- up; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y+1,empty) & not pos(15,Y,empty) & monte & yrmin(YM) & Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -monte; +descente; down; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y+1,empty) & not pos(15,Y,empty) & descente & yrmax(YM) & not Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- down; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y-1,empty) & not pos(15,Y,empty) & descente & yrmax(YM) & Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -descente; +monte; up; !pseudoEclaireur.
	//Evitement, colonne droite
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==14 & monte &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; up; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==14 & descente &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; down; !pseudoEclaireur.
	//Evitement, colonne milieu
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==15 & monte &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; up; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==15 & descente &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; down; !pseudoEclaireur.
	//Evitement, colonne gauche
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==16 & monte &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; up; !pseudoEclaireur.
	+!pseudoEclaireur : not rightBoundariesFound & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==16 & descente &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; down; !pseudoEclaireur.
    //Else
    +!pseudoEclaireur : not rightBoundariesFound & not dead <- !pseudoEclaireur.
