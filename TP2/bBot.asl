// Agent bBot in project CTFWorld.mas2j

/* Initial beliefs and rules */

/* Initial goals */

//Create agent
!newLive.
+!newLive <- enter; !searchFlag.

//Keep it in life
+!searchFlag: flag(red, XF, YF) & not target(_,_) <- +target(XF, YF); !searchFlag.
+!searchFlag: flag(red, XF, YF) & target(XP,YP) & myPos(X, Y) & math.abs(X-XP)+math.abs(Y-YP)>math.abs(X-XF)+math.abs(Y-YF)
	<- 
		-target(XP, YP);
		+target(XF, YF);
		!searchFlag.
		
+!searchFlag: ~flag(red, _, _) & target(X, Y) <-!goToFlag(X, Y).

+!goToFlag(XF, YF): myPos(X, Y)& X<XF& flag(red, XF, YF) <- !goRight; !goToFlag(XF, YF).
+!goToFlag(XF, YF): myPos(X, Y)& X>XF& flag(red, XF, YF) <- !goLeft; !goToFlag(XF, YF).
+!goToFlag(XF, YF): myPos(X, Y)& Y<YF& flag(red, XF, YF) <- !goDown; !goToFlag(XF, YF).
+!goToFlag(XF, YF): myPos(X, Y)& Y>YF& flag(red, XF, YF) <- !goUp; !goToFlag(XF, YF).

+!goToFlag(XF, YF): flag(blue, XF, YF) <- -target(XF, YF); !searchFlag.


+!goRight : myPos(X, Y)&     pos(X+1, Y, empty) <- right.
+!goRight : myPos(X, Y)& not pos(X+1, Y, empty) <- up; !goRight.
+!goLeft  : myPos(X, Y)&     pos(X-1, Y, empty) <- left.
+!goLeft  : myPos(X, Y)& not pos(X-1, Y, empty) <- up; !goLeft.
+!goDown  : myPos(X, Y)&     pos(X, Y+1, empty) <- down.
+!goDown  : myPos(X, Y)& not pos(X, Y+1, empty) <- left; !gotDown.
+!goUp    : myPos(X, Y)&     pos(X, Y-1, empty) <- up.
+!goUp    : myPos(X, Y)& not pos(X, Y-1, empty) <- left; !goUp.


/*+!goToFlag: flag(red, XF, YF) & not target(_,_) <- +target(XF,YF); !goToFlag.



+target(XF, YF) : myPos(X, Y)& X<XF <- right; -target(XF, YF).
+target(XF, YF) : myPos(X, Y)& X>XF <- left; -target(XF, YF).
+target(XF, YF) : myPos(X, Y)& Y<YF <- down; -target(XF, YF).
+target(XF, YF) : myPos(X, Y)& Y>YF <- up; -target(XF, YF).
+target(XF, YF) : myPos(X, Y)& Y==YF& X==XF <- hold; -target(XF, YF).*/
