/* Bagmch_numbers_2
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 11/04/2017
 */
MACHINE
    Bagmch_numbers_2
CONCRETE_CONSTANTS
    // max number of items that fits in the bag
    max_elem ,
    // possible items we can put in the bag
    items
PROPERTIES
    max_elem = 2 & items = { 1 , 2 }
ABSTRACT_VARIABLES
    // contents of the bag
    content
INVARIANT
    content <: items & // it's a subset of ITEMS
    card ( content ) <= max_elem // it has at most max_elem elements
INITIALISATION
    content := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag, if there's space for it*/
    additem ( aa ) =
    PRE
        aa : items
    THEN
        IF
            // only add item if we won't exceed the limit
            card ( content ) < max_elem
        THEN
            content := content \/ { aa }
        END
    END ;

    /* removes aa from the bag (does nothing if aa not in the bag) */
    removeitem ( aa ) =
    PRE
        aa : items
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
        aa : items
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
