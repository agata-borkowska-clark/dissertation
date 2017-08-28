/* Bagmch_2sets
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 28/08/2017
 */

/* Bagmch maintaining two bags at once, to explore the number of proof 
obligations generated.*/
MACHINE
    Bagmch_2sets
SETS
    // possible items we can put in the bag
    ITEMS
ABSTRACT_VARIABLES
    // contents of the bag
    content1 , content2
INVARIANT
    content1 : POW ( ITEMS ) &
    content1 : FIN ( content1 ) &
    content2 : POW ( ITEMS ) &
    content2 : FIN ( content2 ) &
    content1 \/ content2 : POW ( ITEMS )
INITIALISATION
    content1 := {} || content2 := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag*/
    additem1 ( aa ) =
    PRE
        aa : ITEMS
    THEN
        content1 := content1 \/ { aa }
    END ;

    additem2 ( aa ) =
    PRE
        aa : ITEMS
    THEN
        content2 := content2 \/ { aa }
    END ;

    /* Adds the same item to both sets */
    additemboth ( aa ) =
    PRE
        aa : ITEMS
    THEN
        content1 := content1 \/ { aa } ||
        content2 := content2 \/ { aa }
    END ;

    /* removes aa from the bag (does nothing if aa not in the bag) */
    removeitem1 ( aa ) =
    PRE
        aa : ITEMS
    THEN
        content1 := content1 - { aa }
    END ;

    removeitem2 ( aa ) =
    PRE
        aa : ITEMS
    THEN
        content2 := content2 - { aa }
    END ;

    /* getter for the content*/
    items <-- getcontents = items := content1 \/ content2 ;

    /* query how many items are in the bag */
    nn <-- howmany = nn := card ( content1 ) + card ( content2 ) ;

    /* checks if the item aa is in the bag */
    check <-- isin ( aa ) =
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
