!start.

/* Plans */

+!start : true <- enter ; !attack.

+!attack : dead<- enter; -target(_,_) ; !attack.
+!attack : not target(_,_) <- !chooseTarget ; !attack.
+!attack : target(X,Y) & flag(red,X,Y) <- -target(X,Y) ; !attack.

+!chooseTarget <- for (flag(blue,X,Y)) {!testTarget(X,Y);}.
+!testTarget(X,Y) : not target(_,_) <- +target(X,Y).
+!testTarget(X,Y) : myPos(A,B) & target(C,D) & math.abs(A-C)+math.abs(B-D)>math.abs(A-X)+math.abs(B-Y) <- .print("Target changed") ; -target(C,D) ; +target(X,Y).
+!testTarget(X,Y) : myPos(A,B) & target(C,D) & math.abs(A-C)+math.abs(B-D)<=math.abs(A-X)+math.abs(B-Y) <- .print("Target unchanged").

+!attack : target(X,Y) & myPos(A,B) & A<X-1 & pos(A+1,B,empty) <- right ; !attack.
+!attack : target(X,Y) & myPos(A,B) & B>Y+1 & pos(A,B-1,empty) <- up ; !attack.
+!attack : target(X,Y) & myPos(A,B) & B<Y-1 & pos(A,B+1,empty) <- down ; !attack.
+!attack : target(X,Y) & myPos(A,B) & A>X+1 & pos(A-1,B,empty) <- left ; !attack.

+!attack : target(X,Y) & myPos(A,B) & A=X-1 & pos(A+1,B,empty) <- right ; !attack.
+!attack : target(X,Y) & myPos(A,B) & B=Y+1 & pos(A,B-1,empty) <- up ; !attack.
+!attack : target(X,Y) & myPos(A,B) & B=Y-1 & pos(A,B+1,empty) <- down ; !attack.
+!attack : target(X,Y) & myPos(A,B) & A=X+1 & pos(A-1,B,empty) <- left ; !attack.

+!attack : target(X,Y) & myPos(X,B) & B<Y & flag(red,X,B+1) <- right;down;!attack.
+!attack : target(X,Y) & myPos(X,B) & B>Y & flag(red,X,B-1) <- right;up;!attack.
+!attack : target(X,Y) & myPos(A,Y) & A<X & flag(red,A+1,Y) <- up;right;!attack.
+!attack : target(X,Y) & myPos(A,Y) & A>X & flag(red,A-1,Y) <- up;left;!attack.
