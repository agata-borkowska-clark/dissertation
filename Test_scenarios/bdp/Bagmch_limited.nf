Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_limited))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_limited))==(Machine(Bagmch_limited));
  Level(Machine(Bagmch_limited))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_limited)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_limited))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_limited))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_limited))==(?);
  List_Includes(Machine(Bagmch_limited))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_limited))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_limited))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_limited))==(?);
  Context_List_Variables(Machine(Bagmch_limited))==(?);
  Abstract_List_Variables(Machine(Bagmch_limited))==(?);
  Local_List_Variables(Machine(Bagmch_limited))==(content);
  List_Variables(Machine(Bagmch_limited))==(content);
  External_List_Variables(Machine(Bagmch_limited))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_limited))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_limited))==(?);
  External_List_VisibleVariables(Machine(Bagmch_limited))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_limited))==(?);
  List_VisibleVariables(Machine(Bagmch_limited))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_limited))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_limited))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_limited))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_limited))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_limited))==(btrue);
  Context_List_Invariant(Machine(Bagmch_limited))==(btrue);
  List_Invariant(Machine(Bagmch_limited))==(content: FIN(ITEMS) & card(content)<=max_elem)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_limited))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_limited))==(btrue);
  Context_List_Assertions(Machine(Bagmch_limited))==(btrue);
  List_Assertions(Machine(Bagmch_limited))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_limited))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_limited))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_limited))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_limited))==(skip);
  List_Initialisation(Machine(Bagmch_limited))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_limited))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_limited))==(btrue);
  List_Constraints(Machine(Bagmch_limited))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_limited))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_limited))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_limited),additem)==(aa);
  List_Input(Machine(Bagmch_limited),removeitem)==(aa);
  List_Input(Machine(Bagmch_limited),getcontents)==(?);
  List_Input(Machine(Bagmch_limited),howmany)==(?);
  List_Input(Machine(Bagmch_limited),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_limited),additem)==(?);
  List_Output(Machine(Bagmch_limited),removeitem)==(?);
  List_Output(Machine(Bagmch_limited),getcontents)==(items);
  List_Output(Machine(Bagmch_limited),howmany)==(nn);
  List_Output(Machine(Bagmch_limited),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_limited),additem)==(additem(aa));
  List_Header(Machine(Bagmch_limited),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_limited),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_limited),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_limited),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_limited),additem)==(aa: ITEMS & card(content)<max_elem);
  List_Precondition(Machine(Bagmch_limited),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_limited),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_limited),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_limited),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_limited),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_limited),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_limited),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_limited),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_limited),additem)==(aa: ITEMS & card(content)<max_elem | content:=content\/{aa});
  List_Substitution(Machine(Bagmch_limited),additem)==(content:=content\/{aa});
  List_Substitution(Machine(Bagmch_limited),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_limited),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_limited),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_limited),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_limited))==(max_elem);
  Inherited_List_Constants(Machine(Bagmch_limited))==(?);
  List_Constants(Machine(Bagmch_limited))==(max_elem)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_limited),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_limited))==(?);
  Context_List_Defered(Machine(Bagmch_limited))==(?);
  Context_List_Sets(Machine(Bagmch_limited))==(?);
  List_Valuable_Sets(Machine(Bagmch_limited))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_limited))==(?);
  Inherited_List_Defered(Machine(Bagmch_limited))==(?);
  Inherited_List_Sets(Machine(Bagmch_limited))==(?);
  List_Enumerated(Machine(Bagmch_limited))==(?);
  List_Defered(Machine(Bagmch_limited))==(ITEMS);
  List_Sets(Machine(Bagmch_limited))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_limited))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_limited))==(?);
  List_HiddenConstants(Machine(Bagmch_limited))==(?);
  External_List_HiddenConstants(Machine(Bagmch_limited))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_limited))==(btrue);
  Context_List_Properties(Machine(Bagmch_limited))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_limited))==(btrue);
  List_Properties(Machine(Bagmch_limited))==(max_elem: NAT & ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_limited),additem)==(?);
  List_ANY_Var(Machine(Bagmch_limited),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_limited),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_limited),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_limited),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_limited)) == (max_elem,ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_limited);
  List_Of_HiddenCst_Ids(Machine(Bagmch_limited)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_limited)) == (max_elem);
  List_Of_VisibleVar_Ids(Machine(Bagmch_limited)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_limited)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_limited)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Bagmch_limited)) == (Type(max_elem) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_limited)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_limited)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_limited)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
