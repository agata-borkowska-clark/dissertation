/* Queuemch_stack_initial
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 03/09/2017
 */
MACHINE
    Queuemch_stack_initial
SETS
    ITEMS
ABSTRACT_VARIABLES
    list
INVARIANT
    list : iseq ( ITEMS )
INITIALISATION
    list := []
OPERATIONS
    /* stack operations */
    push ( aa ) =
    PRE
        aa : ITEMS - ran ( list )
    THEN
        list := list <- aa
    END ;

    aa <-- pop =
    PRE
        size ( list ) > 0
    THEN
        aa := last ( list ) ||
        list := front ( list )
    END ;
    /* queue operations */
    enqueue ( aa ) =
    PRE
        aa : ITEMS - ran ( list )
    THEN
        list := list <- aa
    END ;

    aa <-- dequeue =
    PRE
        size ( list ) > 0
    THEN
        aa := first ( list ) ||
        list := tail ( list )
    END
END
