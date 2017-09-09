/* Queuemch_stack_initial
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 03/09/2017
 */

 /* Implementation of queue and stack */
MACHINE
    Queuemch_stack
SETS
    ITEMS
ABSTRACT_VARIABLES
    list
INVARIANT
    list : seq ( ITEMS ) &
    list : seq ( ran ( list ) ) // due to well-defineness
INITIALISATION
    list := <>
OPERATIONS
    /* stack operations */
    push ( aa ) =
    PRE
        aa : ITEMS
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
        aa : ITEMS
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
