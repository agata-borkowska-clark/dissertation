/* Bagmch_redundant
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 26/08/2017
 */

/*We add redundant clauses in the Invariant to observe how that affects the number of proof obligations*/
MACHINE
    Bagmch_redundant_reverse
SETS
    // possible items we can put in the bag
    ITEMS
CONCRETE_CONSTANTS
    // maximum number of items in the bag
    max_elem
PROPERTIES
    max_elem : NAT
ABSTRACT_VARIABLES
    // contents of the bag
    content
INVARIANT
    content : POW ( ITEMS ) & // it's a finite subset of ITEMS
    content : FIN ( content ) &
    card ( content ) <= max_elem &
    card ( content ) <= max_elem + 1 &
    card ( content ) <= max_elem + 2 &
    card ( content ) <= max_elem + 3 &
    card ( content ) <= max_elem + 4
INITIALISATION
    content := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag, if there's space for it*/
    additem ( aa ) =
    PRE
        aa : ITEMS & // type check of the input
        card ( content ) < max_elem
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
