/* Bagmch_enum_more_pos
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 31/07/2017
 */
MACHINE
    Bagmch_enum_more_pos

SETS
    // possible items we can put in the bag
    ITEMS = { FOO , BAR , BAZZ }


ABSTRACT_VARIABLES
    // contents of the bag
    content
INVARIANT
    content : FIN ( ITEMS ) & // it's a subset of ITEMS
    card ( content ) <= 2     // it has at most max_elem elements
INITIALISATION
    content := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag, if there's space for it*/
    additem ( aa ) =
    PRE
        aa : ITEMS & card ( content ) < 2
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
    items <-- getcontents =
    PRE
        content <: ITEMS
    THEN
        items := content
    END ;

    /* query how many items are in the bag */
    nn <-- howmany =
    PRE
        content <: ITEMS
    THEN
        nn := card ( content )
    END ;

    /* checks if the item aa is in the bag */
    check <-- isin ( aa ) =
    PRE
        aa : ITEMS &
        content <: ITEMS
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
