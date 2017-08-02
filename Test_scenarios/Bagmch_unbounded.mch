/* Bagmch_unbounded
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 05/04/2017
 *
 * This machine demonstrates a simple mistake of asking for the cardinality of 
 * a set which is not defined to be finite. See: OPERATION howmany
 */
MACHINE
    Bagmch_unbounded
SETS
    // possible items we can put in the bag
    ITEMS
VARIABLES
    // contents of the bag
    content
INVARIANT
    content <: ITEMS
INITIALISATION
    content := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag*/
    additem(aa) =
    PRE
        aa : ITEMS
    THEN
        content := content \/ {aa}
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