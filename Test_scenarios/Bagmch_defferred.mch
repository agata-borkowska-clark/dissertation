/* Bagmch_defferred
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 18/02/2017
 */
MACHINE
    Bagmch_defferred(ITEMS, max_elem)
CONSTRAINTS
    // max_elem > 0. If no item can be put in the bag, the machine is useless
    max_elem : NAT1
VARIABLES
    content // set of items that are currently in the bag
INVARIANT
    // content is a partial function, from mapping items to the number of the given item in the bag.
    content <: ITEMS & 
    content : FIN(content) &
    card(content) <= max_elem
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
