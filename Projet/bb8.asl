//askForRole_bb8

//leftFlag_bb8
//rightFlag_bb8

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

//target1
//target2
//targetTmp

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
+pos(X, Y, blueFlag) : X<7 & not leftFlag_bb8(X, Y) <- +leftFlag_bb8(X, Y); .broadcast(tell, leftFlag_bb8(X, Y)).
+pos(X, Y, redFlag) : X<7 & not leftFlag_bb8(X, Y) <- +leftFlag_bb8(X, Y); .broadcast(tell, leftFlag_bb8(X, Y)).
    +leftFlag_bb8(X1, Y1) : not leftBoundariesFound
    & leftFlag_bb8(X2, Y2) & leftFlag_bb8(X3, Y3) & leftFlag_bb8(X4, Y4)
                        & (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
                        & Y1<=Y2 & Y2<=Y3 & Y3<=Y4
                        <- -ylmin(_); -ylmax(_); +ylmin(Y1+1); +ylmax(Y4-1); +leftBoundariesFound.
    +leftFlag_bb8(X1, Y1) : not leftBoundariesFound
    & leftFlag_bb8(X2, Y2) & leftFlag_bb8(X3, Y3) & leftFlag_bb8(X4, Y4)
                        & (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
                        & Y2<=Y1 & Y1<=Y3 & Y3<=Y4
                        <- -ylmin(_); -ylmax(_); +ylmin(Y2+1); +ylmax(Y4-1); +leftBoundariesFound.
    +leftFlag_bb8(X1, Y1) : not leftBoundariesFound
    & leftFlag_bb8(X2, Y2) & leftFlag_bb8(X3, Y3) & leftFlag_bb8(X4, Y4)
                        & (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
                        & Y2<=Y3 & Y3<=Y1 & Y1<=Y4
                        <- -ylmin(_); -ylmax(_); +ylmin(Y2+1); +ylmax(Y4-1); +leftBoundariesFound.
    +leftFlag_bb8(X1, Y1) : not leftBoundariesFound
    & leftFlag_bb8(X2, Y2) & leftFlag_bb8(X3, Y3) & leftFlag_bb8(X4, Y4)
                        & (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
                        & Y2<=Y3 & Y3<=Y4 & Y4<=Y1
                        <- -ylmin(_); -ylmax(_); +ylmin(Y2+1); +ylmax(Y1-1); +leftBoundariesFound.
                        +leftFlag_bb8(X, Y).

                        //A Droite
                        +pos(X, Y, blueFlag) : X>7 & not rightFlag_bb8(X, Y) <- +rightFlag_bb8(X, Y); .broadcast(tell, rightFlag_bb8(X, Y)).
                        +pos(X, Y, redFlag) : X>7 & not rightFlag_bb8(X, Y) <- +rightFlag_bb8(X, Y); .broadcast(tell, rightFlag_bb8(X, Y)).
    +rightFlag_bb8(X1, Y1) : not rightBoundariesFound
    & rightFlag_bb8(X2, Y2) & rightFlag_bb8(X3, Y3) & rightFlag_bb8(X4, Y4)
                         & (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
                         & Y1<=Y2 & Y2<=Y3 & Y3<=Y4
                         <- -yrmin(_); -yrmax(_); +yrmin(Y1+1); +yrmax(Y4-1); +rightBoundariesFound.
    +rightFlag_bb8(X1, Y1) : not rightBoundariesFound
    & rightFlag_bb8(X2, Y2) & rightFlag_bb8(X3, Y3) & rightFlag_bb8(X4, Y4)
                         & (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
                         & Y2<=Y1 & Y1<=Y3 & Y3<=Y4
                         <- -yrmin(_); -yrmax(_); +yrmin(Y2+1); +yrmax(Y4-1); +rightBoundariesFound.
    +rightFlag_bb8(X1, Y1) : not rightBoundariesFound
    & rightFlag_bb8(X2, Y2) & rightFlag_bb8(X3, Y3) & rightFlag_bb8(X4, Y4)
                         & (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
                         & Y2<=Y3 & Y3<=Y1 & Y1<=Y4
                         <- -yrmin(_); -yrmax(_); +yrmin(Y2+1); +yrmax(Y4-1); +rightBoundariesFound.
    +rightFlag_bb8(X1, Y1) : not rightBoundariesFound
    & rightFlag_bb8(X2, Y2) & rightFlag_bb8(X3, Y3) & rightFlag_bb8(X4, Y4)
                         & (not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))
                         & Y2<=Y3 & Y3<=Y4 & Y4<=Y1
                         <- -yrmin(_); -yrmax(_); +yrmin(Y2+1); +yrmax(Y1-1); +rightBoundariesFound.
                         +rightFlag_bb8(X, Y).

                         //Demande de role
                         +!demandeRole :
myPos(X, Y)
    <-
    .broadcast(tell, askForRole_bb8(X, Y));
    +myInitialPos(X, Y);
    !whatsMyRole.

    //Test role
    +!whatsMyRole : myInitialPos(X, Y) & askForRole_bb8(X1, Y1) & askForRole_bb8(X2, Y2) & askForRole_bb8(X3, Y3) & askForRole_bb8(X4, Y4) & (	not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))&
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
    +!whatsMyRole : myInitialPos(X, Y) & askForRole_bb8(X1, Y1) & askForRole_bb8(X2, Y2) & askForRole_bb8(X3, Y3) & askForRole_bb8(X4, Y4) & (	not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))&
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
    +!whatsMyRole : myInitialPos(X, Y) & askForRole_bb8(X1, Y1) & askForRole_bb8(X2, Y2) & askForRole_bb8(X3, Y3) & askForRole_bb8(X4, Y4) & (	not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))&
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
    +!whatsMyRole : myInitialPos(X, Y) & askForRole_bb8(X1, Y1) & askForRole_bb8(X2, Y2) & askForRole_bb8(X3, Y3) & askForRole_bb8(X4, Y4) & (	not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))&
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
    +!whatsMyRole : myInitialPos(X, Y) & askForRole_bb8(X1, Y1) & askForRole_bb8(X2, Y2) & askForRole_bb8(X3, Y3) & askForRole_bb8(X4, Y4) & (	not X1 == X2 | (X1 == X2 & not Y1 == Y2))&(not X1 == X3 |( X1 == X3 & not Y1 == Y3))&(not X1 == X4 |( X1 == X4 & not Y1 == Y4))&(not X2 == X3 |( X2 == X3 & not Y2 == Y3) )&(not X2 == X4 |( X2 == X4 & not Y2 == Y4))&(not X3 == X4 |( X3 == X4 & not Y3 == Y4))&
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
    +!whatsMyRole : myPos(MYX,MYY) & not pos(MYX+1,MYY,empty) & not pos(MYX,MYY+1,empty) & not pos(MYX,MYY-1,empty) <- hold; !whatsMyRole.


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
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & dead <- -moveInProgress; -monte; -descente; enter; !defenseHaut.				
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X<7 <- !goRight; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X>8 <- !goLeft; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==7|X==8) & Y>YHMA <- !goUp; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & Y<YHMI <- !goDown; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & Y==YHMI & not monte & not descente <- +descente; !goDown; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & not Y==YHMI & not monte & not descente <- +monte; !goUp; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & monte & not Y==YHMI <- !goUp; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMin(YHMI) & (X==7|X==8) & monte & Y==YHMI <- -monte; +descente; !goDown; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==7|X==8) & descente & not Y==YHMA <- !goDown; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yHautMax(YHMA) & (X==7|X==8) & descente & Y==YHMA <- -descente; +monte; !goUp; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not dead & not pos(_, _, redAgent) <- !defenseHaut.
    //Attaque
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; .print("Attaaaaaaaque"); !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; .print("Attaaaaaaaque"); !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; .print("Attaaaaaaaque"); !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(YE) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(YE) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; !defenseHaut.
    +!defenseHaut : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(YE) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; !defenseHaut.

    //Defense milieu
    +!defenseMilieu : leftBoundariesFound & rightBoundariesFound <- .print("OVER"); !getMyPair.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & dead <- -enAttaque; -moveInProgress; enter; +nbVie(0); +forcedEclaireur; !pseudoEclaireur.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X<7 <- -enAttaque; !goRight; !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X>8 <- -enAttaque; !goLeft; !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yMilieuMax(YMMA) & (X==7|X==8) & Y>=YMMA <- -enAttaque; !goUp; !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yMilieuMin(YMMI) & (X==7|X==8) & Y<=YMMI <- -enAttaque; !goDown; !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not dead & not pos(_, _, redAgent) <- -enAttaque; !defenseMilieu.
    //Attaque
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; .print("Attaaaaaaaque"); !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; .print("Attaaaaaaaque"); !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; .print("Attaaaaaaaque"); !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(YE) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(YE) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; !defenseMilieu.
    +!defenseMilieu : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(YE) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; !defenseMilieu.

    //Defense bas
    +!defenseBas : leftBoundariesFound & rightBoundariesFound <- .print("OVER"); !getMyPair.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & dead <- -moveInProgress; -monte; -descente; enter; !defenseBas.				
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X<7 <- !goRight; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & X>8 <- !goLeft; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==7|X==8) & Y>YBMA <- !goUp; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & Y<YBMI <- !goDown; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & Y==YBMI & not monte & not descente <- +descente; !goDown; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & not Y==YBMI & not monte & not descente <- +monte; !goUp; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & monte & not Y==YBMI <- !goUp; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMin(YBMI) & (X==7|X==8) & monte & Y==YBMI <- -monte; +descente; !goDown; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==7|X==8) & descente & not Y==YBMA <- !goDown; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not moveInProgress & not dead & not pos(_, _, redAgent) & myPos(X, Y) & yBasMax(YBMA) & (X==7|X==8) & descente & Y==YBMA <- -descente; +monte; !goUp; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not dead & not pos(_, _, redAgent) <- !defenseBas.
    //Attaque
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; .print("Attaaaaaaaque"); !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; .print("Attaaaaaaaque"); !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & not enAttaque(_) & pos(XE, YE, redAgent) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; .print("Attaaaaaaaque"); !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(YE) & myPos(X, Y) & YE==Y <- +enAttaque(YE); hold; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(YE) & myPos(X, Y) & YE<Y <- +enAttaque(YE); up; !defenseBas.
    +!defenseBas : (not leftBoundariesFound | not rightBoundariesFound) & enAttaque(YE) & myPos(X, Y) & YE>Y <- +enAttaque(YE); down; !defenseBas.

    //Protecteur
    //Renaissance
    +!protecteur : (not leftBoundariesFound | not rightBoundariesFound) & dead <- -moveInProgress; -monte; -descente; enter; !protecteur.
    +!protecteur : leftBoundariesFound & rightBoundariesFound & dead <- -monte; -descente; -moveInProgress; enter; !profiteur.
    //Flag adverse hors de portee
    +!protecteur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & XF==2 & X==4 <- !goLeft; !protecteur.
    +!protecteur : not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & XF==5 & X==3 <- !goRight; !protecteur.
    //Trop a droite, trop a gauche
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & X<3-1 <- !goRight; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & X>4+1 <- !goLeft; !protecteur.
    //Trop en haut, trop en bas
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & ylmax(YM) & Y>YM <- +monte; !goUp; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & ylmin(YM) & Y<YM <- +descente; !goDown; !protecteur.
    //Apparition
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & ylmin(YM) & not Y==YM <- +monte; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & ylmin(YM) & Y==YM <- +descente; !protecteur.
    //Deplacement colonne droite
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & pos(X,Y-1,empty) & X==4 & monte & ylmin(YM) & not Y==YM <- up; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==4 & monte & ylmin(YM) & not Y==YM <- right; up; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & pos(X-1,Y,empty) & X==4 & monte & ylmin(YM) & Y==YM <- -monte; +descente; left; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==4 & monte & ylmin(YM) & Y==YM <- -monte; +descente; down; !protecteur.
    //Deplacement colonne extrême droite
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & pos(X-1,Y,empty) & X==5 <- left; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==5 & monte & ylmin(YM) & Y==YM <- -monte; +descente; down; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==5 & monte & ylmin(YM) & not Y==YM <- up; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==5 & descente & ylmax(YM) & Y==YM <- -descente; +monte; down; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==5 & descente & ylmax(YM) & not Y==YM <- down; !protecteur.
    //Deplacement colonne gauche
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & pos(X,Y+1,empty) & X==3 & descente & ylmax(YM) & not Y==YM <- down; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==3 & descente & ylmax(YM) & not Y==YM <- left; down; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & pos(X+1,Y,empty) & X==3 & descente & ylmax(YM) & Y==YM <- -descente; +monte; right; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==3 & descente & ylmax(YM) & Y==YM <- -descente; +monte; up; !protecteur.
    //Deplacement colonne extrême gauche
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & pos(X+1,Y,empty) & X==2 <- right; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==2 & monte & ylmin(YM) & Y==YM <- -monte; +descente; down; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==2 & monte & ylmin(YM) & not Y==YM <- up; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==2 & descente & ylmax(YM) & Y==YM <- -descente; +monte; down; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==2 & descente & ylmax(YM) & not Y==YM <- down; !protecteur.
    //Mauvaise colonne
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & pos(X+1,Y,empty) & X==3 & monte & ylmin(YM) & not Y==YM <- right; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X+1,Y,empty) & X==3 & monte & ylmin(YM) & not Y==YM <- up; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & pos(X-1,Y,empty) & X==4 & descente & ylmax(YM) & not Y==YM <- left; !protecteur.
    +!protecteur : not moveInProgress & not dead & myPos(X, Y) & not pos(X-1,Y,empty) & X==4 & descente & ylmax(YM) & not Y==YM <- down; !protecteur.
    //Else
    +!protecteur : not dead <- !protecteur.


    //Renaissance

    //Eclaireur
    +!eclaireur: leftBoundariesFound & rightBoundariesFound & iAmEclaireur <- .print("OVER"); !getMyPair.
    //Renaissance
    +!eclaireur : iAmEclaireur & (not leftBoundariesFound | not rightBoundariesFound ) & dead <- -moveInProgress; -monte; -descente; enter; !eclaireur.
    +!eclaireur : iAmProtecteur & leftBoundariesFound & rightBoundariesFound & dead <- -monte; -descente; -moveInProgress; enter; !profiteur.
    //Flag adverse hors de portee
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==13 & X==15 <- left; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & pos(XF, YF, redFlag) & myPos(X, Y) & math.abs(YF-Y)<2 & XF==17 & X==15 <- right; !eclaireur.
    //Trop a droite, trop a gauche
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & X<14 <- !goRight; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & X>16 <- !goLeft; !eclaireur.
    //Trop en haut, trop en bas
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & yrmax(YM) & Y>YM <- +monte; !goUp; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & yrmin(YM) & Y<YM <- +descente; !goDown; !eclaireur.
    //Apparition
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & yrmin(YM) & not Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- +monte; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & not monte & not descente & yrmin(YM) & Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- +descente; !eclaireur.
    //Recentrage
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(14, Y) & pos(15,Y,empty) & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(16, Y) & pos(15,Y,empty) & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; !eclaireur.
    //Deplacement
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y-1,empty) & monte & yrmin(YM) & not Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- up; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y+1,empty) & monte & yrmin(YM) & Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -monte; +descente; down; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y+1,empty) & descente & yrmax(YM) & not Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- down; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & X==15 & pos(X,Y-1,empty) & descente & yrmax(YM) & Y==YM & not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -descente; +monte; up; !eclaireur.
    //Pas au centre, mais pas le choix
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & (X==14 | X==16) & pos(X,Y-1,empty) & not pos(15,Y,empty) & monte & yrmin(YM) & not Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- up; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & (X==14 | X==16) & pos(X,Y+1,empty) & not pos(15,Y,empty) & monte & yrmin(YM) & Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -monte; +descente; down; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & (X==14 | X==16) & pos(X,Y+1,empty) & not pos(15,Y,empty) & descente & yrmax(YM) & not Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- down; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & (X==14 | X==16) & pos(X,Y-1,empty) & not pos(15,Y,empty) & descente & yrmax(YM) & Y==YM &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- -descente; +monte; up; !eclaireur.
    //Evitement, colonne droite
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==14 & monte &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; up; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==14 & descente &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; down; !eclaireur.
    //Evitement, colonne milieu
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==15 & monte &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- right; up; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==15 & descente &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; down; !eclaireur.
    //Evitement, colonne gauche
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y-1,empty) & X==16 & monte &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; up; !eclaireur.
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not moveInProgress & not dead & myPos(X, Y) & not pos(X,Y+1,empty) & X==16 & descente &  not ( pos(XF, YF, redFlag) & math.abs(YF-Y)<2 & (XF==13|XF==17) ) <- left; down; !eclaireur.
    //Else
    +!eclaireur : (not leftBoundariesFound | not rightBoundariesFound | iAmProtecteur ) & not dead <- !eclaireur.

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
    +!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & X<14 <- !goRight; !pseudoEclaireur.
    +!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & X>16 <- !goLeft; !pseudoEclaireur.
    //Trop en haut, trop en bas
    +!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & yrmax(YM) & Y>YM <- +monte; !goUp; !pseudoEclaireur.
    +!pseudoEclaireur : ( (not rightBoundariesFound) | forcedEclaireur ) & not moveInProgress & not dead & myPos(X, Y) & yrmin(YM) & Y<YM <- +descente; !goDown; !pseudoEclaireur.
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


    +!getMyPair : iAmDefenseHaut & leftFlag_bb8(XL1, YL1) & leftFlag_bb8(XL2, YL2) & leftFlag_bb8(XL3, YL3) & leftFlag_bb8(XL4, YL4) & rightFlag_bb8(XR1, YR1) & rightFlag_bb8(XR2, YR2) & rightFlag_bb8(XR3, YR3) & rightFlag_bb8(XR4, YR4) &
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
    +!getMyPair : iAmDefenseMilieu & leftFlag_bb8(XL1, YL1) & leftFlag_bb8(XL2, YL2) & leftFlag_bb8(XL3, YL3) & leftFlag_bb8(XL4, YL4) & rightFlag_bb8(XR1, YR1) & rightFlag_bb8(XR2, YR2) & rightFlag_bb8(XR3, YR3) & rightFlag_bb8(XR4, YR4) &
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
    +!getMyPair : iAmDefenseBas& leftFlag_bb8(XL1, YL1) & leftFlag_bb8(XL2, YL2) & leftFlag_bb8(XL3, YL3) & leftFlag_bb8(XL4, YL4) & rightFlag_bb8(XR1, YR1) & rightFlag_bb8(XR2, YR2) & rightFlag_bb8(XR3, YR3) & rightFlag_bb8(XR4, YR4) &
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
    +!getMyPair : iAmEclaireur & leftFlag_bb8(XL1, YL1) & leftFlag_bb8(XL2, YL2) & leftFlag_bb8(XL3, YL3) & leftFlag_bb8(XL4, YL4) & rightFlag_bb8(XR1, YR1) & rightFlag_bb8(XR2, YR2) & rightFlag_bb8(XR3, YR3) & rightFlag_bb8(XR4, YR4) &
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
    +!goTarget1 : not dead & target1(X,Y) & myPos(A,B) & A<X-1 & not pos(_, _, redFlag) <- !goRight ; !goTarget1.
    +!goTarget1 : not dead & target1(X,Y) & myPos(A,B) & B>Y+1 & not pos(_, _, redFlag) <- !goUp ; !goTarget1.
    +!goTarget1 : not dead & target1(X,Y) & myPos(A,B) & B<Y-1 & not pos(_, _, redFlag) <- !goDown ; !goTarget1.
    +!goTarget1 : not dead & target1(X,Y) & myPos(A,B) & A>X+1 & not pos(_, _, redFlag) <- !goLeft ; !goTarget1.

    +!goTarget1 : not dead & pos(X, Y, redFlag) <- -targetTmp(_, _, _); +targetTmp(X, Y, 1); !goTargetTmp.

    +!goTarget1 : not dead & target1(X,Y) & myPos(A,B) & math.abs(X-A)<2 & math.abs(Y-B)<2 <- !goTarget2.


//GoTarget2
    +!goTarget2 : dead <- enter; !goTarget1.
    +!goTarget2 : not dead & target2(X,Y) & myPos(A,B) & A<X-1 & not pos(_, _, redFlag) <- !goRight ; !goTarget2.
    +!goTarget2 : not dead & target2(X,Y) & myPos(A,B) & B>Y+1 & not pos(_, _, redFlag) <- !goUp ; !goTarget2.
    +!goTarget2 : not dead & target2(X,Y) & myPos(A,B) & B<Y-1 & not pos(_, _, redFlag) <- !goDown ; !goTarget2.
    +!goTarget2 : not dead & target2(X,Y) & myPos(A,B) & A>X+1 & not pos(_, _, redFlag) <- !goLeft ; !goTarget2.

    +!goTarget2 : not dead & pos(X, Y, redFlag) <- -targetTmp(_, _, _); +targetTmp(X, Y, 2); !goTargetTmp.

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
    +!profiteur:myPos(X, Y) & X>=10 <- !eclaireur.
    +!profiteur:myPos(X, Y) & X<10 <- !protecteur.
    +!profiteur <- !profiteur.
