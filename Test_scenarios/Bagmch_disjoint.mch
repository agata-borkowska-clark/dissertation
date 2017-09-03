/* Bagmch_limited
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 02/08/2017
 *
 * Like Bagmch_limited, with disjunct in the Invariant
 */
 
/* The simplest version of the bag example */
MACHINE
    Bagmch_disjoint
SETS
    // possible items we can put in the bag
    ITEMS
VARIABLES
    // contents of the bag
    content1, content2
INVARIANT
	content1 <: ITEMS &
	content1 : FIN(content1) &
	content2 <:ITEMS &
	content2 : FIN(content2) &
	(!(aa).(aa : ITEMS =>
	        not(aa : content1) or
	        not(aa : content2)))
    // NOTE by that we simply mean: content1 /\ content2 = {}
INITIALISATION
    content1 := {} || content2 := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag*/
    additem1(aa) =
    PRE
        aa : ITEMS-content2
    THEN
        content1 := content1 \/ {aa}
    END;
    
    additem2(aa) =
    PRE
        aa : ITEMS-content1
    THEN
        content2 := content2 \/ {aa}
    END;

    /* removes aa from the bag (does nothing if aa not in the bag) */
    removeitem1(aa) =
    PRE
        aa : ITEMS
    THEN
        content1 := content1 - {aa}
    END;
    
    removeitem2(aa) =
    PRE
        aa : ITEMS
    THEN
        content2 := content2 - {aa}
    END;
        
    /* getter for the content*/
    items <-- getcontents = items := content1 \/ content2;
    
    /* query how many items are in the bag */
    nn <-- howmany = nn := card(content1) + card(content2);
    
    /* checks if the item aa is in the bag */
    check <-- isin(aa) = 
    PRE
        aa : ITEMS
    THEN
        IF 
            aa : content1 or aa : content2
        THEN
            check := TRUE
        ELSE
            check := FALSE
        END
    END
END
