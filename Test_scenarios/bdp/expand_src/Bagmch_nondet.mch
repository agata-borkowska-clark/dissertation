/* Bagmch_nondet
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 29/08/2017
 */

/* Differs from the Bagmch by making nondeterministic assignment to add or remove item*/
MACHINE
    Bagmch_nondet
SETS
    // possible items we can put in the bag
    ITEMS
ABSTRACT_VARIABLES
    // contents of the bag
    content
INVARIANT
    content : FIN ( ITEMS ) // content is a *finite* subset of ITEMS
INITIALISATION
    content := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag*/
    additem =
    ANY
        aa
    WHERE
        aa : content
    THEN
        content := content \/ { aa }
    END ;

    /* removes aa from the bag (does nothing if aa not in the bag) */
    removeitem =
    PRE
        content /= {}
    THEN
        ANY
            aa
        WHERE
            aa : content
        THEN
            content := content - { aa }
        END
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
