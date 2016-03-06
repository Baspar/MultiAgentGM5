!start.
+!start<- 
	enter;
	up; up; up; right;
	!go.

+!go : not dead <- !goLeft; !go.
+dead <- !start.
	+!goLeft : myPos(MYX,MYY) & pos(MYX-1,MYY,empty) <- left.
	+!goLeft : myPos(MYX,MYY) & (not pos(MYX-1,MYY,empty)) <- !goDown.
	+!goUp : myPos(MYX,MYY) & pos(MYX,MYY-1,empty) <- up;.
	+!goUp : myPos(MYX,MYY) & (not pos(MYX,MYY-1,empty)) <- !goRight.
	+!goRight : myPos(MYX,MYY) & pos(MYX+1,MYY,empty) <- right.
	+!goRight : myPos(MYX,MYY) & (not pos(MYX+1,MYY,empty)) <- !goDown.
	+!goDown : myPos(MYX,MYY) & pos(MYX,MYY+1,empty) <- down.
	+!goDown : myPos(MYX,MYY) & (not pos(MYX,MYY+1,empty)) <- !goRight.
