//askForRole

//leftFlag
//rightFlag

//leftBoundariesFound
//rightBoundariesFound

//myInitialPos

//nbVie

//ylmax
//ylmin
//yrmax
//yrmin
//yHautMin
//yHautMax
//yMilieuMin
//yMilieuMax
//yBasMin
//yBasMax

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
+pos(X, Y, redFlag) : X<11 & not leftFlag(X, Y) <- +leftFlag(X, Y); .broadcast(tell, leftFlag(X, Y)).
+pos(X, Y, blueFlag) : X<11 & not leftFlag(X, Y) <- +leftFlag(X, Y); .broadcast(tell, leftFlag(X, Y)).
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
                        +pos(X, Y, redFlag) : X>11 & not rightFlag(X, Y) <- +rightFlag(X, Y); .broadcast(tell, rightFlag(X, Y)).
                        +pos(X, Y, blueFlag) : X>11 & not rightFlag(X, Y) <- +rightFlag(X, Y); .broadcast(tell, rightFlag(X, Y)).
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
    left;
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
    left;
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
    left;
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
    left;
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
    left;
    +nbVie(1); 
    !pseudoEclaireur.
    +!whatsMyRole : myPos(MYX,MYY) & pos(MYX-1,MYY,empty) <- left; !whatsMyRole.
    +!whatsMyRole : myPos(MYX,MYY) & not pos(MYX-1,MYY,empty) & pos(MYX,MYY-1,empty) <- down; !whatsMyRole.
    +!whatsMyRole : myPos(MYX,MYY) & not pos(MYX-1,MYY,empty) & pos(MYX,MYY+1,empty) <- up; !whatsMyRole.
    +!whatsMyRole : myPos(MYX,MYY) & not pos(MYX-1,MYY,empty) & not pos(MYX,MYY+1,empty) & not pos(MYX,MYY-1,empty) <- hold; !whatsMyRole.


//Definition des goDirectionnels
    +!goLeft :not dead & myPos(MYX,MYY) & pos(MYX-1,MYY,empty) <- left.
    +!goLeft :not dead & myPos(MYX,MYY) & not pos(MYX-1,MYY,empty) & pos(MYX, MYY+1, empty)<- down.
    +!goLeft :not dead & myPos(MYX,MYY) & not pos(MYX-1,MYY,empty) & pos(MYX, MYY-1, empty)<- up.

    +!goUp :not dead & myPos(MYX,MYY) & pos(MYX,MYY-1,empty) <- up.
    +!goUp :not dead & myPos(MYX,MYY) & not pos(MYX,MYY-1,empty) & pos(MYX-1, MYY, empty) <- left.
    +!goUp :not dead & myPos(MYX,MYY) & not pos(MYX,MYY-1,empty) & pos(MYX+1, MYY, empty) <- right.

    +!goRight :not dead & myPos(MYX,MYY) & pos(MYX+1,MYY,empty) <- -moveInProgress; right.
    +!goRight :not dead & myPos(MYX,MYY) & not pos(MYX+1,MYY,empty) & pos(MYX, MYY-1, empty) <- up.
    +!goRight :not dead & myPos(MYX,MYY) & not pos(MYX+1,MYY,empty) & pos(MYX, MYY+1, empty) <- down.

    +!goDown :not dead & myPos(MYX,MYY) & pos(MYX,MYY+1,empty) <- -moveInProgress; down.
    +!goDown :not dead & myPos(MYX,MYY) & not pos(MYX,MYY+1,empty) & pos(MYX+1, MYY, empty) <- right.
    +!goDown :not dead & myPos(MYX,MYY) & not pos(MYX,MYY+1,empty) & pos(MYX-1, MYY, empty) <- left.

