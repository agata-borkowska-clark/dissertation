Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_nondet))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_nondet))==(Machine(Bagmch_nondet));
  Level(Machine(Bagmch_nondet))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_nondet)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_nondet))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_nondet))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_nondet))==(?);
  List_Includes(Machine(Bagmch_nondet))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_nondet))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_nondet))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_nondet))==(?);
  Context_List_Variables(Machine(Bagmch_nondet))==(?);
  Abstract_List_Variables(Machine(Bagmch_nondet))==(?);
  Local_List_Variables(Machine(Bagmch_nondet))==(content);
  List_Variables(Machine(Bagmch_nondet))==(content);
  External_List_Variables(Machine(Bagmch_nondet))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_nondet))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_nondet))==(?);
  External_List_VisibleVariables(Machine(Bagmch_nondet))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_nondet))==(?);
  List_VisibleVariables(Machine(Bagmch_nondet))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_nondet))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_nondet))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_nondet))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_nondet))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_nondet))==(btrue);
  Context_List_Invariant(Machine(Bagmch_nondet))==(btrue);
  List_Invariant(Machine(Bagmch_nondet))==(content: FIN(ITEMS))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_nondet))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_nondet))==(btrue);
  Context_List_Assertions(Machine(Bagmch_nondet))==(btrue);
  List_Assertions(Machine(Bagmch_nondet))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_nondet))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_nondet))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_nondet))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_nondet))==(skip);
  List_Initialisation(Machine(Bagmch_nondet))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_nondet))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_nondet))==(btrue);
  List_Constraints(Machine(Bagmch_nondet))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_nondet))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_nondet))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_nondet),additem)==(?);
  List_Input(Machine(Bagmch_nondet),removeitem)==(?);
  List_Input(Machine(Bagmch_nondet),getcontents)==(?);
  List_Input(Machine(Bagmch_nondet),howmany)==(?);
  List_Input(Machine(Bagmch_nondet),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_nondet),additem)==(?);
  List_Output(Machine(Bagmch_nondet),removeitem)==(?);
  List_Output(Machine(Bagmch_nondet),getcontents)==(items);
  List_Output(Machine(Bagmch_nondet),howmany)==(nn);
  List_Output(Machine(Bagmch_nondet),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_nondet),additem)==(additem);
  List_Header(Machine(Bagmch_nondet),removeitem)==(removeitem);
  List_Header(Machine(Bagmch_nondet),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_nondet),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_nondet),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_nondet),additem)==(btrue);
  List_Precondition(Machine(Bagmch_nondet),removeitem)==(content/={});
  List_Precondition(Machine(Bagmch_nondet),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_nondet),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_nondet),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_nondet),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_nondet),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_nondet),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_nondet),removeitem)==(content/={} | @aa.(aa: content ==> content:=content-{aa}));
  Expanded_List_Substitution(Machine(Bagmch_nondet),additem)==(btrue | @aa.(aa: content ==> content:=content\/{aa}));
  List_Substitution(Machine(Bagmch_nondet),additem)==(ANY aa WHERE aa: content THEN content:=content\/{aa} END);
  List_Substitution(Machine(Bagmch_nondet),removeitem)==(ANY aa WHERE aa: content THEN content:=content-{aa} END);
  List_Substitution(Machine(Bagmch_nondet),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_nondet),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_nondet),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_nondet))==(?);
  Inherited_List_Constants(Machine(Bagmch_nondet))==(?);
  List_Constants(Machine(Bagmch_nondet))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_nondet),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_nondet))==(?);
  Context_List_Defered(Machine(Bagmch_nondet))==(?);
  Context_List_Sets(Machine(Bagmch_nondet))==(?);
  List_Valuable_Sets(Machine(Bagmch_nondet))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_nondet))==(?);
  Inherited_List_Defered(Machine(Bagmch_nondet))==(?);
  Inherited_List_Sets(Machine(Bagmch_nondet))==(?);
  List_Enumerated(Machine(Bagmch_nondet))==(?);
  List_Defered(Machine(Bagmch_nondet))==(ITEMS);
  List_Sets(Machine(Bagmch_nondet))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_nondet))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_nondet))==(?);
  List_HiddenConstants(Machine(Bagmch_nondet))==(?);
  External_List_HiddenConstants(Machine(Bagmch_nondet))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_nondet))==(btrue);
  Context_List_Properties(Machine(Bagmch_nondet))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_nondet))==(btrue);
  List_Properties(Machine(Bagmch_nondet))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_nondet),additem)==(Var(aa) == atype(ITEMS,?,?));
  List_ANY_Var(Machine(Bagmch_nondet),removeitem)==(Var(aa) == atype(ITEMS,?,?));
  List_ANY_Var(Machine(Bagmch_nondet),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_nondet),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_nondet),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_nondet)) == (ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_nondet);
  List_Of_HiddenCst_Ids(Machine(Bagmch_nondet)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_nondet)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_nondet)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_nondet)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_nondet)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_nondet)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_nondet)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,No_type);Type(additem) == Cst(No_type,No_type));
  Observers(Machine(Bagmch_nondet)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
