/* Bagmch_wrong_order
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 31/07/2017
 *
 * This version of the Bagmch demonstrates that putting conjuncts of the 
 * INVARIANT in a different order may lead to undischarged POs.
 */
MACHINE
    Bagmch_wrong_order
SETS
    // possible items we can put in the bag
    ITEMS
CONSTANTS
    // max number of items that fit in the bag
    max_elem
PROPERTIES
    max_elem = 3
VARIABLES
    // contents of the bag
    content
INVARIANT
    content <: ITEMS & // it's a subset of ITEMS
    card(content) <= max_elem  & // it has at most max_elem elements
    content: FIN(content) // WRONG ORDER
INITIALISATION
    content := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag, if there's space for it*/
    additem(aa) =
    PRE
        aa : ITEMS
    THEN
        IF
            // only add item if we won't exceed the limit
            card(content) < max_elem
        THEN
            content := content \/ {aa}
        END
    END;
    
    /* removes aa from the bag (does nothing if aa not in the bag) */
    removeitem(aa) =
    PRE
        aa : ITEMS
    THEN
        content := content - {aa}
    END;
    
    /* getter for the content*/
    items <-- getcontents = items := content;
    
    /* query how many items are in the bag */
    nn <-- howmany = nn := card(content);
    
    /* checks if the item aa is in the bag */
    check <-- isin(aa) = 
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