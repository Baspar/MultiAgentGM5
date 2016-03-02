!start.
+!start<- 
	enter;
	!demandeRole.

//Gestion des drapeau
    +pos(X, Y, blueFlag) <- .broadcast(tell, aFlagIsOn(blue, X, Y)); +aFlagIsOn(blue, X, Y).
    +pos(X, Y, redFlag) <- .broadcast(tell, aFlagIsOn(red, X, Y)); +aFlagIsOn(red, X, Y).
    
//Demande de role
	+!demandeRole :
			myPos(X, Y)
		<-
			.broadcast(tell, askForRole(X, Y));
			!amIDefenseHaut;
			!amIDefenseMilieu;
			!amIDefenseBas;
            !amIProtecteur;
            !amIEclaireur.
//Test role
	//Cas defense Haut
	+!amIDefenseHaut :
			myPos(X, Y) &
			askForRole(X1, Y1) & 
			askForRole(X2, Y2) &
            askForRole(X3, Y3) &
            askForRole(X4, Y4) &
			(
				not X1 == X2 | (X1 == X2 & not Y1 == Y2) 
			)&
            (
                not X1 == X3 |( X1 == X3 & not Y1 == Y3)
            )&
            (
                not X1 == X4 |( X1 == X4 & not Y1 == Y4)
            )&
            (
                not X2 == X3 |( X2 == X3 & not Y2 == Y3)
            )&
            (
                not X2 == X4 |( X2 == X4 & not Y2 == Y4)
            )&
            (
                not X3 == X4 |( X3 == X4 & not Y3 == Y4)
            )&
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
	+!amIDefenseHaut :
			myPos(X, Y) &
			askForRole(X1, Y1) & 
			askForRole(X2, Y2) &
            askForRole(X3, Y3) &
            askForRole(X4, Y4) &
			(
				not X1 == X2 | (X1 == X2 & not Y1 == Y2) 
			)&
            (
                not X1 == X3 |( X1 == X3 & not Y1 == Y3)
            )&
            (
                not X1 == X4 |( X1 == X4 & not Y1 == Y4)
            )&
            (
                not X2 == X3 |( X2 == X3 & not Y2 == Y3)
            )&
            (
                not X2 == X4 |( X2 == X4 & not Y2 == Y4)
            )&
            (
                not X3 == X4 |( X3 == X4 & not Y3 == Y4)
            ).
	+!amIDefenseHaut <- !amIDefenseHaut.

	//Cas defense Milieu
	+!amIDefenseMilieu :
			myPos(X, Y) &
			askForRole(X1, Y1) & 
			askForRole(X2, Y2) &
            askForRole(X3, Y3) &
            askForRole(X4, Y4) &
			(
				not X1 == X2 | (X1 == X2 & not Y1 == Y2) 
			)&
            (
                not X1 == X3 |( X1 == X3 & not Y1 == Y3)
            )&
            (
                not X1 == X4 |( X1 == X4 & not Y1 == Y4)
            )&
            (
                not X2 == X3 |( X2 == X3 & not Y2 == Y3)
            )&
            (
                not X2 == X4 |( X2 == X4 & not Y2 == Y4)
            )&
            (
                not X3 == X4 |( X3 == X4 & not Y3 == Y4)
            )&
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
	+!amIDefenseMilieu :
			myPos(X, Y) &
			askForRole(X1, Y1) & 
			askForRole(X2, Y2) &
            askForRole(X3, Y3) &
            askForRole(X4, Y4) &
			(
				not X1 == X2 | (X1 == X2 & not Y1 == Y2) 
			)&
            (
                not X1 == X3 |( X1 == X3 & not Y1 == Y3)
            )&
            (
                not X1 == X4 |( X1 == X4 & not Y1 == Y4)
            )&
            (
                not X2 == X3 |( X2 == X3 & not Y2 == Y3)
            )&
            (
                not X2 == X4 |( X2 == X4 & not Y2 == Y4)
            )&
            (
                not X3 == X4 |( X3 == X4 & not Y3 == Y4)
            ).
	+!amIDefenseMilieu <- !amIDefenseMilieu.
			
	//Cas defense Bas
	+!amIDefenseBas :
			myPos(X, Y) &
			askForRole(X1, Y1) & 
			askForRole(X2, Y2) &
            askForRole(X3, Y3) &
            askForRole(X4, Y4) &
			(
				not X1 == X2 | (X1 == X2 & not Y1 == Y2) 
			)&
            (
                not X1 == X3 |( X1 == X3 & not Y1 == Y3)
            )&
            (
                not X1 == X4 |( X1 == X4 & not Y1 == Y4)
            )&
            (
                not X2 == X3 |( X2 == X3 & not Y2 == Y3)
            )&
            (
                not X2 == X4 |( X2 == X4 & not Y2 == Y4)
            )&
            (
                not X3 == X4 |( X3 == X4 & not Y3 == Y4)
            )&
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
	+!amIDefenseBas :
			myPos(X, Y) &
			askForRole(X1, Y1) & 
			askForRole(X2, Y2) &
            askForRole(X3, Y3) &
            askForRole(X4, Y4) &
			(
				not X1 == X2 | (X1 == X2 & not Y1 == Y2) 
			)&
            (
                not X1 == X3 |( X1 == X3 & not Y1 == Y3)
            )&
            (
                not X1 == X4 |( X1 == X4 & not Y1 == Y4)
            )&
            (
                not X2 == X3 |( X2 == X3 & not Y2 == Y3)
            )&
            (
                not X2 == X4 |( X2 == X4 & not Y2 == Y4)
            )&
            (
                not X3 == X4 |( X3 == X4 & not Y3 == Y4)
            ).
	+!amIDefenseBas <- !amIDefenseBas.
    
    //Cas protecteur
	+!amIProtecteur :
			myPos(X, Y) &
			askForRole(X1, Y1) & 
			askForRole(X2, Y2) &
            askForRole(X3, Y3) &
            askForRole(X4, Y4) &
			(
				not X1 == X2 | (X1 == X2 & not Y1 == Y2) 
			)&
            (
                not X1 == X3 |( X1 == X3 & not Y1 == Y3)
            )&
            (
                not X1 == X4 |( X1 == X4 & not Y1 == Y4)
            )&
            (
                not X2 == X3 |( X2 == X3 & not Y2 == Y3)
            )&
            (
                not X2 == X4 |( X2 == X4 & not Y2 == Y4)
            )&
            (
                not X3 == X4 |( X3 == X4 & not Y3 == Y4)
            )&
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
	+!amIProtecteur :
			myPos(X, Y) &
			askForRole(X1, Y1) & 
			askForRole(X2, Y2) &
            askForRole(X3, Y3) &
            askForRole(X4, Y4) &
			(
				not X1 == X2 | (X1 == X2 & not Y1 == Y2) 
			)&
            (
                not X1 == X3 |( X1 == X3 & not Y1 == Y3)
            )&
            (
                not X1 == X4 |( X1 == X4 & not Y1 == Y4)
            )&
            (
                not X2 == X3 |( X2 == X3 & not Y2 == Y3)
            )&
            (
                not X2 == X4 |( X2 == X4 & not Y2 == Y4)
            )&
            (
                not X3 == X4 |( X3 == X4 & not Y3 == Y4)
            ).
	+!amIProtecteur <- !amIProtecteur.
    
    //Cas eclaireur
	+!amIEclaireur :
			myPos(X, Y) &
			askForRole(X1, Y1) & 
			askForRole(X2, Y2) &
            askForRole(X3, Y3) &
            askForRole(X4, Y4) &
			(
				not X1 == X2 | (X1 == X2 & not Y1 == Y2) 
			)&
            (
                not X1 == X3 |( X1 == X3 & not Y1 == Y3)
            )&
            (
                not X1 == X4 |( X1 == X4 & not Y1 == Y4)
            )&
            (
                not X2 == X3 |( X2 == X3 & not Y2 == Y3)
            )&
            (
                not X2 == X4 |( X2 == X4 & not Y2 == Y4)
            )&
            (
                not X3 == X4 |( X3 == X4 & not Y3 == Y4)
            )&
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
	+!amIEclaireur :
			myPos(X, Y) &
			askForRole(X1, Y1) & 
			askForRole(X2, Y2) &
            askForRole(X3, Y3) &
            askForRole(X4, Y4) &
			(
				not X1 == X2 | (X1 == X2 & not Y1 == Y2) 
			)&
            (
                not X1 == X3 |( X1 == X3 & not Y1 == Y3)
            )&
            (
                not X1 == X4 |( X1 == X4 & not Y1 == Y4)
            )&
            (
                not X2 == X3 |( X2 == X3 & not Y2 == Y3)
            )&
            (
                not X2 == X4 |( X2 == X4 & not Y2 == Y4)
            )&
            (
                not X3 == X4 |( X3 == X4 & not Y3 == Y4)
            ).
	+!amIEclaireur <- !amIEclaireur.


