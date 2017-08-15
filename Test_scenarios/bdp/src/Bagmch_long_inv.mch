/* Bagmch_long_inv
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 18/07/2017
 *
 * The simplest version of the Bagmch, augmented by a different way of expressing the INVARIANT
 */

MACHINE
    Bagmch_long_inv
SETS
    // possible items we can put in the bag
    ITEMS
ABSTRACT_VARIABLES
    // contents of the bag
    content
INVARIANT
    content : POW ( ITEMS ) & // content is a subset of ITEMS
    content : FIN ( content ) // content is finite
INITIALISATION
    content := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag*/
    additem ( aa ) =
    PRE
        aa : ITEMS
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
