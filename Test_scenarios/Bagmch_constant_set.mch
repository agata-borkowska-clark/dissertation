/* Bagmch_constant_set
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 11/04/2017
 */
 
 /* Elements in the Bag come from a set defined in the Constants clause */
MACHINE
    Bagmch_constant_set
SETS
    ITEMS
CONSTANTS
    // possible items we can put in the bag
    items
PROPERTIES
    items : FIN(ITEMS)
VARIABLES
    // contents of the bag
    content
INVARIANT
    content <: items // it's a subset of ITEMS
    //content : FIN(content) &
    // Note: items is a finite set, so any subset of it is necessarily finite.
INITIALISATION
    content := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag, if there's space for it*/
    additem(aa) =
    PRE
        aa : items
    THEN
        content := content \/ {aa}
    END;
    
    /* removes aa from the bag (does nothing if aa not in the bag) */
    removeitem(aa) =
    PRE
        aa : items
    THEN
        content := content - {aa}
    END;
    
    /* getter for the content*/
    output <-- getcontents = output := content;
    
    /* query how many items are in the bag */
    nn <-- howmany = nn := card(content);
    
    /* checks if the item aa is in the bag */
    check <-- isin(aa) = 
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