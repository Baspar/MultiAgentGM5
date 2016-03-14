!start.
+!start<- 
	enter;
	+ylmax(18);
	+ylmin(3);
	+yrmax(18);
	+yrmin(3);
	
	+yHautMin(3);
	+yHautMax(7);
	+yMilieuMin(10);
	+yMilieuMax(11);
	+yBasMin(14);
	+yBasMax(18);
	!demandeRole.

//Gestion des drapeaux
	//A Gauche
    +pos(X, Y, blueFlag) : X<7 & not leftFlag(X, Y) <- +leftFlag(X, Y); .broadcast(tell, leftFlag(X, Y)).
    +pos(X, Y, redFlag) : X<7 & not leftFlag(X, Y) <- +leftFlag(X, Y); .broadcast(tell, leftFlag(X, Y)).
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
    +leftFlag(X, Y).
		
	//A Droite
	+pos(X, Y, blueFlag) : X>7 & not rightFlag(X, Y) <- +rightFlag(X, Y); .broadcast(tell, rightFlag(X, Y)).
    +pos(X, Y, redFlag) : X>7 & not rightFlag(X, Y) <- +rightFlag(X, Y); .broadcast(tell, rightFlag(X, Y)).
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
    +rightFlag(X, Y).
    
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
            right;
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
            right;
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
            right;
            +nbVie(0);
			!pseudoEclaireur.
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
            right;
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
            +iAmProtecteur;
            right;
            +nbVie(1); 
			!pseudoEclaireur.
+!whatsMyRole : myPos(MYX,MYY) & pos(MYX+1,MYY,empty) <- right; !whatsMyRole.
+!whatsMyRole : myPos(MYX,MYY) & not pos(MYX+1,MYY,empty) & pos(MYX,MYY-1,empty) <- down; !whatsMyRole.
+!whatsMyRole : myPos(MYX,MYY) & not pos(MYX+1,MYY,empty) & pos(MYX,MYY+1,empty) <- up; !whatsMyRole.


//Definition des goDirectionnels
	+!goLeft :not dead & myPos(MYX,MYY) & pos(MYX-1,MYY,empty) <- -moveInProgress; left.
	+!goLeft :not dead & myPos(MYX,MYY) & (not pos(MYX-1,MYY,empty)) <- +moveInProgress; !goDown.
	+!goUp :not dead & myPos(MYX,MYY) & pos(MYX,MYY-1,empty) <- -moveInProgress; up.       
	+!goUp :not dead & myPos(MYX,MYY) & (not pos(MYX,MYY-1,empty)) <- +moveInProgress; !goLeft.
	+!goRight :not dead & myPos(MYX,MYY) & pos(MYX+1,MYY,empty) <- -moveInProgress; right.
	+!goRight :not dead & myPos(MYX,MYY) & (not pos(MYX+1,MYY,empty)) <- +moveInProgress; !goUp.
	+!goDown :not dead & myPos(MYX,MYY) & pos(MYX,MYY+1,empty) <- -moveInProgress; down.
	+!goDown :not dead & myPos(MYX,MYY) & (not pos(MYX,MYY+1,empty)) <- +moveInProgress; !goRight.

