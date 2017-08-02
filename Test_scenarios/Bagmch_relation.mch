/* Bagmch_relation
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 02/08/2017
 * 
 * This Bagmch demonstrates a different way of expressing the contents of the
 * bag. 
 * Instead of just a set of items, we use an injection ITEMS >+> {TRUE, FALSE}
 * to indicate whether an item is in the bag or not. This allows us to explore
 * variations on the operations.
 */
MACHINE
    Bagmch_relation
SETS
    // possible items we can put in the bag
    ITEMS
VARIABLES
    // contents of the bag
    content
INVARIANT
    content : ITEMS>+>{TRUE,FALSE} &
    dom(content) : FIN(ITEMS) // as discovered earlier we need a bound
INITIALISATION
    content := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag*/
    additem(aa) =
    PRE
        aa : ITEMS
    THEN
        content := content <+ {aa|->TRUE}
    END;
    
    /* removes aa from the bag (does nothing if aa not in the bag) */
    removeitem(aa) =
    PRE
        aa : ITEMS
    THEN
        content := content <+ {aa|->FALSE}
    END;
    
    /* getter for the content*/
    items <-- getcontents = items := {xx | xx|->TRUE : content};
    
    /* query how many items are in the bag */
    nn <-- howmany = nn := card(content|>{TRUE});
    
    /* checks if the item aa is in the bag */
    check <-- isin(aa) = 
    PRE
        aa : ITEMS
    THEN
        IF 
            aa|->TRUE : content
        THEN
            check := TRUE
        ELSE
            check := FALSE
        END
    END
END