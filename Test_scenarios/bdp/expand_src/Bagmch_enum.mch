﻿/* Bagmch_enum
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 26/02/2017
 */

 /* Bagmch in which ITEMS is defined as an enumerated set */
MACHINE
    Bagmch_enum
SETS
    // possible items we can put in the bag
    ITEMS = { FOO , BAR , BAZZ }
ABSTRACT_VARIABLES
    // contents of the bag
    content
INVARIANT
    content : FIN ( ITEMS ) // it's a subset of ITEMS
INITIALISATION
    content := {} // we start with an empty bag
OPERATIONS
    /* Adds item aa to the bag, if there's space for it*/
    additem ( aa ) =
    PRE
        aa : ITEMS &
        content : FIN ( ITEMS ) //FIX
    THEN
        content := content \/ { aa }
    END ;

    /* removes aa from the bag (does nothing if aa not in the bag) */
    removeitem ( aa ) =
    PRE
        aa : ITEMS &
        content : FIN ( ITEMS ) // FIX
    THEN
        content := content - { aa }
    END ;

    /* getter for the content*/
    items <-- getcontents =
    PRE
        content : FIN ( ITEMS )
    THEN
        items := content
    END ;

    /* query how many items are in the bag */
    nn <-- howmany =
    PRE
        content : FIN ( ITEMS )
    THEN
        nn := card ( content )
    END ;

    /* checks if the item aa is in the bag */
    check <-- isin ( aa ) =
    PRE
        aa : ITEMS &
        content : FIN ( ITEMS )
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