//Defense haut
	+!defenseHaut : dead <- -moveInProgress; -monte; -descente; enter; !defenseHaut.				
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X<7 & pos(X+1, Y, empty) <- right; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X<7 & not pos(X+1, Y, empty) & pos(X, Y-1, empty) <- up; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X<7 & not pos(X+1, Y, empty) & pos(X, Y+1, empty) <- down; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X>8 & pos(X-1, Y, empty) <- left; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X>8 & not pos(X-1, Y, empty) & pos(X, Y+1, empty)<- down; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X>8 & not pos(X-1, Y, empty) & pos(X, Y-1, empty)<- up; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==7|X==8) & Y>YHMA & pos(X, Y-1, empty) <- up; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==7|X==8) & Y>YHMA & not pos(X, Y-1, empty) & pos(X-1, Y, empty) <- left; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==7|X==8) & Y>YHMA & not pos(X, Y-1, empty) & pos(X+1, Y, empty) <- right; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & Y<YHMI & pos(X, Y+1, empty) <- down; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & Y<YHMI & not pos(X, Y+1, empty) & pos(X+1, Y, empty) <- right; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & Y<YHMI & not pos(X, Y+1, empty) & pos(X-1, Y, empty) <- left; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & Y==YHMI & not monte & not descente & pos(X, Y+1, empty) <- +descente; down; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & Y==YHMI & not monte & not descente & not pos(X, Y+1, empty) & pos(X+1, Y, empty) <- +descente; right; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & Y==YHMI & not monte & not descente & not pos(X, Y+1, empty) & pos(X-1, Y, empty) <- +descente; left; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & not Y==YHMI & not monte & not descente & pos(X, Y-1, empty) <- +monte; up; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & not Y==YHMI & not monte & not descente & not pos(X, Y-1, empty) & pos(X-1, Y, empty) <- +monte; left; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & not Y==YHMI & not monte & not descente & not pos(X, Y-1, empty) & pos(X+1, Y, empty) <- +monte; right; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & monte & not Y==YHMI & pos(X, Y-1, empty) <- up; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & monte & not Y==YHMI & not pos(X, Y-1, empty) & pos(X-1, Y, empty) <- left; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & monte & not Y==YHMI & not pos(X, Y-1, empty) & pos(X+1, Y, empty) <- right; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & monte & Y==YHMI & pos(X, Y+1, empty) <- -monte; +descente; down; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & monte & Y==YHMI & not pos(X, Y+1, empty) & pos(X+1, Y, empty) <- -monte; +descente; right; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & monte & Y==YHMI & not pos(X, Y+1, empty) & pos(X-1, Y, empty) <- -monte; +descente; left; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==7|X==8) & descente & not Y==YHMA & pos(X, Y+1, empty) <- down; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==7|X==8) & descente & not Y==YHMA & not pos(X, Y+1, empty) & pos(X+1, Y, empty) <- right; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==7|X==8) & descente & not Y==YHMA & not pos(X, Y+1, empty) & pos(X-1, Y, empty) <- left; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==7|X==8) & descente & Y==YHMA & pos(X, Y-1, empty) <- -descente; +monte; up; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==7|X==8) & descente & Y==YHMA & not pos(X, Y-1, empty) & pos(X-1, Y, empty) <- -descente; +monte; left; !defenseHaut.
	+!defenseHaut : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==7|X==8) & descente & Y==YHMA & not pos(X, Y-1, empty) & pos(X+1, Y, empty) <- -descente; +monte; right; !defenseHaut.
  	+!defenseHaut : not dead & not pos(_, _, redAgent) <- !defenseHaut.
    //Attaque
    +!defenseHaut : not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; .print("Attaaaaaaaque"); !defenseHaut.
    +!defenseHaut : not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; .print("Attaaaaaaaque"); !defenseHaut.
    +!defenseHaut : not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; .print("Attaaaaaaaque"); !defenseHaut.
    +!defenseHaut : enAttaque(YE) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; !defenseHaut.
    +!defenseHaut : enAttaque(YE) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; !defenseHaut.
    +!defenseHaut : enAttaque(YE) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; !defenseHaut.
	
//Defense milieu
	+!defenseMilieu : dead <- -enAttaque; -moveInProgress; enter; +nbVie(0); +forcedEclaireur; !pseudoEclaireur.
	+!defenseMilieu : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X<7 & pos(X+1, Y, empty) <- -enAttaque; right; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X<7 & not pos(X+1, Y, empty) & pos(X, Y-1, empty) <- -enAttaque; up; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X<7 & not pos(X+1, Y, empty) & pos(X, Y+1, empty) <- -enAttaque; down; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X>8 & pos(X-1, Y, empty) <- -enAttaque; left; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X>8 & not pos(X-1, Y, empty) & pos(X, Y+1, empty)<- -enAttaque; down; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X>8 & not pos(X-1, Y, empty) & pos(X, Y-1, empty)<- -enAttaque; up; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yMilieuMax(YMMA) & (X==7|X==8) & Y>=YMMA & pos(X, Y-1, empty) <- -enAttaque; up; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yMilieuMax(YMMA) & (X==7|X==8) & Y>=YMMA & not pos(X, Y-1, empty) & pos(X-1, Y, empty) <- -enAttaque; left; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yMilieuMax(YMMA) & (X==7|X==8) & Y>=YMMA & not pos(X, Y-1, empty) & pos(X+1, Y, empty) <- -enAttaque; right; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yMilieuMin(YMMI) & (X==7|X==8) & Y<=YMMI & pos(X, Y+1, empty) <- -enAttaque; down; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yMilieuMin(YMMI) & (X==7|X==8) & Y<=YMMI & not pos(X, Y+1, empty) & pos(X+1, Y, empty) <- -enAttaque; right; !defenseMilieu.
	+!defenseMilieu : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yMilieuMin(YMMI) & (X==7|X==8) & Y<=YMMI & not pos(X, Y+1, empty) & pos(X-1, Y, empty) <- -enAttaque; left; !defenseMilieu.
	+!defenseMilieu : not dead & not pos(_, _, redAgent) <- -enAttaque; !defenseMilieu.
    //Attaque
    +!defenseMilieu : not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; .print("Attaaaaaaaque"); !defenseMilieu.
    +!defenseMilieu : not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; .print("Attaaaaaaaque"); !defenseMilieu.
    +!defenseMilieu : not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; .print("Attaaaaaaaque"); !defenseMilieu.
    +!defenseMilieu : enAttaque(YE) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; !defenseMilieu.
    +!defenseMilieu : enAttaque(YE) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; !defenseMilieu.
    +!defenseMilieu : enAttaque(YE) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; !defenseMilieu.
	