//Definition des goDirectionnels
	+!goLeft : myPos(MYX,MYY) & pos(MYX-1,MYY,empty) <- left.
	+!goLeft : myPos(MYX,MYY) & (not pos(MYX-1,MYY,empty)) <- !goDown.
	+!goUp : myPos(MYX,MYY) & pos(MYX,MYY-1,empty) <- up;.
	+!goUp : myPos(MYX,MYY) & (not pos(MYX,MYY-1,empty)) <- !goRight.
	+!goRight : myPos(MYX,MYY) & pos(MYX+1,MYY,empty) <- right.
	+!goRight : myPos(MYX,MYY) & (not pos(MYX+1,MYY,empty)) <- !goDown.
	+!goDown : myPos(MYX,MYY) & pos(MYX,MYY+1,empty) <- down.
	+!goDown : myPos(MYX,MYY) & (not pos(MYX,MYY+1,empty)) <- !goRight.
				
//Definition mise en position
	//Placement horizontal
	+!placementCentreH :
				myPos(XA, YA) &
				XA < 7
			<-
				!goRight;
				!placementCentreH.
	+!placementCentreH :
				myPos(XA, YA) &
				XA > 7
			<-
				!goLeft;
				!placementCentreH.
	+!placementCentreH.
			
	//Placement Haut
	+!placementHaut :
				myPos(XA, YA) &
				YA < 3
			<-
				!goDown;
				!placementHaut.
	+!placementHaut :
				myPos(XA, YA) &
				YA > 5
			<-
				!goUp;
				!placementHaut.
	+!placementHaut :
				myPos(XA, YA) &
				YA == 5
			<-
				+monte.
	+!placementHaut :
				myPos(XA, YA) &
				YA == 4
			<-
				+monte.
	+!placementHaut :
				myPos(XA, YA) &
				YA == 3
			<-
				+descente.
	
	//Placement Milieu
	+!placementMilieu :
				myPos(XA, YA) &
				YA < 10
			<-
				!goDown;
				!placementMilieu.
	+!placementMilieu :
				myPos(XA, YA) &
				YA > 11
			<-
				!goUp;
				!placementMilieu.
	+!placementMilieu :
				myPos(XA, YA) &
				YA == 10
			<-
				+descente.
	+!placementMilieu :
				myPos(XA, YA) &
				YA == 11
			<-
				+monte.
				
	//Placement Bas
	+!placementBas :
				myPos(XA, YA) &
				YA < 16
			<-
				!goDown;
				!placementBas.
	+!placementBas :
				myPos(XA, YA) &
				YA > 18
			<-
				!goUp;
				!placementBas.
	+!placementBas:
				myPos(XA, YA) &
				YA == 18
			<-
				+monte.
	+!placementBas:
				myPos(XA, YA) &
				YA == 17 
			<-
				+monte.
	+!placementBas:
				myPos(XA, YA) &
				YA == 16 
			<-
				+descente.
			

