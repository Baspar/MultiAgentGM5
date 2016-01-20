
/*

Very simple vacuum cleaner agent in a world that has only four locations.

Perceptions:
. dirty: the current location has dirty
. clean: the current location is clean
. pos(X): the agent position is X (0 < X < 5).

Actions:
. suck: clean the current location
. left, right, up, down: hastomove the agent

*/

!houseclean.
+!houseclean <- !dosomething;
	!houseclean.

+!dosomething:dirty <- suck;
	!move.
+!dosomething:clean <- !move.

+!move:pos(1) <- right.
+!move:pos(2) <- down.
+!move:pos(3) <- up.
+!move:pos(4) <- left.
