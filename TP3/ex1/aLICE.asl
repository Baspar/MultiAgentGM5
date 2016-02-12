// Agent ALICE in project CTFWorld.mas2j

/* Initial beliefs and rules */
objectif(math.round(math.random(10))).

!start.
+!start<- .send(bOB, achieve, guess).

+?is_number(N)[source(X)]: objectif(Y) & N>Y  <- .send(bOB, tell, less(N)).
+?is_number(N)[source(X)]: objectif(Y) & N<Y  <- .send(bOB, tell, greater(N)).
+?is_number(N)[source(X)]: objectif(Y) & N==Y <- .print("Gagne!").
