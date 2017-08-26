Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_redundant_reverse))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_redundant_reverse))==(Machine(Bagmch_redundant_reverse));
  Level(Machine(Bagmch_redundant_reverse))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_redundant_reverse)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_redundant_reverse))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_redundant_reverse))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_redundant_reverse))==(?);
  List_Includes(Machine(Bagmch_redundant_reverse))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_redundant_reverse))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_redundant_reverse))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_redundant_reverse))==(?);
  Context_List_Variables(Machine(Bagmch_redundant_reverse))==(?);
  Abstract_List_Variables(Machine(Bagmch_redundant_reverse))==(?);
  Local_List_Variables(Machine(Bagmch_redundant_reverse))==(content);
  List_Variables(Machine(Bagmch_redundant_reverse))==(content);
  External_List_Variables(Machine(Bagmch_redundant_reverse))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_redundant_reverse))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_redundant_reverse))==(?);
  External_List_VisibleVariables(Machine(Bagmch_redundant_reverse))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_redundant_reverse))==(?);
  List_VisibleVariables(Machine(Bagmch_redundant_reverse))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_redundant_reverse))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_redundant_reverse))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_redundant_reverse))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_redundant_reverse))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_redundant_reverse))==(btrue);
  Context_List_Invariant(Machine(Bagmch_redundant_reverse))==(btrue);
  List_Invariant(Machine(Bagmch_redundant_reverse))==(content: POW(ITEMS) & content: FIN(content) & card(content)<=max_elem & card(content)<=max_elem+1 & card(content)<=max_elem+2 & card(content)<=max_elem+3 & card(content)<=max_elem+4)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_redundant_reverse))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_redundant_reverse))==(btrue);
  Context_List_Assertions(Machine(Bagmch_redundant_reverse))==(btrue);
  List_Assertions(Machine(Bagmch_redundant_reverse))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_redundant_reverse))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_redundant_reverse))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_redundant_reverse))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_redundant_reverse))==(skip);
  List_Initialisation(Machine(Bagmch_redundant_reverse))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_redundant_reverse))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_redundant_reverse))==(btrue);
  List_Constraints(Machine(Bagmch_redundant_reverse))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_redundant_reverse))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_redundant_reverse))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_redundant_reverse),additem)==(aa);
  List_Input(Machine(Bagmch_redundant_reverse),removeitem)==(aa);
  List_Input(Machine(Bagmch_redundant_reverse),getcontents)==(?);
  List_Input(Machine(Bagmch_redundant_reverse),howmany)==(?);
  List_Input(Machine(Bagmch_redundant_reverse),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_redundant_reverse),additem)==(?);
  List_Output(Machine(Bagmch_redundant_reverse),removeitem)==(?);
  List_Output(Machine(Bagmch_redundant_reverse),getcontents)==(items);
  List_Output(Machine(Bagmch_redundant_reverse),howmany)==(nn);
  List_Output(Machine(Bagmch_redundant_reverse),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_redundant_reverse),additem)==(additem(aa));
  List_Header(Machine(Bagmch_redundant_reverse),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_redundant_reverse),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_redundant_reverse),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_redundant_reverse),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_redundant_reverse),additem)==(aa: ITEMS & card(content)<max_elem);
  List_Precondition(Machine(Bagmch_redundant_reverse),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_redundant_reverse),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_redundant_reverse),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_redundant_reverse),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_redundant_reverse),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_redundant_reverse),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_redundant_reverse),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_redundant_reverse),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_redundant_reverse),additem)==(aa: ITEMS & card(content)<max_elem | content:=content\/{aa});
  List_Substitution(Machine(Bagmch_redundant_reverse),additem)==(content:=content\/{aa});
  List_Substitution(Machine(Bagmch_redundant_reverse),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_redundant_reverse),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_redundant_reverse),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_redundant_reverse),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_redundant_reverse))==(max_elem);
  Inherited_List_Constants(Machine(Bagmch_redundant_reverse))==(?);
  List_Constants(Machine(Bagmch_redundant_reverse))==(max_elem)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_redundant_reverse),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_redundant_reverse))==(?);
  Context_List_Defered(Machine(Bagmch_redundant_reverse))==(?);
  Context_List_Sets(Machine(Bagmch_redundant_reverse))==(?);
  List_Valuable_Sets(Machine(Bagmch_redundant_reverse))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_redundant_reverse))==(?);
  Inherited_List_Defered(Machine(Bagmch_redundant_reverse))==(?);
  Inherited_List_Sets(Machine(Bagmch_redundant_reverse))==(?);
  List_Enumerated(Machine(Bagmch_redundant_reverse))==(?);
  List_Defered(Machine(Bagmch_redundant_reverse))==(ITEMS);
  List_Sets(Machine(Bagmch_redundant_reverse))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_redundant_reverse))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_redundant_reverse))==(?);
  List_HiddenConstants(Machine(Bagmch_redundant_reverse))==(?);
  External_List_HiddenConstants(Machine(Bagmch_redundant_reverse))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_redundant_reverse))==(btrue);
  Context_List_Properties(Machine(Bagmch_redundant_reverse))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_redundant_reverse))==(btrue);
  List_Properties(Machine(Bagmch_redundant_reverse))==(max_elem: NAT & ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_redundant_reverse),additem)==(?);
  List_ANY_Var(Machine(Bagmch_redundant_reverse),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_redundant_reverse),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_redundant_reverse),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_redundant_reverse),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_redundant_reverse)) == (max_elem,ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_redundant_reverse);
  List_Of_HiddenCst_Ids(Machine(Bagmch_redundant_reverse)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_redundant_reverse)) == (max_elem);
  List_Of_VisibleVar_Ids(Machine(Bagmch_redundant_reverse)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_redundant_reverse)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_redundant_reverse)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Bagmch_redundant_reverse)) == (Type(max_elem) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_redundant_reverse)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_redundant_reverse)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_redundant_reverse)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
