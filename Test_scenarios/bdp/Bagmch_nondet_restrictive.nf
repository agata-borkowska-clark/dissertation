Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_nondet_restrictive))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_nondet_restrictive))==(Machine(Bagmch_nondet_restrictive));
  Level(Machine(Bagmch_nondet_restrictive))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_nondet_restrictive)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_nondet_restrictive))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_nondet_restrictive))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_nondet_restrictive))==(?);
  List_Includes(Machine(Bagmch_nondet_restrictive))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_nondet_restrictive))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_nondet_restrictive))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_nondet_restrictive))==(?);
  Context_List_Variables(Machine(Bagmch_nondet_restrictive))==(?);
  Abstract_List_Variables(Machine(Bagmch_nondet_restrictive))==(?);
  Local_List_Variables(Machine(Bagmch_nondet_restrictive))==(content);
  List_Variables(Machine(Bagmch_nondet_restrictive))==(content);
  External_List_Variables(Machine(Bagmch_nondet_restrictive))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_nondet_restrictive))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_nondet_restrictive))==(?);
  External_List_VisibleVariables(Machine(Bagmch_nondet_restrictive))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_nondet_restrictive))==(?);
  List_VisibleVariables(Machine(Bagmch_nondet_restrictive))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_nondet_restrictive))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_nondet_restrictive))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_nondet_restrictive))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_nondet_restrictive))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_nondet_restrictive))==(btrue);
  Context_List_Invariant(Machine(Bagmch_nondet_restrictive))==(btrue);
  List_Invariant(Machine(Bagmch_nondet_restrictive))==(content: FIN(ITEMS))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_nondet_restrictive))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_nondet_restrictive))==(btrue);
  Context_List_Assertions(Machine(Bagmch_nondet_restrictive))==(btrue);
  List_Assertions(Machine(Bagmch_nondet_restrictive))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_nondet_restrictive))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_nondet_restrictive))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_nondet_restrictive))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_nondet_restrictive))==(skip);
  List_Initialisation(Machine(Bagmch_nondet_restrictive))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_nondet_restrictive))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_nondet_restrictive))==(btrue);
  List_Constraints(Machine(Bagmch_nondet_restrictive))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_nondet_restrictive))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_nondet_restrictive))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_nondet_restrictive),additem)==(?);
  List_Input(Machine(Bagmch_nondet_restrictive),removeitem)==(?);
  List_Input(Machine(Bagmch_nondet_restrictive),getcontents)==(?);
  List_Input(Machine(Bagmch_nondet_restrictive),howmany)==(?);
  List_Input(Machine(Bagmch_nondet_restrictive),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_nondet_restrictive),additem)==(?);
  List_Output(Machine(Bagmch_nondet_restrictive),removeitem)==(?);
  List_Output(Machine(Bagmch_nondet_restrictive),getcontents)==(items);
  List_Output(Machine(Bagmch_nondet_restrictive),howmany)==(nn);
  List_Output(Machine(Bagmch_nondet_restrictive),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_nondet_restrictive),additem)==(additem);
  List_Header(Machine(Bagmch_nondet_restrictive),removeitem)==(removeitem);
  List_Header(Machine(Bagmch_nondet_restrictive),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_nondet_restrictive),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_nondet_restrictive),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_nondet_restrictive),additem)==(btrue);
  List_Precondition(Machine(Bagmch_nondet_restrictive),removeitem)==(not(content = {}));
  List_Precondition(Machine(Bagmch_nondet_restrictive),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_nondet_restrictive),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_nondet_restrictive),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_nondet_restrictive),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_nondet_restrictive),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_nondet_restrictive),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_nondet_restrictive),removeitem)==(not(content = {}) | @aa.(aa: content ==> content:=content-{aa}));
  Expanded_List_Substitution(Machine(Bagmch_nondet_restrictive),additem)==(btrue | @aa.(aa: ITEMS-content ==> content:=content\/{aa}));
  List_Substitution(Machine(Bagmch_nondet_restrictive),additem)==(ANY aa WHERE aa: ITEMS-content THEN content:=content\/{aa} END);
  List_Substitution(Machine(Bagmch_nondet_restrictive),removeitem)==(ANY aa WHERE aa: content THEN content:=content-{aa} END);
  List_Substitution(Machine(Bagmch_nondet_restrictive),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_nondet_restrictive),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_nondet_restrictive),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_nondet_restrictive))==(?);
  Inherited_List_Constants(Machine(Bagmch_nondet_restrictive))==(?);
  List_Constants(Machine(Bagmch_nondet_restrictive))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_nondet_restrictive),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_nondet_restrictive))==(?);
  Context_List_Defered(Machine(Bagmch_nondet_restrictive))==(?);
  Context_List_Sets(Machine(Bagmch_nondet_restrictive))==(?);
  List_Valuable_Sets(Machine(Bagmch_nondet_restrictive))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_nondet_restrictive))==(?);
  Inherited_List_Defered(Machine(Bagmch_nondet_restrictive))==(?);
  Inherited_List_Sets(Machine(Bagmch_nondet_restrictive))==(?);
  List_Enumerated(Machine(Bagmch_nondet_restrictive))==(?);
  List_Defered(Machine(Bagmch_nondet_restrictive))==(ITEMS);
  List_Sets(Machine(Bagmch_nondet_restrictive))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_nondet_restrictive))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_nondet_restrictive))==(?);
  List_HiddenConstants(Machine(Bagmch_nondet_restrictive))==(?);
  External_List_HiddenConstants(Machine(Bagmch_nondet_restrictive))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_nondet_restrictive))==(btrue);
  Context_List_Properties(Machine(Bagmch_nondet_restrictive))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_nondet_restrictive))==(btrue);
  List_Properties(Machine(Bagmch_nondet_restrictive))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_nondet_restrictive),additem)==(Var(aa) == atype(ITEMS,?,?));
  List_ANY_Var(Machine(Bagmch_nondet_restrictive),removeitem)==(Var(aa) == atype(ITEMS,?,?));
  List_ANY_Var(Machine(Bagmch_nondet_restrictive),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_nondet_restrictive),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_nondet_restrictive),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_nondet_restrictive)) == (ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_nondet_restrictive);
  List_Of_HiddenCst_Ids(Machine(Bagmch_nondet_restrictive)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_nondet_restrictive)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_nondet_restrictive)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_nondet_restrictive)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_nondet_restrictive)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_nondet_restrictive)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_nondet_restrictive)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,No_type);Type(additem) == Cst(No_type,No_type));
  Observers(Machine(Bagmch_nondet_restrictive)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
