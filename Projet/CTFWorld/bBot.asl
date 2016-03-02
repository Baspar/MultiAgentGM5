!start.
+!start<-enter; !findFlag.

+!findFlag<-!goRight; !findFlag.
+!findFlag:pos(redFlag, X, Y) <- .broadcast(tell, hasFlag(X,Y)); hasFlag(X,Y).

+hasFlag(XF,YF)<- -findFlag; !goTo(XF,YF).
+!goTo(XF,YF):myPos(XP, YP)&XF<XP<-!goLeft; !goTo(XF, YF).
+!goTo(XF,YF):myPos(XP, YP)&XF>XP<-!goRight; !goTo(XF, YF).
+!goTo(XF,YF):myPos(XP, YP)&YF>YP<-!goUp; !goTo(XF, YF).
+!goTo(XF,YF):myPos(XP, YP)&YF<YP<-!goDown; !goTo(XF, YF).




+!goLeft<-left.
+!goRight<-right.
+!goUp<-up.
+!goDown<-down.
