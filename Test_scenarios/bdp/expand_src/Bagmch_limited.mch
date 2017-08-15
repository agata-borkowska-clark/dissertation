/* Bagmch_limited
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 02/08/2017
 *
 * Like Bagmch, with an additional detail: imposing a limit on cardinality
 */

/* The simplest version of the bag example */
MACHINE
    Bagmch_limited
SETS
    // possible items we can put in the bag
    ITEMS
CONCRETE_CONSTANTS
    // max number of items that fit in the bag
    max_elem
PROPERTIES
    max_elem = 3
ABSTRACT_VARIABLES
    // contents of the bag
    content
INVARIANT
    content : FIN ( ITEMS ) & // it's a finite subset of ITEMS
    card ( content ) <= max_elem // it has at most max_elem elements
INITIALISATION
    content := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag, if there's space for it*/
    additem ( aa ) =
    PRE
        aa : ITEMS  & // type check of the input
        card ( content ) < max_elem // we can only add the item, if there is space for it
    THEN
        content := content \/ { aa }
    END ;

    /* removes aa from the bag (does nothing if aa not in the bag) */
    removeitem ( aa ) =
    PRE
        aa : ITEMS
    THEN
        content := content - { aa }
    END ;

    /* getter for the content*/
    items <-- getcontents = items := content ;

    /* query how many items are in the bag */
    nn <-- howmany = nn := card ( content ) ;

    /* checks if the item aa is in the bag */
    check <-- isin ( aa ) =
    PRE
        aa : ITEMS
    THEN
        IF
            aa : content
        THEN
            check := TRUE
        ELSE
            check := FALSE
        END
    END
END