//Defense bas
	+!defenseBas : dead <- -moveInProgress; -monte; -descente; enter; !defenseBas.				
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X<7 & pos(X+1, Y, empty) <- right; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X<7 & not pos(X+1, Y, empty) & pos(X, Y-1, empty) <- up; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X<7 & not pos(X+1, Y, empty) & pos(X, Y+1, empty) <- down; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X>8 & pos(X-1, Y, empty) <- left; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X>8 & not pos(X-1, Y, empty) & pos(X, Y+1, empty)<- down; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X>8 & not pos(X-1, Y, empty) & pos(X, Y-1, empty)<- up; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==7|X==8) & Y>YBMA & pos(X, Y-1, empty) <- up; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==7|X==8) & Y>YBMA & not pos(X, Y-1, empty) & pos(X-1, Y, empty) <- left; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==7|X==8) & Y>YBMA & not pos(X, Y-1, empty) & pos(X+1, Y, empty) <- right; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & Y<YBMI & pos(X, Y+1, empty) <- down; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & Y<YBMI & not pos(X, Y+1, empty) & pos(X+1, Y, empty) <- right; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & Y<YBMI & not pos(X, Y+1, empty) & pos(X-1, Y, empty) <- left; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & Y==YBMI & not monte & not descente & pos(X, Y+1, empty) <- +descente; down; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & Y==YBMI & not monte & not descente & not pos(X, Y+1, empty) & pos(X+1, Y, empty) <- +descente; right; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & Y==YBMI & not monte & not descente & not pos(X, Y+1, empty) & pos(X-1, Y, empty) <- +descente; left; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & not Y==YBMI & not monte & not descente & pos(X, Y-1, empty) <- +monte; up; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & not Y==YBMI & not monte & not descente & not pos(X, Y-1, empty) & pos(X-1, Y, empty) <- +monte; left; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & not Y==YBMI & not monte & not descente & not pos(X, Y-1, empty) & pos(X+1, Y, empty) <- +monte; right; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & monte & not Y==YBMI & pos(X, Y-1, empty) <- up; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & monte & not Y==YBMI & not pos(X, Y-1, empty) & pos(X-1, Y, empty) <- left; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & monte & not Y==YBMI & not pos(X, Y-1, empty) & pos(X+1, Y, empty) <- right; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & monte & Y==YBMI & pos(X, Y+1, empty) <- -monte; +descente; down; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & monte & Y==YBMI & not pos(X, Y+1, empty) & pos(X+1, Y, empty) <- -monte; +descente; right; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & monte & Y==YBMI & not pos(X, Y+1, empty) & pos(X-1, Y, empty) <- -monte; +descente; left; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==7|X==8) & descente & not Y==YBMA & pos(X, Y+1, empty) <- down; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==7|X==8) & descente & not Y==YBMA & not pos(X, Y+1, empty) & pos(X+1, Y, empty) <- right; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==7|X==8) & descente & not Y==YBMA & not pos(X, Y+1, empty) & pos(X-1, Y, empty) <- left; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==7|X==8) & descente & Y==YBMA & pos(X, Y-1, empty) <- -descente; +monte; up; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==7|X==8) & descente & Y==YBMA & not pos(X, Y-1, empty) & pos(X-1, Y, empty) <- -descente; +monte; left; !defenseBas.
	+!defenseBas : not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==7|X==8) & descente & Y==YBMA & not pos(X, Y-1, empty) & pos(X+1, Y, empty) <- -descente; +monte; right; !defenseBas.
    +!defenseBas : not dead & not pos(_, _, redAgent) <- !defenseBas.
    //Attaque
    +!defenseBas : not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; .print("Attaaaaaaaque"); !defenseBas.
    +!defenseBas : not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; .print("Attaaaaaaaque"); !defenseBas.
    +!defenseBas : not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; .print("Attaaaaaaaque"); !defenseBas.
    +!defenseBas : enAttaque(YE) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; !defenseBas.
    +!defenseBas : enAttaque(YE) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; !defenseBas.
    +!defenseBas : enAttaque(YE) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; !defenseBas.

