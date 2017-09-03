/* Bagmch_relation
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 02/08/2017
 * 
 * This Bagmch demonstrates a different way of expressing the contents of the
 * bag. 
 * Instead of just a set of items, we use an injection ITEMS +-> NAT
 * to allow for repeated occurrences of an item in the bag. This allows us to explore
 * variations on the operations involving functions.
 */
MACHINE
    Bagmch_relation
SETS
    // possible items we can put in the bag
    ITEMS
ABSTRACT_VARIABLES
    // contents of the bag
    content
INVARIANT
    content : ITEMS +-> NAT &
    dom ( content ) : FIN ( ITEMS ) // as discovered earlier we need a bound
INITIALISATION
    content := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag*/
    additem ( aa ) =
    PRE
        aa : ITEMS &
        ( aa : dom ( content ) => content ( aa ) < MAXINT )
    THEN
        IF
            aa : dom ( content ) // at least one aa is already in the bag
        THEN
            content := content <+ { aa |-> content ( aa ) + 1 }
        ELSE
            content := content \/ { aa |-> 1 }
        END
    END ;

    /* removes aa from the bag (does nothing if aa not in the bag) */
    removeitem ( aa ) =
    PRE
        aa : ITEMS
    THEN
        IF
            aa : dom ( content )
        THEN
            IF
                content ( aa ) > 1 // if more than 1 aa, decrease the number
            THEN
                content := content <+ { aa |-> content ( aa ) - 1 }
            ELSE
                // if only one aa, remove it entirely
                content := content - { aa |-> 1 }
            END
        END
    END ;

    /* getter for the content*/
    items <-- getcontents = items := dom ( content ) ;

    /* query how many items are in the bag */
    nn <-- howmany = nn := SIGMA ( xx ) . ( xx : dom ( content ) | content ( xx ) ) ;

    /* checks if the item aa is in the bag */
    check <-- isin ( aa ) =
    PRE
        aa : ITEMS
    THEN
        IF
            aa : dom ( content )
        THEN
            check := TRUE
        ELSE
            check := FALSE
        END
    END
END
