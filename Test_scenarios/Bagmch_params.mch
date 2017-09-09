/* Bagmch_params
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 18/02/2017
 */
 
 /*Like Bagmch, except the deferred set is now given as a parameter. */
MACHINE
    Bagmch_params(ITEMS)
VARIABLES
    content // set of items that are currently in the bag
INVARIANT
    // content is a finite subset of ITEMS
    content : FIN(ITEMS)
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
