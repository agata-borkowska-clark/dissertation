/* Queuemch_stack
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 02/09/2017
 */
MACHINE
    Queuemch_stack
SETS
    ITEMS
ABSTRACT_VARIABLES
    stack
INVARIANT
    stack : seq ( ITEMS ) &
    stack : seq ( ran ( stack ) ) // fixes well-defineness
INITIALISATION
    stack := []
OPERATIONS
    push ( aa ) =
    PRE
        aa : ITEMS - ran ( stack )
    THEN
        stack := stack <- aa
    END ;

    aa <-- pop =
    PRE
        size ( stack ) > 0
    THEN
        aa := last ( stack ) ||
        stack := front ( stack )
    END
END
