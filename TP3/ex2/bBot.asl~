!start.
+!start<- enter; !find.

+!find <- right; !find.

+pos(X, Y, redFlag)<- .broadcast(tell, target(X, Y)); +target(X, Y).

+target(X, Y)<- -find; !attack.




//Déplacement à droite
+!attack :
				myPos(XAGENT,YAGENT) &
				target(XFLAG,YFLAG) &
				pos(XAGENT+1,YAGENT,empty) &
				XAGENT < XFLAG
			<-
				right;
				.print("target : ",XFLAG,",",YFLAG);
				!attack.

//Déplacement à gauche				
+!attack :
				myPos(XAGENT,YAGENT) &
				target(XFLAG,YFLAG) &
				pos(XAGENT-1,YAGENT,empty) &
				XAGENT > XFLAG
			<-
				left;
				.print("target : ",XFLAG,",",YFLAG);
				!attack.

//Déplacement en haut			
+!attack :
				myPos(XAGENT,YAGENT) &
				target(XFLAG,YFLAG) &
				pos(XAGENT,YAGENT-1,empty) &
				YAGENT > YFLAG
			<-
				up;
				.print("target : ",XFLAG,",",YFLAG);
				!attack.

//Déplacement en bas			
+!attack :
				myPos(XAGENT,YAGENT) &
				target(XFLAG,YFLAG) &
				pos(XAGENT,YAGENT+1,empty) &
				YAGENT < YFLAG
			<-
				down;
				.print("target : ",XFLAG,",",YFLAG);
				!attack.
				
// Drapeau sur même colonne, case en bas bloquée, target en bas
+!attack :
				myPos(XAGENT,YAGENT) &
				target(XFLAG,YFLAG) &
				not pos(XAGENT,YAGENT+1,empty) &
				XAGENT == XFLAG &
				YAGENT < YFLAG
			<-
				right;
				down;
				.print("target : ",XFLAG,",",YFLAG);
				!attack.
				
// Drapeau sur même colonne, case en haut bloquée, target en haut
+!attack :
				myPos(XAGENT,YAGENT) &
				target(XFLAG,YFLAG) &
				not pos(XAGENT,YAGENT-1,empty) &
				XAGENT == XFLAG &
				YAGENT > YFLAG
			<-
				right;
				up;
				.print("target : ",XFLAG,",",YFLAG);
				!attack.
				
// Drapeau sur même ligne, case à droite bloquée, target à droite
+!attack :
				myPos(XAGENT,YAGENT) &
				target(XFLAG,YFLAG) &
				not pos(XAGENT+1,YAGENT,empty) &
				XAGENT < XFLAG &
				YAGENT == YFLAG
			<-
				up;
				right;
				.print("target : ",XFLAG,",",YFLAG);
				!attack.
				
// Drapeau sur même ligne, case à droite bloquée, target à gauche
+!attack :
				myPos(XAGENT,YAGENT) &
				target(XFLAG,YFLAG) &
				not pos(XAGENT-1,YAGENT,empty) &
				XAGENT > XFLAG &
				YAGENT == YFLAG
			<-
				up;
				left;
				.print("target : ",XFLAG,",",YFLAG);
				!attack.

