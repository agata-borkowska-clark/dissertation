Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_wrong_order))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_wrong_order))==(Machine(Bagmch_wrong_order));
  Level(Machine(Bagmch_wrong_order))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_wrong_order)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_wrong_order))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_wrong_order))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_wrong_order))==(?);
  List_Includes(Machine(Bagmch_wrong_order))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_wrong_order))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_wrong_order))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_wrong_order))==(?);
  Context_List_Variables(Machine(Bagmch_wrong_order))==(?);
  Abstract_List_Variables(Machine(Bagmch_wrong_order))==(?);
  Local_List_Variables(Machine(Bagmch_wrong_order))==(content);
  List_Variables(Machine(Bagmch_wrong_order))==(content);
  External_List_Variables(Machine(Bagmch_wrong_order))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_wrong_order))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_wrong_order))==(?);
  External_List_VisibleVariables(Machine(Bagmch_wrong_order))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_wrong_order))==(?);
  List_VisibleVariables(Machine(Bagmch_wrong_order))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_wrong_order))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_wrong_order))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_wrong_order))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_wrong_order))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_wrong_order))==(btrue);
  Context_List_Invariant(Machine(Bagmch_wrong_order))==(btrue);
  List_Invariant(Machine(Bagmch_wrong_order))==(content <: ITEMS & card(content)<=max_elem & content: FIN(content))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_wrong_order))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_wrong_order))==(btrue);
  Context_List_Assertions(Machine(Bagmch_wrong_order))==(btrue);
  List_Assertions(Machine(Bagmch_wrong_order))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_wrong_order))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_wrong_order))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_wrong_order))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_wrong_order))==(skip);
  List_Initialisation(Machine(Bagmch_wrong_order))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_wrong_order))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_wrong_order))==(btrue);
  List_Constraints(Machine(Bagmch_wrong_order))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_wrong_order))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_wrong_order))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_wrong_order),additem)==(aa);
  List_Input(Machine(Bagmch_wrong_order),removeitem)==(aa);
  List_Input(Machine(Bagmch_wrong_order),getcontents)==(?);
  List_Input(Machine(Bagmch_wrong_order),howmany)==(?);
  List_Input(Machine(Bagmch_wrong_order),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_wrong_order),additem)==(?);
  List_Output(Machine(Bagmch_wrong_order),removeitem)==(?);
  List_Output(Machine(Bagmch_wrong_order),getcontents)==(items);
  List_Output(Machine(Bagmch_wrong_order),howmany)==(nn);
  List_Output(Machine(Bagmch_wrong_order),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_wrong_order),additem)==(additem(aa));
  List_Header(Machine(Bagmch_wrong_order),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_wrong_order),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_wrong_order),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_wrong_order),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_wrong_order),additem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_wrong_order),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_wrong_order),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_wrong_order),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_wrong_order),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_wrong_order),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_wrong_order),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_wrong_order),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_wrong_order),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_wrong_order),additem)==(aa: ITEMS | card(content)<max_elem ==> content:=content\/{aa} [] not(card(content)<max_elem) ==> skip);
  List_Substitution(Machine(Bagmch_wrong_order),additem)==(IF card(content)<max_elem THEN content:=content\/{aa} END);
  List_Substitution(Machine(Bagmch_wrong_order),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_wrong_order),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_wrong_order),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_wrong_order),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_wrong_order))==(max_elem);
  Inherited_List_Constants(Machine(Bagmch_wrong_order))==(?);
  List_Constants(Machine(Bagmch_wrong_order))==(max_elem)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_wrong_order),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_wrong_order))==(?);
  Context_List_Defered(Machine(Bagmch_wrong_order))==(?);
  Context_List_Sets(Machine(Bagmch_wrong_order))==(?);
  List_Valuable_Sets(Machine(Bagmch_wrong_order))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_wrong_order))==(?);
  Inherited_List_Defered(Machine(Bagmch_wrong_order))==(?);
  Inherited_List_Sets(Machine(Bagmch_wrong_order))==(?);
  List_Enumerated(Machine(Bagmch_wrong_order))==(?);
  List_Defered(Machine(Bagmch_wrong_order))==(ITEMS);
  List_Sets(Machine(Bagmch_wrong_order))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_wrong_order))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_wrong_order))==(?);
  List_HiddenConstants(Machine(Bagmch_wrong_order))==(?);
  External_List_HiddenConstants(Machine(Bagmch_wrong_order))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_wrong_order))==(btrue);
  Context_List_Properties(Machine(Bagmch_wrong_order))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_wrong_order))==(btrue);
  List_Properties(Machine(Bagmch_wrong_order))==(max_elem = 3 & ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_wrong_order),additem)==(?);
  List_ANY_Var(Machine(Bagmch_wrong_order),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_wrong_order),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_wrong_order),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_wrong_order),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_wrong_order)) == (max_elem,ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_wrong_order);
  List_Of_HiddenCst_Ids(Machine(Bagmch_wrong_order)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_wrong_order)) == (max_elem);
  List_Of_VisibleVar_Ids(Machine(Bagmch_wrong_order)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_wrong_order)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_wrong_order)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Bagmch_wrong_order)) == (Type(max_elem) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_wrong_order)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_wrong_order)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_wrong_order)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
