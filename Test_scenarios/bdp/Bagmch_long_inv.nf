Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_long_inv))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_long_inv))==(Machine(Bagmch_long_inv));
  Level(Machine(Bagmch_long_inv))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_long_inv)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_long_inv))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_long_inv))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_long_inv))==(?);
  List_Includes(Machine(Bagmch_long_inv))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_long_inv))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_long_inv))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_long_inv))==(?);
  Context_List_Variables(Machine(Bagmch_long_inv))==(?);
  Abstract_List_Variables(Machine(Bagmch_long_inv))==(?);
  Local_List_Variables(Machine(Bagmch_long_inv))==(content);
  List_Variables(Machine(Bagmch_long_inv))==(content);
  External_List_Variables(Machine(Bagmch_long_inv))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_long_inv))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_long_inv))==(?);
  External_List_VisibleVariables(Machine(Bagmch_long_inv))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_long_inv))==(?);
  List_VisibleVariables(Machine(Bagmch_long_inv))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_long_inv))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_long_inv))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_long_inv))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_long_inv))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_long_inv))==(btrue);
  Context_List_Invariant(Machine(Bagmch_long_inv))==(btrue);
  List_Invariant(Machine(Bagmch_long_inv))==(content: POW(ITEMS) & content: FIN(content))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_long_inv))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_long_inv))==(btrue);
  Context_List_Assertions(Machine(Bagmch_long_inv))==(btrue);
  List_Assertions(Machine(Bagmch_long_inv))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_long_inv))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_long_inv))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_long_inv))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_long_inv))==(skip);
  List_Initialisation(Machine(Bagmch_long_inv))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_long_inv))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_long_inv))==(btrue);
  List_Constraints(Machine(Bagmch_long_inv))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_long_inv))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_long_inv))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_long_inv),additem)==(aa);
  List_Input(Machine(Bagmch_long_inv),removeitem)==(aa);
  List_Input(Machine(Bagmch_long_inv),getcontents)==(?);
  List_Input(Machine(Bagmch_long_inv),howmany)==(?);
  List_Input(Machine(Bagmch_long_inv),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_long_inv),additem)==(?);
  List_Output(Machine(Bagmch_long_inv),removeitem)==(?);
  List_Output(Machine(Bagmch_long_inv),getcontents)==(items);
  List_Output(Machine(Bagmch_long_inv),howmany)==(nn);
  List_Output(Machine(Bagmch_long_inv),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_long_inv),additem)==(additem(aa));
  List_Header(Machine(Bagmch_long_inv),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_long_inv),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_long_inv),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_long_inv),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_long_inv),additem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_long_inv),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_long_inv),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_long_inv),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_long_inv),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_long_inv),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_long_inv),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_long_inv),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_long_inv),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_long_inv),additem)==(aa: ITEMS | content:=content\/{aa});
  List_Substitution(Machine(Bagmch_long_inv),additem)==(content:=content\/{aa});
  List_Substitution(Machine(Bagmch_long_inv),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_long_inv),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_long_inv),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_long_inv),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_long_inv))==(?);
  Inherited_List_Constants(Machine(Bagmch_long_inv))==(?);
  List_Constants(Machine(Bagmch_long_inv))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_long_inv),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_long_inv))==(?);
  Context_List_Defered(Machine(Bagmch_long_inv))==(?);
  Context_List_Sets(Machine(Bagmch_long_inv))==(?);
  List_Valuable_Sets(Machine(Bagmch_long_inv))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_long_inv))==(?);
  Inherited_List_Defered(Machine(Bagmch_long_inv))==(?);
  Inherited_List_Sets(Machine(Bagmch_long_inv))==(?);
  List_Enumerated(Machine(Bagmch_long_inv))==(?);
  List_Defered(Machine(Bagmch_long_inv))==(ITEMS);
  List_Sets(Machine(Bagmch_long_inv))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_long_inv))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_long_inv))==(?);
  List_HiddenConstants(Machine(Bagmch_long_inv))==(?);
  External_List_HiddenConstants(Machine(Bagmch_long_inv))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_long_inv))==(btrue);
  Context_List_Properties(Machine(Bagmch_long_inv))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_long_inv))==(btrue);
  List_Properties(Machine(Bagmch_long_inv))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_long_inv),additem)==(?);
  List_ANY_Var(Machine(Bagmch_long_inv),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_long_inv),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_long_inv),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_long_inv),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_long_inv)) == (ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_long_inv);
  List_Of_HiddenCst_Ids(Machine(Bagmch_long_inv)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_long_inv)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_long_inv)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_long_inv)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_long_inv)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_long_inv)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_long_inv)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_long_inv)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
