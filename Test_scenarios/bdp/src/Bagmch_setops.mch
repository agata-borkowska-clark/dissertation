/* Bagmch_setops
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 02/08/2017
 */

 /*Instead of adding/removing one element at a time, we add/remove a set*/
MACHINE
    Bagmch_setops
SETS
    // possible items we can put in the bag
    ITEMS
ABSTRACT_VARIABLES
    // contents of the bag
    content
INVARIANT
    content <: ITEMS & // content is a *finite* subset of ITEMS
    content : FIN ( content )
INITIALISATION
    content := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag*/
    additems ( aa ) =
    PRE
        aa : FIN ( ITEMS )
    THEN
        content := content \/ aa
    END ;

    /* removes aa from the bag (does nothing if aa not in the bag) */
    removeitems ( aa ) =
    PRE
        aa : FIN ( ITEMS )
    THEN
        content := content - aa
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
