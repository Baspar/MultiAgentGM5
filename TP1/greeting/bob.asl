// Agent bob in project greeting.mas2j
+hello[source(A)] <- .print("I received a 'hello' from ",A);
	-hello[source(A)];
	.send(A,tell,hello).