//Defense haut
    +!defenseHaut : leftBoundariesFound & rightBoundariesFound <- .print("OVER"); !getMyPair.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & dead <- -enAttaque(_, _); -moveInProgress; -monte; -descente; enter; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & X>11 <- -enAttaque(_, _); !goLeft; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & X<10 <- -enAttaque(_, _); !goRight; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==11|X==10) & Y>YHMA <- -enAttaque(_, _); !goUp; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==11|X==10) & Y<YHMI <- -enAttaque(_, _); !goDown; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==11|X==10) & Y==YHMI & not monte & not descente <- -enAttaque(_, _); +descente; !goDown; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==11|X==10) & not Y==YHMI & not monte & not descente <- -enAttaque(_, _); +monte; !goUp; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==11|X==10) & monte & not Y==YHMI <- -enAttaque(_, _); !goUp; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==11|X==10) & monte & Y==YHMI <- -enAttaque(_, _); -monte; +descente; !goDown; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==11|X==10) & descente & not Y==YHMA <- -enAttaque(_, _); !goDown; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==11|X==10) & descente & Y==YHMA <- -enAttaque(_, _); -descente; +monte; !goUp; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not dead & not pos(_, _, blueAgent) <- -enAttaque(_, _); !defenseHaut.
    //Attaque
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_, _) & pos(XE, YE, blueAgent) & myPos(X, Y) & YE<Y <- +enAttaque(XE, YE); up; .print("Attaaaaaaaque"); !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_, _) & pos(XE, YE, blueAgent) & myPos(X, Y) & YE>Y <- +enAttaque(XE, YE); down; .print("Attaaaaaaaque"); !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_, _) & pos(XE, YE, blueAgent) & myPos(X, Y) & YE==Y <- +enAttaque(XE, YE); hold; .print("Attaaaaaaaque"); !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(XE, YE) & myPos(X, Y) & YE==Y & XE<X <- !goLeft; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(XE, YE) & myPos(X, Y) & YE==Y & XE>X <- !goRight; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(XE, YE) & myPos(X, Y) & YE<Y <- up; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(XE, YE) & myPos(X, Y) & YE>Y <-  down; !defenseHaut.

//Defense milieu
    +!defenseMilieu : leftBoundariesFound & rightBoundariesFound <- .print("OVER"); !getMyPair.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & dead <- -enAttaque(_, _); -moveInProgress; enter; +nbVie(0); +forcedEclaireur; !pseudoEclaireur.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & X>11 <- -enAttaque(_, _); !goLeft; !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & X<10 <- -enAttaque(_, _); !goRight; !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yMilieuMax(YMMA) & (X==11|X==10) & Y>=YMMA <- -enAttaque(_, _); !goUp; !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yMilieuMin(YMMI) & (X==11|X==10) & Y<=YMMI <- -enAttaque(_, _); !goDown; !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not dead & not pos(_, _, blueAgent) <- -enAttaque(_, _); !defenseMilieu.
    //Attaque
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_, _) & pos(XE, YE, blueAgent) & myPos(X, Y) & YE<Y <- +enAttaque(XE, YE); up; .print("Attaaaaaaaque"); !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_, _) & pos(XE, YE, blueAgent) & myPos(X, Y) & YE>Y <- +enAttaque(XE, YE); down; .print("Attaaaaaaaque"); !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_, _) & pos(XE, YE, blueAgent) & myPos(X, Y) & YE==Y <- +enAttaque(XE, YE); hold; .print("Attaaaaaaaque"); !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(XE, YE) & myPos(X, Y) & YE==Y & XE<X <- !goLeft; !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(XE, YE) & myPos(X, Y) & YE==Y & XE>X <- !goRight; !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(XE, YE) & myPos(X, Y) & YE<Y <- up; !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(XE, YE) & myPos(X, Y) & YE>Y <-  down; !defenseMilieu.

