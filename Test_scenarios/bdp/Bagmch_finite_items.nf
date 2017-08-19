Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_finite_items))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_finite_items))==(Machine(Bagmch_finite_items));
  Level(Machine(Bagmch_finite_items))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_finite_items)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_finite_items))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_finite_items))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_finite_items))==(?);
  List_Includes(Machine(Bagmch_finite_items))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_finite_items))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_finite_items))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_finite_items))==(?);
  Context_List_Variables(Machine(Bagmch_finite_items))==(?);
  Abstract_List_Variables(Machine(Bagmch_finite_items))==(?);
  Local_List_Variables(Machine(Bagmch_finite_items))==(content);
  List_Variables(Machine(Bagmch_finite_items))==(content);
  External_List_Variables(Machine(Bagmch_finite_items))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_finite_items))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_finite_items))==(?);
  External_List_VisibleVariables(Machine(Bagmch_finite_items))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_finite_items))==(?);
  List_VisibleVariables(Machine(Bagmch_finite_items))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_finite_items))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_finite_items))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_finite_items))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_finite_items))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_finite_items))==(btrue);
  Context_List_Invariant(Machine(Bagmch_finite_items))==(btrue);
  List_Invariant(Machine(Bagmch_finite_items))==(content <: ITEMS)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_finite_items))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_finite_items))==(btrue);
  Context_List_Assertions(Machine(Bagmch_finite_items))==(btrue);
  List_Assertions(Machine(Bagmch_finite_items))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_finite_items))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_finite_items))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_finite_items))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_finite_items))==(skip);
  List_Initialisation(Machine(Bagmch_finite_items))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_finite_items))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_finite_items))==(btrue);
  List_Constraints(Machine(Bagmch_finite_items))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_finite_items))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_finite_items))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_finite_items),additem)==(aa);
  List_Input(Machine(Bagmch_finite_items),removeitem)==(aa);
  List_Input(Machine(Bagmch_finite_items),getcontents)==(?);
  List_Input(Machine(Bagmch_finite_items),howmany)==(?);
  List_Input(Machine(Bagmch_finite_items),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_finite_items),additem)==(?);
  List_Output(Machine(Bagmch_finite_items),removeitem)==(?);
  List_Output(Machine(Bagmch_finite_items),getcontents)==(output);
  List_Output(Machine(Bagmch_finite_items),howmany)==(nn);
  List_Output(Machine(Bagmch_finite_items),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_finite_items),additem)==(additem(aa));
  List_Header(Machine(Bagmch_finite_items),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_finite_items),getcontents)==(output <-- getcontents);
  List_Header(Machine(Bagmch_finite_items),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_finite_items),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_finite_items),additem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_finite_items),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_finite_items),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_finite_items),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_finite_items),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_finite_items),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_finite_items),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_finite_items),getcontents)==(btrue | output:=content);
  Expanded_List_Substitution(Machine(Bagmch_finite_items),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_finite_items),additem)==(aa: ITEMS | content:=content\/{aa});
  List_Substitution(Machine(Bagmch_finite_items),additem)==(content:=content\/{aa});
  List_Substitution(Machine(Bagmch_finite_items),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_finite_items),getcontents)==(output:=content);
  List_Substitution(Machine(Bagmch_finite_items),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_finite_items),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_finite_items))==(?);
  Inherited_List_Constants(Machine(Bagmch_finite_items))==(?);
  List_Constants(Machine(Bagmch_finite_items))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_finite_items),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_finite_items))==(?);
  Context_List_Defered(Machine(Bagmch_finite_items))==(?);
  Context_List_Sets(Machine(Bagmch_finite_items))==(?);
  List_Valuable_Sets(Machine(Bagmch_finite_items))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_finite_items))==(?);
  Inherited_List_Defered(Machine(Bagmch_finite_items))==(?);
  Inherited_List_Sets(Machine(Bagmch_finite_items))==(?);
  List_Enumerated(Machine(Bagmch_finite_items))==(?);
  List_Defered(Machine(Bagmch_finite_items))==(ITEMS);
  List_Sets(Machine(Bagmch_finite_items))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_finite_items))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_finite_items))==(?);
  List_HiddenConstants(Machine(Bagmch_finite_items))==(?);
  External_List_HiddenConstants(Machine(Bagmch_finite_items))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_finite_items))==(btrue);
  Context_List_Properties(Machine(Bagmch_finite_items))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_finite_items))==(btrue);
  List_Properties(Machine(Bagmch_finite_items))==(ITEMS: FIN(ITEMS) & ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_finite_items),additem)==(?);
  List_ANY_Var(Machine(Bagmch_finite_items),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_finite_items),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_finite_items),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_finite_items),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_finite_items)) == (ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_finite_items);
  List_Of_HiddenCst_Ids(Machine(Bagmch_finite_items)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_finite_items)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_finite_items)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_finite_items)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_finite_items)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_finite_items)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_finite_items)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_finite_items)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