//Defense haute
	//Si placement  H mauvais
	+!defenseHaut : 
				myPos(XA, YA) &
				not XA == 7 
			<-
				!placementCentreH;
				!defenseHaut.
	//Si hors zone de couverture
	+!defenseHaut : 
				myPos(XA, YA) &
				not monte &
				not descente
			<-
				!placementHaut;
				!defenseHaut.
	+!defenseHaut : 
				monte &
				myPos(XA, YA) &
				YA == 3
			<-
				-monte;
				+descente;
				!goDown;
				!defenseHaut.
	+!defenseHaut :
				monte &
				myPos(XA, YA) 
			<-
				!goUp;
				!defenseHaut.

	+!defenseHaut : 
				descente &
				myPos(XA, YA) &
				YA == 5
			<-
				-descente;
				+monte;
				!goUp;
				!defenseHaut.
	+!defenseHaut : 
				descente &
				myPos(XA, YA) 
			<-
				!goDown;
				!defenseHaut.

//Defense milieu
	//Si placement  H mauvais
	+!defenseMilieu : 
				myPos(XA, YA) &
				not XA == 7 
			<-
				!placementCentreH;
				!defenseMilieu.
	//Si hors zone de couverture
	+!defenseMilieu : 
				myPos(XA, YA) &
				not monte &
				not descente
			<-
				!placementMilieu;
				!defenseMilieu.
	+!defenseMilieu : 
				monte &
				myPos(XA, YA) &
				YA == 10
			<-
				-monte;
				+descente;
				!goDown;
				!defenseMilieu.
	+!defenseMilieu :
				monte &
				myPos(XA, YA) 
			<-
				!goUp;
				!defenseMilieu.

	+!defenseMilieu : 
				descente &
				myPos(XA, YA) &
				YA == 11
			<-
				-descente;
				+monte;
				!goUp;
				!defenseMilieu.
	+!defenseMilieu : 
				descente &
				myPos(XA, YA) 
			<-
				!goDown;
				!defenseMilieu.

//Defense bas
	//Si placement  H mauvais
	+!defenseBas : 
				myPos(XA, YA) &
				not XA == 7 
			<-
				!placementCentreH;
				!defenseBas.
	//Si hors zone de couverture
	+!defenseBas : 
				myPos(XA, YA) &
				not monte &
				not descente
			<-
				!placementBas;
				!defenseBas.
	+!defenseBas : 
				monte &
				myPos(XA, YA) &
				YA == 16
			<-
				-monte;
				+descente;
				!goDown;
				!defenseBas.
	+!defenseBas :
				monte &
				myPos(XA, YA) 
			<-
				!goUp;
				!defenseBas.

	+!defenseBas : 
				descente &
				myPos(XA, YA) &
				YA == 18
			<-
				-descente;
				+monte;
				!goUp;
				!defenseBas.
	+!defenseBas : 
				descente &
				myPos(XA, YA) 
			<-
				!goDown;
				!defenseBas.
                
//Protecteur
    +!protecteur <- !protecteur.
    
//Eclaireur
    +!eclaireur <- !eclaireur.

