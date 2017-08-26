Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_redundant))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_redundant))==(Machine(Bagmch_redundant));
  Level(Machine(Bagmch_redundant))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_redundant)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_redundant))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_redundant))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_redundant))==(?);
  List_Includes(Machine(Bagmch_redundant))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_redundant))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_redundant))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_redundant))==(?);
  Context_List_Variables(Machine(Bagmch_redundant))==(?);
  Abstract_List_Variables(Machine(Bagmch_redundant))==(?);
  Local_List_Variables(Machine(Bagmch_redundant))==(content);
  List_Variables(Machine(Bagmch_redundant))==(content);
  External_List_Variables(Machine(Bagmch_redundant))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_redundant))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_redundant))==(?);
  External_List_VisibleVariables(Machine(Bagmch_redundant))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_redundant))==(?);
  List_VisibleVariables(Machine(Bagmch_redundant))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_redundant))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_redundant))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_redundant))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_redundant))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_redundant))==(btrue);
  Context_List_Invariant(Machine(Bagmch_redundant))==(btrue);
  List_Invariant(Machine(Bagmch_redundant))==(content: POW(ITEMS) & content: FIN(content) & card(content)<=max_elem+4 & card(content)<=max_elem+3 & card(content)<=max_elem+2 & card(content)<=max_elem+1 & card(content)<=max_elem)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_redundant))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_redundant))==(btrue);
  Context_List_Assertions(Machine(Bagmch_redundant))==(btrue);
  List_Assertions(Machine(Bagmch_redundant))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_redundant))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_redundant))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_redundant))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_redundant))==(skip);
  List_Initialisation(Machine(Bagmch_redundant))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_redundant))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_redundant))==(btrue);
  List_Constraints(Machine(Bagmch_redundant))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_redundant))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_redundant))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_redundant),additem)==(aa);
  List_Input(Machine(Bagmch_redundant),removeitem)==(aa);
  List_Input(Machine(Bagmch_redundant),getcontents)==(?);
  List_Input(Machine(Bagmch_redundant),howmany)==(?);
  List_Input(Machine(Bagmch_redundant),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_redundant),additem)==(?);
  List_Output(Machine(Bagmch_redundant),removeitem)==(?);
  List_Output(Machine(Bagmch_redundant),getcontents)==(items);
  List_Output(Machine(Bagmch_redundant),howmany)==(nn);
  List_Output(Machine(Bagmch_redundant),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_redundant),additem)==(additem(aa));
  List_Header(Machine(Bagmch_redundant),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_redundant),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_redundant),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_redundant),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_redundant),additem)==(aa: ITEMS & card(content)<max_elem);
  List_Precondition(Machine(Bagmch_redundant),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_redundant),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_redundant),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_redundant),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_redundant),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_redundant),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_redundant),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_redundant),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_redundant),additem)==(aa: ITEMS & card(content)<max_elem | content:=content\/{aa});
  List_Substitution(Machine(Bagmch_redundant),additem)==(content:=content\/{aa});
  List_Substitution(Machine(Bagmch_redundant),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_redundant),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_redundant),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_redundant),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_redundant))==(max_elem);
  Inherited_List_Constants(Machine(Bagmch_redundant))==(?);
  List_Constants(Machine(Bagmch_redundant))==(max_elem)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_redundant),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_redundant))==(?);
  Context_List_Defered(Machine(Bagmch_redundant))==(?);
  Context_List_Sets(Machine(Bagmch_redundant))==(?);
  List_Valuable_Sets(Machine(Bagmch_redundant))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_redundant))==(?);
  Inherited_List_Defered(Machine(Bagmch_redundant))==(?);
  Inherited_List_Sets(Machine(Bagmch_redundant))==(?);
  List_Enumerated(Machine(Bagmch_redundant))==(?);
  List_Defered(Machine(Bagmch_redundant))==(ITEMS);
  List_Sets(Machine(Bagmch_redundant))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_redundant))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_redundant))==(?);
  List_HiddenConstants(Machine(Bagmch_redundant))==(?);
  External_List_HiddenConstants(Machine(Bagmch_redundant))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_redundant))==(btrue);
  Context_List_Properties(Machine(Bagmch_redundant))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_redundant))==(btrue);
  List_Properties(Machine(Bagmch_redundant))==(max_elem: NAT & ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_redundant),additem)==(?);
  List_ANY_Var(Machine(Bagmch_redundant),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_redundant),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_redundant),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_redundant),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_redundant)) == (max_elem,ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_redundant);
  List_Of_HiddenCst_Ids(Machine(Bagmch_redundant)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_redundant)) == (max_elem);
  List_Of_VisibleVar_Ids(Machine(Bagmch_redundant)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_redundant)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_redundant)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Bagmch_redundant)) == (Type(max_elem) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_redundant)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_redundant)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_redundant)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
