/* Queuemch
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 02/09/2017
 */
MACHINE
    Queuemch
SETS
    ITEMS
ABSTRACT_VARIABLES
    queue
INVARIANT
    queue : seq ( ITEMS ) &
    queue : seq ( ran ( queue ) ) // fixes well-defineness
INITIALISATION
    queue := []
OPERATIONS
    enqueue ( aa ) =
    PRE
        aa : ITEMS - ran ( queue )
    THEN
        queue := queue <- aa
    END ;

    aa <-- dequeue =
    PRE
        size ( queue ) > 0
    THEN
        aa := first ( queue ) ||
        queue := tail ( queue )
    END
END