//Defense bas
    +!defenseBas : leftBoundariesFound & rightBoundariesFound <- .print("OVER"); !getMyPair.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & dead <- -moveInProgress; -monte; -descente; enter; !defenseBas.				
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & X<10 <- !goRight; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & X>11 <- !goLeft; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==10|X==11) & Y>YBMA <- !goUp; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==10|X==11) & Y<YBMI <- !goDown; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==10|X==11) & Y==YBMI & not monte & not descente <- +descente; !goDown; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==10|X==11) & not Y==YBMI & not monte & not descente <- +monte; !goUp; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==10|X==11) & monte & not Y==YBMI <- !goUp; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==10|X==11) & monte & Y==YBMI <- -monte; +descente; !goDown; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==10|X==11) & descente & not Y==YBMA <- !goDown; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, blueAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==10|X==11) & descente & Y==YBMA <- -descente; +monte; !goUp; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not dead & not pos(_, _, blueAgent) <- !defenseBas.
    //Attaque
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_) & pos(XE, YE, blueAgent) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; .print("Attaaaaaaaque"); !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_) & pos(XE, YE, blueAgent) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; .print("Attaaaaaaaque"); !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_) & pos(XE, YE, blueAgent) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; .print("Attaaaaaaaque"); !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(YE) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(YE) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(YE) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & dead <- -enAttaque(_, _); -moveInProgress; -monte; -descente; enter; !defenseBas.

