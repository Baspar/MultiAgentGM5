// Agent tom in project greeting.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!start.
+!start : true <- .send(bob,tell,hello).

+hello[source(A)] <- .print("I received a 'hello' from ",A);
	-hello[source(A)];
	.send(A,tell,hello).
