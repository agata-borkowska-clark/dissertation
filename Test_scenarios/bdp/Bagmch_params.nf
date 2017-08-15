Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_params))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_params))==(Machine(Bagmch_params));
  Level(Machine(Bagmch_params))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_params)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_params))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_params))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_params))==(?);
  List_Includes(Machine(Bagmch_params))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_params))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_params))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_params))==(?);
  Context_List_Variables(Machine(Bagmch_params))==(?);
  Abstract_List_Variables(Machine(Bagmch_params))==(?);
  Local_List_Variables(Machine(Bagmch_params))==(content);
  List_Variables(Machine(Bagmch_params))==(content);
  External_List_Variables(Machine(Bagmch_params))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_params))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_params))==(?);
  External_List_VisibleVariables(Machine(Bagmch_params))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_params))==(?);
  List_VisibleVariables(Machine(Bagmch_params))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_params))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_params))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_params))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_params))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_params))==(btrue);
  Context_List_Invariant(Machine(Bagmch_params))==(btrue);
  List_Invariant(Machine(Bagmch_params))==(content: FIN(ITEMS))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_params))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_params))==(btrue);
  Context_List_Assertions(Machine(Bagmch_params))==(btrue);
  List_Assertions(Machine(Bagmch_params))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_params))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_params))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_params))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_params))==(skip);
  List_Initialisation(Machine(Bagmch_params))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_params))==(ITEMS)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_params))==(btrue);
  List_Constraints(Machine(Bagmch_params))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_params))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_params))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_params),additem)==(aa);
  List_Input(Machine(Bagmch_params),removeitem)==(aa);
  List_Input(Machine(Bagmch_params),getcontents)==(?);
  List_Input(Machine(Bagmch_params),howmany)==(?);
  List_Input(Machine(Bagmch_params),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_params),additem)==(?);
  List_Output(Machine(Bagmch_params),removeitem)==(?);
  List_Output(Machine(Bagmch_params),getcontents)==(items);
  List_Output(Machine(Bagmch_params),howmany)==(nn);
  List_Output(Machine(Bagmch_params),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_params),additem)==(additem(aa));
  List_Header(Machine(Bagmch_params),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_params),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_params),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_params),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_params),additem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_params),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_params),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_params),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_params),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_params),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_params),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_params),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_params),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_params),additem)==(aa: ITEMS | content:=content\/{aa});
  List_Substitution(Machine(Bagmch_params),additem)==(content:=content\/{aa});
  List_Substitution(Machine(Bagmch_params),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_params),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_params),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_params),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_params))==(?);
  Inherited_List_Constants(Machine(Bagmch_params))==(?);
  List_Constants(Machine(Bagmch_params))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Bagmch_params))==(?);
  Context_List_Defered(Machine(Bagmch_params))==(?);
  Context_List_Sets(Machine(Bagmch_params))==(?);
  List_Valuable_Sets(Machine(Bagmch_params))==(?);
  Inherited_List_Enumerated(Machine(Bagmch_params))==(?);
  Inherited_List_Defered(Machine(Bagmch_params))==(?);
  Inherited_List_Sets(Machine(Bagmch_params))==(?);
  List_Enumerated(Machine(Bagmch_params))==(?);
  List_Defered(Machine(Bagmch_params))==(?);
  List_Sets(Machine(Bagmch_params))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_params))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_params))==(?);
  List_HiddenConstants(Machine(Bagmch_params))==(?);
  External_List_HiddenConstants(Machine(Bagmch_params))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_params))==(btrue);
  Context_List_Properties(Machine(Bagmch_params))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_params))==(btrue);
  List_Properties(Machine(Bagmch_params))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_params),additem)==(?);
  List_ANY_Var(Machine(Bagmch_params),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_params),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_params),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_params),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_params)) == (? | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ITEMS | Bagmch_params);
  List_Of_HiddenCst_Ids(Machine(Bagmch_params)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_params)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_params)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_params)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(Bagmch_params)) == (Type(ITEMS) == Prm(SetOf(atype(ITEMS,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_params)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_params)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_params)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
