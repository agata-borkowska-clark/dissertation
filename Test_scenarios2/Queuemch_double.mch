/* Queuemch_double
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 02/09/2017
 */
MACHINE
    Queuemch_double
SETS
    ITEMS
VARIABLES
    anchor, content, next, previous
INVARIANT
    content <: ITEMS &
    content : FIN(content) &
    anchor : content &
    next :  content -->> content &
    previous : content -->> content  &
    (next; previous) = id(content) &
    (previous; next) = id(content)
ASSERTIONS
    !(item).(item : content => previous(next(item)) = item) &
    !(item).(item : content => next(previous(item)) = item) 
INITIALISATION
    ANY
        item
    WHERE
        item : ITEMS // pick any item as the anchor
    THEN
        anchor := item ||
        content := {item} ||
        next := {item |-> item} ||
        previous := {item |-> item}
    END
OPERATIONS
    append(ii) =
    PRE
        ii : ITEMS-content
    THEN
        content := content\/{ii} ||
        previous := previous <+ {anchor|->ii, ii|->previous(anchor)} ||
        next := next <+ {ii|->anchor, previous(anchor)|-> ii}
    END;
    
    remove(ii) =
    PRE
        ii : content-{anchor}
    THEN
        content := content - {ii} ||
        next := {ii} <<| next <+ {previous(ii)|->next(ii)} ||
        previous := {ii} <<| previous <+ {next(ii)|->previous(ii)}
    END
   
END
