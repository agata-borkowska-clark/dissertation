Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_assertions))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_assertions))==(Machine(Bagmch_assertions));
  Level(Machine(Bagmch_assertions))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_assertions)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_assertions))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_assertions))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_assertions))==(?);
  List_Includes(Machine(Bagmch_assertions))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_assertions))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_assertions))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_assertions))==(?);
  Context_List_Variables(Machine(Bagmch_assertions))==(?);
  Abstract_List_Variables(Machine(Bagmch_assertions))==(?);
  Local_List_Variables(Machine(Bagmch_assertions))==(content);
  List_Variables(Machine(Bagmch_assertions))==(content);
  External_List_Variables(Machine(Bagmch_assertions))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_assertions))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_assertions))==(?);
  External_List_VisibleVariables(Machine(Bagmch_assertions))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_assertions))==(?);
  List_VisibleVariables(Machine(Bagmch_assertions))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_assertions))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_assertions))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_assertions))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_assertions))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_assertions))==(btrue);
  Context_List_Invariant(Machine(Bagmch_assertions))==(btrue);
  List_Invariant(Machine(Bagmch_assertions))==(content <: ITEMS & card(content)<=max_elem)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_assertions))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_assertions))==(btrue);
  Context_List_Assertions(Machine(Bagmch_assertions))==(btrue);
  List_Assertions(Machine(Bagmch_assertions))==(card(content)<=3;card(content): NATURAL;content: FIN(content))
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_assertions))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_assertions))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_assertions))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_assertions))==(skip);
  List_Initialisation(Machine(Bagmch_assertions))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_assertions))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_assertions))==(btrue);
  List_Constraints(Machine(Bagmch_assertions))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_assertions))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_assertions))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_assertions),additem)==(aa);
  List_Input(Machine(Bagmch_assertions),removeitem)==(aa);
  List_Input(Machine(Bagmch_assertions),getcontents)==(?);
  List_Input(Machine(Bagmch_assertions),howmany)==(?);
  List_Input(Machine(Bagmch_assertions),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_assertions),additem)==(?);
  List_Output(Machine(Bagmch_assertions),removeitem)==(?);
  List_Output(Machine(Bagmch_assertions),getcontents)==(items);
  List_Output(Machine(Bagmch_assertions),howmany)==(nn);
  List_Output(Machine(Bagmch_assertions),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_assertions),additem)==(additem(aa));
  List_Header(Machine(Bagmch_assertions),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_assertions),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_assertions),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_assertions),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_assertions),additem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_assertions),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_assertions),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_assertions),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_assertions),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_assertions),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_assertions),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_assertions),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_assertions),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_assertions),additem)==(aa: ITEMS | card(content)<max_elem ==> content:=content\/{aa} [] not(card(content)<max_elem) ==> skip);
  List_Substitution(Machine(Bagmch_assertions),additem)==(IF card(content)<max_elem THEN content:=content\/{aa} END);
  List_Substitution(Machine(Bagmch_assertions),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_assertions),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_assertions),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_assertions),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_assertions))==(max_elem);
  Inherited_List_Constants(Machine(Bagmch_assertions))==(?);
  List_Constants(Machine(Bagmch_assertions))==(max_elem)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_assertions),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_assertions))==(?);
  Context_List_Defered(Machine(Bagmch_assertions))==(?);
  Context_List_Sets(Machine(Bagmch_assertions))==(?);
  List_Valuable_Sets(Machine(Bagmch_assertions))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_assertions))==(?);
  Inherited_List_Defered(Machine(Bagmch_assertions))==(?);
  Inherited_List_Sets(Machine(Bagmch_assertions))==(?);
  List_Enumerated(Machine(Bagmch_assertions))==(?);
  List_Defered(Machine(Bagmch_assertions))==(ITEMS);
  List_Sets(Machine(Bagmch_assertions))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_assertions))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_assertions))==(?);
  List_HiddenConstants(Machine(Bagmch_assertions))==(?);
  External_List_HiddenConstants(Machine(Bagmch_assertions))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_assertions))==(btrue);
  Context_List_Properties(Machine(Bagmch_assertions))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_assertions))==(btrue);
  List_Properties(Machine(Bagmch_assertions))==(max_elem = 3 & ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_assertions),additem)==(?);
  List_ANY_Var(Machine(Bagmch_assertions),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_assertions),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_assertions),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_assertions),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_assertions)) == (max_elem,ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_assertions);
  List_Of_HiddenCst_Ids(Machine(Bagmch_assertions)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_assertions)) == (max_elem);
  List_Of_VisibleVar_Ids(Machine(Bagmch_assertions)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_assertions)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_assertions)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Bagmch_assertions)) == (Type(max_elem) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_assertions)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_assertions)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_assertions)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
