// Agent BOB in project CTFWorld.mas2j

/* Initial beliefs and rules */

/* Initial goals */
bottom(0).
top(10).

+!guess : bottom(B) & top(T) <-.send(aLICE, askOne, is_number(math.round((T+B)/2))).

+less(N) <- -top(_); +top(N-1); -less(_); !guess.
+greater(N) <- -bottom(_); +bottom(N+1); -greater(_); !guess.
