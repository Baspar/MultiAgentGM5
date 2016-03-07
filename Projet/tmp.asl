

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
    +!eclaireur <- !eclaire