/* Bagmch_defferred
 * Author: Agata Borkowska
 * UID: 1690550
 * Creation date: 18/02/2017
 */
MACHINE
    Bagmch_defferred
SETS
    ITEMS // set of items that can be put in the bag
CONSTANTS
    max_items // max. number of items that can be put in the bag
PROPERTIES
    // max_items > 0. If no item can be put in the bag, the machine is useless
    max_items : NAT1
VARIABLES
    content // set of items that are currently in the bag
INVARIANT
    // content is a partial function, from mapping items to the number of the given item in the bag.
    
    content <: ITEMS +-> NAT1 & 
    card(content) <= max_items
INITIALISATION
    content := {}


END
