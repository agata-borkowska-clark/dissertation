/* Bagmch_constant_set
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 11/04/2017
 */
MACHINE
    Bagmch_finite_items
SETS
    ITEMS
PROPERTIES
    ITEMS : FIN ( ITEMS ) // ITEMS is a finite set
ABSTRACT_VARIABLES
    // contents of the bag
    content
INVARIANT
    content <: ITEMS // it's a subset of ITEMS
    // Note: ITEMS is a finite set, so any subset of it is necessarily finite.
    // Yet we still need 'content : FIN(content)' to discharge all the POs
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
    output <-- getcontents = output := content ;

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