//Protecteur
	//Renaissance
	+!protecteur : dead <- -moveInProgress; -monte; -descente; enter; !protecteur.
	//Flag adverse hors de portee
	+!protecteur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & XF==2 & X==4 & pos(X-1, Y, empty) <- left; !protecteur.
	+!protecteur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & XF==2 & X==4 & not pos(X-1, Y, empty) & pos(X, Y+1, empty)<- down; !protecteur.
	+!protecteur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & XF==2 & X==4 & not pos(X-1, Y, empty) & pos(X, Y-1, empty)<- up; !protecteur.
	+!protecteur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & XF==5 & X==3 & pos(X+1, Y, empty) <- right; !protecteur.
	+!protecteur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & XF==5 & X==3 & not pos(X+1, Y, empty) & pos(X, Y-1, empty) <- up; !protecteur.
	+!protecteur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & XF==5 & X==3 & not pos(X+1, Y, empty) & pos(X, Y+1, empty) <- down; !protecteur.
	//Trop a droite, trop a gauche
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & X<3 & pos(X+1, Y, empty) <- right; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & X<3 & not pos(X+1, Y, empty) & pos(X, Y-1, empty) <- up; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & X<3 & not pos(X+1, Y, empty) & pos(X, Y+1, empty) <- down; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & X>4 & pos(X-1, Y, empty) <- left; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & X>4 & not pos(X-1, Y, empty) & pos(X, Y+1, empty)<- down; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & X>4 & not pos(X-1, Y, empty) & pos(X, Y-1, empty)<- up; !protecteur.
	//Trop en haut, trop en bas
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & ylmax(YM) & Y>YM & pos(X, Y-1, empty) <- +monte; up; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & ylmax(YM) & Y>YM & not pos(X, Y-1, empty) & pos(X-1, Y, empty) <- +monte; left; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & ylmax(YM) & Y>YM & not pos(X, Y-1, empty) & pos(X+1, Y, empty) <- +monte; right; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & ylmin(YM) & Y<YM & pos(X, Y+1, empty) <- +descente; down; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & ylmin(YM) & Y<YM & not pos(X, Y+1, empty) & pos(X+1, Y, empty) <- +descente; right; !protecteur.
	+!protecteur : not moveInProgress & not dead & myPos(X, Y) & ylmin(YM) & Y<YM & not pos(X, Y+1, empty) & pos(X-1, Y, empty) <- +descente; left; !protecteur.
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
	+!eclaireur : dead <- -monte; -descente; -moveInProgress; enter; !eclaireur.
	//Flag adverse hors de portee
	+!eclaireur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==13 & X==15 <- left; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==17 & X==15 <- right; !eclaireur.
    //Trop a droite, trop a gauche
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X<14 & pos(X+1, Y, empty) <- right; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X<14 & not pos(X+1, Y, empty) & pos(X, Y-1, empty) <- up; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X<14 & not pos(X+1, Y, empty) & pos(X, Y+1, empty) <- down; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X>16 & pos(X-1, Y, empty) <- left; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X>16 & not pos(X-1, Y, empty) & pos(X, Y+1, empty)<- down; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & X>16 & not pos(X-1, Y, empty) & pos(X, Y-1, empty)<- up; !eclaireur.
	//Trop en haut, trop en bas
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & yrmax(YM) & Y>YM & pos(X, Y-1, empty) <- +monte; up; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & yrmax(YM) & Y>YM & not pos(X, Y-1, empty) & pos(X-1, Y, empty) <- +monte; left; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & yrmax(YM) & Y>YM & not pos(X, Y-1, empty) & pos(X+1, Y, empty) <- +monte; right; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & yrmin(YM) & Y<YM & pos(X, Y+1, empty) <- +descente; down; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & yrmin(YM) & Y<YM & not pos(X, Y+1, empty) & pos(X+1, Y, empty) <- +descente; right; !eclaireur.
	+!eclaireur : not moveInProgress & not dead & myPos(X, Y) & yrmin(YM) & Y<YM & not pos(X, Y+1, empty) & pos(X-1, Y, empty) <- +descente; left; !eclaireur.
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
	//Perte de vie
    +!pseudoEclaireur : dead & nbVie(X) & not X==0 <- -monte; -descente; -nbVie(X); +nbVie(X-1); -moveInProgress; enter; !pseudoEclaireur.
        //Renaissance protecteur
        +!pseudoEclaireur : dead & iAmProtecteur & nbVie(X) & X==0 <- -monte; -descente; -nbVie(X); -moveInProgress; enter; !protecteur.
        +!pseudoEclaireur : (rightBoundariesFound & not forcedEclaireur) & iAmProtecteur <- -moveInProgress; !protecteur.
        //Renaissance defenseHaut
        +!pseudoEclaireur : dead & iAmDefenseHaut & nbVie(X) & X==0 <- -monte; -descente; -nbVie(X); -moveInProgress; enter; !defenseHaut.
        +!pseudoEclaireur : (rightBoundariesFound & not forcedEclaireur) & iAmDefenseHaut <- -moveInProgress; !defenseHaut.
        //Renaissance defenseMilieu
        +!pseudoEclaireur : dead & iAmDefenseMilieu & nbVie(X) & X==0 <- -monte; -descente; -nbVie(X); -moveInProgress; enter; !defenseMilieu.
        +!pseudoEclaireur : (rightBoundariesFound & not forcedEclaireur) & iAmDefenseMilieu <- -moveInProgress; !defenseMilieu.
        //Renaissance defenseBas
        +!pseudoEclaireur : dead & iAmDefenseBas & nbVie(X) & X==0 <- -monte; -descente; -nbVie(X); -moveInProgress; enter; !defenseBas.
        +!pseudoEclaireur : (rightBoundariesFound & not forcedEclaireur) & iAmDefenseBas <- -moveInProgress; !defenseBas.
	//Flag adverse hors de portee
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==13 & X==15 <- left; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==17 & X==15 <- right; !pseudoEclaireur.
    //Trop a droite, trop a gauche
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & X<14 & pos(X+1, Y, empty) <- right; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & X<14 & not pos(X+1, Y, empty) & pos(X, Y-1, empty) <- up; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & X<14 & not pos(X+1, Y, empty) & pos(X, Y+1, empty) <- down; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & X>16 & pos(X-1, Y, empty) <- left; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & X>16 & not pos(X-1, Y, empty) & pos(X, Y+1, empty)<- down; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & X>16 & not pos(X-1, Y, empty) & pos(X, Y-1, empty)<- up; !pseudoEclaireur.
	//Trop en haut, trop en bas
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & yrmax(YM) & Y>YM & pos(X, Y-1, empty) <- +monte; up; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & yrmax(YM) & Y>YM & not pos(X, Y-1, empty) & pos(X-1, Y, empty) <- +monte; left; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & yrmax(YM) & Y>YM & not pos(X, Y-1, empty) & pos(X+1, Y, empty) <- +monte; right; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & yrmin(YM) & Y<YM & pos(X, Y+1, empty) <- +descente; down; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & yrmin(YM) & Y<YM & not pos(X, Y+1, empty) & pos(X+1, Y, empty) <- +descente; right; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & yrmin(YM) & Y<YM & not pos(X, Y+1, empty) & pos(X-1, Y, empty) <- +descente; left; !pseudoEclaireur.
	//Apparition
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & yrmin(YM) & not Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- +monte; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & yrmin(YM) & Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- +descente; !pseudoEclaireur.
	//Recentrage
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(14, Y) & pos(15,Y,empty) & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(16, Y) & pos(15,Y,empty) & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; !pseudoEclaireur.
	//Deplacement
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y-1,empty) & monte & yrmin(YM) & not Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- up; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y+1,empty) & monte & yrmin(YM) & Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -monte; +descente; down; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y+1,empty) & descente & yrmax(YM) & not Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- down; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y-1,empty) & descente & yrmax(YM) & Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -descente; +monte; up; !pseudoEclaireur.
	//Pas au centre, mais pas le choix
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y-1,empty) & not pos(15,Y,empty) & monte & yrmin(YM) & not Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- up; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y+1,empty) & not pos(15,Y,empty) & monte & yrmin(YM) & Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -monte; +descente; down; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y+1,empty) & not pos(15,Y,empty) & descente & yrmax(YM) & not Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- down; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y-1,empty) & not pos(15,Y,empty) & descente & yrmax(YM) & Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -descente; +monte; up; !pseudoEclaireur.
	//Evitement, colonne droite
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==14 & monte &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; up; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==14 & descente &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; down; !pseudoEclaireur.
	//Evitement, colonne milieu
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==15 & monte &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; up; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==15 & descente &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; down; !pseudoEclaireur.
	//Evitement, colonne gauche
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==16 & monte &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; up; !pseudoEclaireur.
	+!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==16 & descente &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; down; !pseudoEclaireur.
    //Else
    +!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not dead <- !pseudoEclaireur.
