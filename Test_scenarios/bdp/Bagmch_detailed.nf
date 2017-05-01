Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_detailed))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_detailed))==(Machine(Bagmch_detailed));
  Level(Machine(Bagmch_detailed))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_detailed)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_detailed))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_detailed))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_detailed))==(?);
  List_Includes(Machine(Bagmch_detailed))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_detailed))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_detailed))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_detailed))==(?);
  Context_List_Variables(Machine(Bagmch_detailed))==(?);
  Abstract_List_Variables(Machine(Bagmch_detailed))==(?);
  Local_List_Variables(Machine(Bagmch_detailed))==(content);
  List_Variables(Machine(Bagmch_detailed))==(content);
  External_List_Variables(Machine(Bagmch_detailed))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_detailed))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_detailed))==(?);
  External_List_VisibleVariables(Machine(Bagmch_detailed))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_detailed))==(?);
  List_VisibleVariables(Machine(Bagmch_detailed))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_detailed))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_detailed))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_detailed))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_detailed))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_detailed))==(btrue);
  Context_List_Invariant(Machine(Bagmch_detailed))==(btrue);
  List_Invariant(Machine(Bagmch_detailed))==(content <: ITEMS & content: FIN(content) & card(content)<=max_elem)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_detailed))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_detailed))==(btrue);
  Context_List_Assertions(Machine(Bagmch_detailed))==(btrue);
  List_Assertions(Machine(Bagmch_detailed))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_detailed))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_detailed))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_detailed))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_detailed))==(skip);
  List_Initialisation(Machine(Bagmch_detailed))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_detailed))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_detailed))==(btrue);
  List_Constraints(Machine(Bagmch_detailed))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_detailed))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_detailed))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_detailed),additem)==(aa);
  List_Input(Machine(Bagmch_detailed),removeitem)==(aa);
  List_Input(Machine(Bagmch_detailed),getcontents)==(?);
  List_Input(Machine(Bagmch_detailed),howmany)==(?);
  List_Input(Machine(Bagmch_detailed),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_detailed),additem)==(?);
  List_Output(Machine(Bagmch_detailed),removeitem)==(?);
  List_Output(Machine(Bagmch_detailed),getcontents)==(items);
  List_Output(Machine(Bagmch_detailed),howmany)==(nn);
  List_Output(Machine(Bagmch_detailed),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_detailed),additem)==(additem(aa));
  List_Header(Machine(Bagmch_detailed),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_detailed),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_detailed),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_detailed),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_detailed),additem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_detailed),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_detailed),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_detailed),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_detailed),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_detailed),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_detailed),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_detailed),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_detailed),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_detailed),additem)==(aa: ITEMS | card(content)<max_elem ==> content:=content\/{aa} [] not(card(content)<max_elem) ==> skip);
  List_Substitution(Machine(Bagmch_detailed),additem)==(IF card(content)<max_elem THEN content:=content\/{aa} END);
  List_Substitution(Machine(Bagmch_detailed),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_detailed),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_detailed),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_detailed),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_detailed))==(max_elem);
  Inherited_List_Constants(Machine(Bagmch_detailed))==(?);
  List_Constants(Machine(Bagmch_detailed))==(max_elem)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_detailed),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_detailed))==(?);
  Context_List_Defered(Machine(Bagmch_detailed))==(?);
  Context_List_Sets(Machine(Bagmch_detailed))==(?);
  List_Valuable_Sets(Machine(Bagmch_detailed))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_detailed))==(?);
  Inherited_List_Defered(Machine(Bagmch_detailed))==(?);
  Inherited_List_Sets(Machine(Bagmch_detailed))==(?);
  List_Enumerated(Machine(Bagmch_detailed))==(?);
  List_Defered(Machine(Bagmch_detailed))==(ITEMS);
  List_Sets(Machine(Bagmch_detailed))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_detailed))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_detailed))==(?);
  List_HiddenConstants(Machine(Bagmch_detailed))==(?);
  External_List_HiddenConstants(Machine(Bagmch_detailed))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_detailed))==(btrue);
  Context_List_Properties(Machine(Bagmch_detailed))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_detailed))==(btrue);
  List_Properties(Machine(Bagmch_detailed))==(max_elem = 3 & ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_detailed),additem)==(?);
  List_ANY_Var(Machine(Bagmch_detailed),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_detailed),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_detailed),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_detailed),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_detailed)) == (max_elem,ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_detailed);
  List_Of_HiddenCst_Ids(Machine(Bagmch_detailed)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_detailed)) == (max_elem);
  List_Of_VisibleVar_Ids(Machine(Bagmch_detailed)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_detailed)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_detailed)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Bagmch_detailed)) == (Type(max_elem) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_detailed)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_detailed)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_detailed)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
