/* Queuemch_double_initial
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 03/09/2017
 */
MACHINE
    Queuemch_double_initial
SETS
    ITEMS
ABSTRACT_VARIABLES
    anchor , content , next , previous
INVARIANT
    content : iseq ( ITEMS ) &
    anchor : ran ( content ) &
    next :  ran ( content ) -->> ran ( content ) &
    previous : ran ( content ) -->> ran ( content ) &
    ( next ; previous ) = id ( ran ( content ) ) &
    ( previous ; next ) = id ( ran ( content ) )
ASSERTIONS
    ! ( item ) . ( item : ran ( content ) => previous ( next ( item ) ) = item ) &
    ! ( item ) . ( item : ran ( content ) => next ( previous ( item ) ) = item )


INITIALISATION
    ANY
        item
    WHERE
        item : ITEMS // pick any item as the anchor
    THEN
        anchor := item ||
        content := [ item ] ||
        next := { item |-> item } ||
        previous := { item |-> item }
    END
OPERATIONS
    /* append item to the end of the list*/
    append ( ii ) =
    PRE
        ii : ITEMS - ran ( content )
    THEN
        content := content <- ii ||
        previous := previous <+ { anchor |-> ii , ii |-> previous ( anchor ) } ||
        next := next <+ { ii |-> anchor , previous ( anchor ) |-> ii }
    END ;

    /* remove a specified item */
    remove ( ii ) =
    PRE
        ii : ran ( content ) - { anchor }
    THEN
        next := { ii } <<| next <+ { previous ( ii ) |-> next ( ii ) } ||
        previous := { ii } <<| previous <+ { next ( ii ) |-> previous ( ii ) } ||
        LET
            xx
        BE
            xx = content ~ ( ii )
        IN
            content := ( content /|\ ( xx - 1 ) ) ^ ( content \|/ xx )
        END
    END ;

    /*find the item on the list. 
    Return the index of the item or 0 if it's not on the list*/
    ii <-- getindexof ( aa ) =
    PRE
        aa : ITEMS
    THEN
        IF
            aa : ran ( content )
        THEN
            ii := content ~ ( aa )
        ELSE
            ii := 0
        END
    END ;

    /* get ii'th element of the list */
    aa <-- getelem ( ii ) =
    PRE
        ii : dom ( content )
    THEN
        aa := content ( ii )
    END
END
