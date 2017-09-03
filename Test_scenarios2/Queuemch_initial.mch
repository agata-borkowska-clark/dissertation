/* Queuemch
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 02/09/2017
 */
MACHINE
    Queuemch_initial
SETS
    ITEMS
VARIABLES
    queue
INVARIANT
    queue : iseq(ITEMS) // injective sequence
INITIALISATION
    queue := <> // start with an empty queue
OPERATIONS
    enqueue(aa) = 
    PRE
        aa : ITEMS-ran(queue)
    THEN
        queue := queue <- aa
    END;
    
    aa <-- dequeue = 
    PRE
        size(queue) > 0
    THEN
        aa := first(queue) ||
        queue := tail(queue)
    END
END