//Eclaireur
    +!eclaireur: leftBoundariesFound & rightBoundariesFound & iAmEclaireur <- .print("OVER"); !getMyPair.
    //Renaissance
    +!eclaireur : iAmEclaireur & (not leftBoundariesFound | not rightBoundariesFound ) & dead <- -moveInProgress; -monte; -descente; enter; !eclaireur.
    +!eclaireur : iAmProtecteur & leftBoundariesFound & rightBoundariesFound & dead <- -monte; -descente; -moveInProgress; enter; !profiteur.
    //Flag adverse hors de portee
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & pos(XF, YF, blueFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==2 & X==4 <- !goLeft; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & pos(XF, YF, blueFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==5 & X==3 <- !goRight; !eclaireur.
    //Trop a droite, trop a gauche
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & X<3-1 <- !goRight; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & X>4+1 <- !goLeft; !eclaireur.
    //Trop en haut, trop en bas
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & ylmax(YM) & Y>YM <- +monte; !goUp; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & ylmin(YM) & Y<YM <- +descente; !goDown; !eclaireur.
    //Apparition
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & ylmin(YM) & not Y==YM <- +monte; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & ylmin(YM) & Y==YM <- +descente; !eclaireur.
    //Deplacement colonne droite
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & pos(X,Y-1,empty) & X==4 & monte & ylmin(YM) & not Y==YM <- up; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==4 & monte & ylmin(YM) & not Y==YM <- right; up; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & pos(X-1,Y,empty) & X==4 & monte & ylmin(YM) & Y==YM <- -monte; +descente; left; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==4 & monte & ylmin(YM) & Y==YM <- -monte; +descente; down; !eclaireur.
    //Deplacement colonne extrême droite
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & pos(X-1,Y,empty) & X==5 <- left; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==5 & monte & ylmin(YM) & Y==YM <- -monte; +descente; down; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==5 & monte & ylmin(YM) & not Y==YM <- up; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==5 & descente & ylmax(YM) & Y==YM <- -descente; +monte; down; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==5 & descente & ylmax(YM) & not Y==YM <- down; !eclaireur.
    //Deplacement colonne gauche
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & pos(X,Y+1,empty) & X==3 & descente & ylmax(YM) & not Y==YM <- down; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==3 & descente & ylmax(YM) & not Y==YM <- left; down; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & pos(X+1,Y,empty) & X==3 & descente & ylmax(YM) & Y==YM <- -descente; +monte; right; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==3 & descente & ylmax(YM) & Y==YM <- -descente; +monte; up; !eclaireur.
    //Deplacement colonne extrême gauche
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & pos(X+1,Y,empty) & X==2 <- right; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==2 & monte & ylmin(YM) & Y==YM <- -monte; +descente; down; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==2 & monte & ylmin(YM) & not Y==YM <- up; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==2 & descente & ylmax(YM) & Y==YM <- -descente; +monte; down; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==2 & descente & ylmax(YM) & not Y==YM <- down; !eclaireur.
    //Mauvaise colonne
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & pos(X+1,Y,empty) & X==3 & monte & ylmin(YM) & not Y==YM <- right; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==3 & monte & ylmin(YM) & not Y==YM <- up; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & pos(X-1,Y,empty) & X==4 & descente & ylmax(YM) & not Y==YM <- left; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==4 & descente & ylmax(YM) & not Y==YM <- down; !eclaireur.
    //Else
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur) & not dead <- !eclaireur.


    //Protecteur
    //Renaissance
    +!protecteur : (not leftBoundariesFound | not rightBoundariesFound) & dead <- -monte; -descente; -moveInProgress; enter; !protecteur.
    +!protecteur : leftBoundariesFound & rightBoundariesFound & dead <- -monte; -descente; -moveInProgress; enter; !profiteur.
    //Flag adverse hors de portee
    +!protecteur : not moveInProgress & not dead & pos(XF, YF, blueFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==13 & X==15 <- left; !protecteur.
    +!protecteur : not moveInProgress & not dead & pos(XF, YF, blueFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==17 & X==15 <- right; !protecteur.
    //Trop a droite, trop a gauche
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & X<14 <- !goRight; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & X>16 <- !goLeft; !protecteur.
    //Trop en haut, trop en bas
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & yrmax(YM) & Y>YM <- +monte; !goUp; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & yrmin(YM) & Y<YM <- +descente; !goDown; !protecteur.
    //Apparition
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & yrmin(YM) & not Y==YM & not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- +monte; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & yrmin(YM) & Y==YM & not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- +descente; !protecteur.
    //Recentrage
    +!protecteur : not moveInProgress & not dead & myPos(14, Y) & pos(15,Y,empty) & not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(16, Y) & pos(15,Y,empty) & not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; !protecteur.
    //Deplacement
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y-1,empty) & monte & yrmin(YM) & not Y==YM & not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- up; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y+1,empty) & monte & yrmin(YM) & Y==YM & not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -monte; +descente; down; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y+1,empty) & descente & yrmax(YM) & not Y==YM & not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- down; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y-1,empty) & descente & yrmax(YM) & Y==YM & not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -descente; +monte; up; !protecteur.
    //Pas au centre, mais pas le choix
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y-1,empty) & not pos(15,Y,empty) & monte & yrmin(YM) & not Y==YM &  not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- up; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y+1,empty) & not pos(15,Y,empty) & monte & yrmin(YM) & Y==YM &  not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -monte; +descente; down; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y+1,empty) & not pos(15,Y,empty) & descente & yrmax(YM) & not Y==YM &  not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- down; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not X==15 & pos(X,Y-1,empty) & not pos(15,Y,empty) & descente & yrmax(YM) & Y==YM &  not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -descente; +monte; up; !protecteur.
    //Evitement, colonne droite
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==14 & monte &  not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; up; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==14 & descente &  not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; down; !protecteur.
    //Evitement, colonne milieu
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==15 & monte &  not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; up; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==15 & descente &  not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; down; !protecteur.
    //Evitement, colonne gauche
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==16 & monte &  not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; up; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==16 & descente &  not ( pos(XF, YF, blueFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; down; !protecteur.
    //Else
    +!protecteur : not dead <- !protecteur.

    //PseudoEclaireur
    //Perte de vie
    +!pseudoEclaireur : dead & nbVie(X) & not X==0 <- -monte; -descente; -nbVie(X); +nbVie(X-1); -moveInProgress; enter; !pseudoEclaireur.
        //Renaissance protecteur
        +!pseudoEclaireur : dead & iAmProtecteur & nbVie(X) & X==0 <- -monte; -descente; -nbVie(X); -moveInProgress; enter; !protecteur.
        +!pseudoEclaireur : (leftBoundariesFound & not forcedEclaireur) & iAmProtecteur <- -moveInProgress; !protecteur.
        //Renaissance defenseHaut
        +!pseudoEclaireur : dead & iAmDefenseHaut & nbVie(X) & X==0 <- -monte; -descente; -nbVie(X); -moveInProgress; enter; !defenseHaut.
        +!pseudoEclaireur : (leftBoundariesFound & not forcedEclaireur) & iAmDefenseHaut <- -moveInProgress; !defenseHaut.
        //Renaissance defenseMilieu
        +!pseudoEclaireur : dead & iAmDefenseMilieu & nbVie(X) & X==0 <- -monte; -descente; -nbVie(X); -moveInProgress; enter; !defenseMilieu.
        +!pseudoEclaireur : (leftBoundariesFound & not forcedEclaireur) & iAmDefenseMilieu <- -moveInProgress; !defenseMilieu.
        //Renaissance defenseBas
        +!pseudoEclaireur : dead & iAmDefenseBas & nbVie(X) & X==0 <- -monte; -descente; -nbVie(X); -moveInProgress; enter; !defenseBas.
        +!pseudoEclaireur : (leftBoundariesFound & not forcedEclaireur) & iAmDefenseBas <- -moveInProgress; !defenseBas.

    //Flag adverse hors de portee
    +!pseudoEclaireur : not moveInProgress & not dead & pos(XF, YF, blueFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==2 & X==4 <- !goLeft; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & pos(XF, YF, blueFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==5 & X==3 <- !goRight; !pseudoEclaireur.
    //Trop a droite, trop a gauche
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & X<3-1 <- !goRight; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & X>4+1 <- !goLeft; !pseudoEclaireur.
    //Trop en haut, trop en bas
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & ylmax(YM) & Y>YM <- +monte; !goUp; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & ylmin(YM) & Y<YM <- +descente; !goDown; !pseudoEclaireur.
    //Apparition
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & ylmin(YM) & not Y==YM <- +monte; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & ylmin(YM) & Y==YM <- +descente; !pseudoEclaireur.
    //Deplacement colonne droite
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & pos(X,Y-1,empty) & X==4 & monte & ylmin(YM) & not Y==YM <- up; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==4 & monte & ylmin(YM) & not Y==YM <- right; up; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & pos(X-1,Y,empty) & X==4 & monte & ylmin(YM) & Y==YM <- -monte; +descente; left; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==4 & monte & ylmin(YM) & Y==YM <- -monte; +descente; down; !pseudoEclaireur.
    //Deplacement colonne extrême droite
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & pos(X-1,Y,empty) & X==5 <- left; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==5 & monte & ylmin(YM) & Y==YM <- -monte; +descente; down; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==5 & monte & ylmin(YM) & not Y==YM <- up; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==5 & descente & ylmax(YM) & Y==YM <- -descente; +monte; down; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==5 & descente & ylmax(YM) & not Y==YM <- down; !pseudoEclaireur.
    //Deplacement colonne gauche
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & pos(X,Y+1,empty) & X==3 & descente & ylmax(YM) & not Y==YM <- down; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==3 & descente & ylmax(YM) & not Y==YM <- left; down; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & pos(X+1,Y,empty) & X==3 & descente & ylmax(YM) & Y==YM <- -descente; +monte; right; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==3 & descente & ylmax(YM) & Y==YM <- -descente; +monte; up; !pseudoEclaireur.
    //Deplacement colonne extrême gauche
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & pos(X+1,Y,empty) & X==2 <- right; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==2 & monte & ylmin(YM) & Y==YM <- -monte; +descente; down; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==2 & monte & ylmin(YM) & not Y==YM <- up; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==2 & descente & ylmax(YM) & Y==YM <- -descente; +monte; down; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==2 & descente & ylmax(YM) & not Y==YM <- down; !pseudoEclaireur.
    //Mauvaise colonne
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & pos(X+1,Y,empty) & X==3 & monte & ylmin(YM) & not Y==YM <- right; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==3 & monte & ylmin(YM) & not Y==YM <- up; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & pos(X-1,Y,empty) & X==4 & descente & ylmax(YM) & not Y==YM <- left; !pseudoEclaireur.
    +!pseudoEclaireur : not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==4 & descente & ylmax(YM) & not Y==YM <- down; !pseudoEclaireur.
    //Else
    +!pseudoEclaireur : not dead <- !pseudoEclaireur.


    +!getMyPair : iAmDefenseHaut & leftFlag(XL1, YL1) & leftFlag(XL2, YL2) & leftFlag(XL3, YL3) & leftFlag(XL4, YL4) & rightFlag(XR1, YR1) & rightFlag(XR2, YR2) & rightFlag(XR3, YR3) & rightFlag(XR4, YR4) &
            (not XL1 == XL2 | (XL1 == XL2 & not YL1 == YL2))&(not XL1 == XL3 |( XL1 == XL3 & not YL1 == YL3))&(not XL1 == XL4 |( XL1 == XL4 & not YL1 == YL4))&(not XL2 == XL3 |( XL2 == XL3 & not YL2 == YL3) )&(not XL2 == XL4 |( XL2 == XL4 & not YL2 == YL4))&(not XL3 == XL4 |( XL3 == XL4 & not YL3 == YL4)) &
            (not XR1 == XR2 | (XR1 == XR2 & not YR1 == YR2))&(not XR1 == XR3 |( XR1 == XR3 & not YR1 == YR3))&(not XR1 == XR4 |( XR1 == XR4 & not YR1 == YR4))&(not XR2 == XR3 |( XR2 == XR3 & not YR2 == YR3) )&(not XR2 == XR4 |( XR2 == XR4 & not YR2 == YR4))&(not XR3 == XR4 |( XR3 == XR4 & not YR3 == YR4)) &
            (
             YL1 > YL2 |
             (YL1 == YL2 & XL1 > XL2)
            )&
            (
             YL1 > YL3 |
             (YL1 == YL3 & XL1 > XL3)
            )&
            (
             YL1 > YL4 |
             (YL1 == YL4 & XL1 > XL4)
            )&
            (
             YR1 > YR2 |
             (YR1 == YR2 & XR1 > XR2)
            )&
            (
             YR1 > YR3 |
             (YR1 == YR3 & XR1 > XR3)
            )&
            (
             YR1 > YR4 |
             (YR1 == YR4 & XR1 > XR4)
            )
        <-  +target1(XL1, YL1);
            +target2(XR1, YR1);
            !goTarget1.
    +!getMyPair : iAmDefenseMilieu & leftFlag(XL1, YL1) & leftFlag(XL2, YL2) & leftFlag(XL3, YL3) & leftFlag(XL4, YL4) & rightFlag(XR1, YR1) & rightFlag(XR2, YR2) & rightFlag(XR3, YR3) & rightFlag(XR4, YR4) &
            (not XL1 == XL2 | (XL1 == XL2 & not YL1 == YL2))&(not XL1 == XL3 |( XL1 == XL3 & not YL1 == YL3))&(not XL1 == XL4 |( XL1 == XL4 & not YL1 == YL4))&(not XL2 == XL3 |( XL2 == XL3 & not YL2 == YL3) )&(not XL2 == XL4 |( XL2 == XL4 & not YL2 == YL4))&(not XL3 == XL4 |( XL3 == XL4 & not YL3 == YL4)) &
            (not XR1 == XR2 | (XR1 == XR2 & not YR1 == YR2))&(not XR1 == XR3 |( XR1 == XR3 & not YR1 == YR3))&(not XR1 == XR4 |( XR1 == XR4 & not YR1 == YR4))&(not XR2 == XR3 |( XR2 == XR3 & not YR2 == YR3) )&(not XR2 == XR4 |( XR2 == XR4 & not YR2 == YR4))&(not XR3 == XR4 |( XR3 == XR4 & not YR3 == YR4)) &
            (
             YL1 < YL2 |
             (YL1 == YL2 & XL1 < XL2)
            )&
            (
             YL1 > YL3 |
             (YL1 == YL3 & XL1 > XL3)
            )&
            (
             YL1 > YL4 |
             (YL1 == YL4 & XL1 > XL4)
            )&
            (
             YR1 < YR2 |
             (YR1 == YR2 & XR1 < XR2)
            )&
            (
             YR1 > YR3 |
             (YR1 == YR3 & XR1 > XR3)
            )&
            (
             YR1 > YR4 |
             (YR1 == YR4 & XR1 > XR4)
            )
        <-  +target1(XL1, YL1);
            +target2(XR1, YR1);
            !goTarget1.
    +!getMyPair : iAmDefenseBas& leftFlag(XL1, YL1) & leftFlag(XL2, YL2) & leftFlag(XL3, YL3) & leftFlag(XL4, YL4) & rightFlag(XR1, YR1) & rightFlag(XR2, YR2) & rightFlag(XR3, YR3) & rightFlag(XR4, YR4) &
            (not XL1 == XL2 | (XL1 == XL2 & not YL1 == YL2))&(not XL1 == XL3 |( XL1 == XL3 & not YL1 == YL3))&(not XL1 == XL4 |( XL1 == XL4 & not YL1 == YL4))&(not XL2 == XL3 |( XL2 == XL3 & not YL2 == YL3) )&(not XL2 == XL4 |( XL2 == XL4 & not YL2 == YL4))&(not XL3 == XL4 |( XL3 == XL4 & not YL3 == YL4)) &
            (not XR1 == XR2 | (XR1 == XR2 & not YR1 == YR2))&(not XR1 == XR3 |( XR1 == XR3 & not YR1 == YR3))&(not XR1 == XR4 |( XR1 == XR4 & not YR1 == YR4))&(not XR2 == XR3 |( XR2 == XR3 & not YR2 == YR3) )&(not XR2 == XR4 |( XR2 == XR4 & not YR2 == YR4))&(not XR3 == XR4 |( XR3 == XR4 & not YR3 == YR4)) &
            (
             YL1 < YL2 |
             (YL1 == YL2 & XL1 < XL2)
            )&
            (
             YL1 < YL3 |
             (YL1 == YL3 & XL1 < XL3)
            )&
            (
             YL1 > YL4 |
             (YL1 == YL4 & XL1 > XL4)
            )&
            (
             YR1 < YR2 |
             (YR1 == YR2 & XR1 < XR2)
            )&
            (
             YR1 < YR3 |
             (YR1 == YR3 & XR1 < XR3)
            )&
            (
             YR1 > YR4 |
             (YR1 == YR4 & XR1 > XR4)
            )
        <-  +target1(XL1, YL1);
            +target2(XR1, YR1);
            !goTarget1.
    +!getMyPair : iAmEclaireur & leftFlag(XL1, YL1) & leftFlag(XL2, YL2) & leftFlag(XL3, YL3) & leftFlag(XL4, YL4) & rightFlag(XR1, YR1) & rightFlag(XR2, YR2) & rightFlag(XR3, YR3) & rightFlag(XR4, YR4) &
            (not XL1 == XL2 | (XL1 == XL2 & not YL1 == YL2))&(not XL1 == XL3 |( XL1 == XL3 & not YL1 == YL3))&(not XL1 == XL4 |( XL1 == XL4 & not YL1 == YL4))&(not XL2 == XL3 |( XL2 == XL3 & not YL2 == YL3) )&(not XL2 == XL4 |( XL2 == XL4 & not YL2 == YL4))&(not XL3 == XL4 |( XL3 == XL4 & not YL3 == YL4)) &
            (not XR1 == XR2 | (XR1 == XR2 & not YR1 == YR2))&(not XR1 == XR3 |( XR1 == XR3 & not YR1 == YR3))&(not XR1 == XR4 |( XR1 == XR4 & not YR1 == YR4))&(not XR2 == XR3 |( XR2 == XR3 & not YR2 == YR3) )&(not XR2 == XR4 |( XR2 == XR4 & not YR2 == YR4))&(not XR3 == XR4 |( XR3 == XR4 & not YR3 == YR4)) &
            (
             YL1 < YL2 |
             (YL1 == YL2 & XL1 < XL2)
            )&
            (
             YL1 < YL3 |
             (YL1 == YL3 & XL1 < XL3)
            )&
            (
             YL1 < YL4 |
             (YL1 == YL4 & XL1 < XL4)
            )&
            (
             YR1 < YR2 |
             (YR1 == YR2 & XR1 < XR2)
            )&
            (
             YR1 < YR3 |
             (YR1 == YR3 & XR1 < XR3)
            )&
            (
             YR1 < YR4 |
             (YR1 == YR4 & XR1 < XR4)
            )
        <-  +target1(XL1, YL1);
            +target2(XR1, YR1);
            !goTarget1.


//GoTarget1
    +!goTarget1 : dead <- enter; !goTarget1.
    +!goTarget1 : not dead & target1(X,Y) & myPos(A,B) & A<X-1 & not pos(_, _, blueFlag) <- !goRight ; !goTarget1.
    +!goTarget1 : not dead & target1(X,Y) & myPos(A,B) & B>Y+1 & not pos(_, _, blueFlag) <- !goUp ; !goTarget1.
    +!goTarget1 : not dead & target1(X,Y) & myPos(A,B) & B<Y-1 & not pos(_, _, blueFlag) <- !goDown ; !goTarget1.
    +!goTarget1 : not dead & target1(X,Y) & myPos(A,B) & A>X+1 & not pos(_, _, blueFlag) <- !goLeft ; !goTarget1.

    +!goTarget1 : not dead & pos(X, Y, blueFlag) <- -targetTmp(_, _, _); +targetTmp(X, Y, 1); !goTargetTmp.

    +!goTarget1 : not dead & target1(X,Y) & myPos(A,B) & math.abs(X-A)<2 & math.abs(Y-B)<2 <- !goTarget2.


//GoTarget2
    +!goTarget2 : dead <- enter; !goTarget1.
    +!goTarget2 : not dead & target2(X,Y) & myPos(A,B) & A<X-1 & not pos(_, _, blueFlag) <- !goRight ; !goTarget2.
    +!goTarget2 : not dead & target2(X,Y) & myPos(A,B) & B>Y+1 & not pos(_, _, blueFlag) <- !goUp ; !goTarget2.
    +!goTarget2 : not dead & target2(X,Y) & myPos(A,B) & B<Y-1 & not pos(_, _, blueFlag) <- !goDown ; !goTarget2.
    +!goTarget2 : not dead & target2(X,Y) & myPos(A,B) & A>X+1 & not pos(_, _, blueFlag) <- !goLeft ; !goTarget2.

    +!goTarget2 : not dead & pos(X, Y, blueFlag) <- -targetTmp(_, _, _); +targetTmp(X, Y, 2); !goTargetTmp.

    +!goTarget2 : not dead & target2(X,Y) & myPos(A,B) & math.abs(X-A)<2 & math.abs(Y-B)<2 <- !goTarget1.

//GoTargetTmp
    +!goTargetTmp : dead & targetTmp(X,Y,I) & I==1 <- enter; -target(X,Y,I); !goTarget1.
    +!goTargetTmp : dead & targetTmp(X,Y,I) & I==2 <- enter; -targetTmp(X,Y,I); !goTarget2.
    +!goTargetTmp : not dead & targetTmp(X,Y,I) & myPos(A,B) & A<X-1 <- !goRight ; !goTargetTmp.
    +!goTargetTmp : not dead & targetTmp(X,Y,I) & myPos(A,B) & B>Y+1 <- !goUp ; !goTargetTmp.
    +!goTargetTmp : not dead & targetTmp(X,Y,I) & myPos(A,B) & B<Y-1 <- !goDown ; !goTargetTmp.
    +!goTargetTmp : not dead & targetTmp(X,Y,I) & myPos(A,B) & A>X+1 <- !goLeft ; !goTargetTmp.

    +!goTargetTmp : not dead & targetTmp(X,Y,I) & I==1 & myPos(A,B) & math.abs(X-A)<2 & math.abs(Y-B)<2 <- -targetTmp(X,Y,I);!goTarget1.
    +!goTargetTmp : not dead & targetTmp(X,Y,I) & I==2 & myPos(A,B) & math.abs(X-A)<2 & math.abs(Y-B)<2 <- -targetTmp(X,Y,I);!goTarget2.


//Profiteur
    +!profiteur:myPos(X, Y) & X<10 <- !eclaireur.
    +!profiteur:myPos(X, Y) & X>=10 <- !protecteur.
    +!profiteur <- !profiteur.
