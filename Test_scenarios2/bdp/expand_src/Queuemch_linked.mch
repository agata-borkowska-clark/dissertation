/* Queuemch_linked
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 04/09/2017
 */

 /*Implementation of a linked list */
MACHINE
    Queuemch_linked
SETS
    ITEMS
ABSTRACT_VARIABLES
    anchor , content , next
INVARIANT
    content : iseq ( ITEMS ) &
    anchor : elem & // dummy element considered to be the start of the list
    next :  elem -->> elem & // it's surjective (cycling through elements)
    content : seq ( ran ( content ) )
DEFINITIONS
    elem == ran ( content )
INITIALISATION
    ANY
        item
    WHERE
        item : ITEMS // pick any item as the anchor
    THEN
        anchor := item ||
        content := [ item ] || // single-item sequence
        next := { item |-> item }
    END
OPERATIONS
    /* append item to the end of the list*/
    append ( ii ) =
    PRE
        ii : ITEMS - elem
    THEN
        content := content <- ii ||
        next := next <+ { ii |-> anchor , last ( content ) |-> ii }
    END ;

    /* remove a specified item*/
    remove ( ii ) =
    PRE
        ii : elem - { anchor } & size ( content ) > 1
    THEN
        next := { ii } <<| next <+ { next ~ ( ii ) |-> next ( ii ) } ||
        LET
            xx
        BE
            xx = content ~ ( ii )
        IN
            content := ( content /|\ ( xx - 1 ) ) ^ ( content \|/ xx )
        END
    END ;

    /* remove the item in position nn */
    remove2 ( nn ) =
    PRE
        nn : dom ( content ) - { 1 } // don't remove the anchor
         & size ( content ) > 1
    THEN
        next := { content ( nn ) } <<| next <+ { next ~ ( content ( nn ) ) |-> next ( content ( nn ) ) } ||
        content := ( content /|\ ( nn - 1 ) ) ^ ( content \|/ nn )
    END ;

    /*find the item on the list. 
    Return the index of the item or 0 if it's not on the list*/
    ii <-- getindexof ( aa ) =
    PRE
        aa : ITEMS
    THEN
        IF
            aa : elem
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
