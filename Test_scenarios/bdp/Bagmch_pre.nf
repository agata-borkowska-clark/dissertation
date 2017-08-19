Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_pre))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_pre))==(Machine(Bagmch_pre));
  Level(Machine(Bagmch_pre))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_pre)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_pre))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_pre))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_pre))==(?);
  List_Includes(Machine(Bagmch_pre))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_pre))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_pre))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_pre))==(?);
  Context_List_Variables(Machine(Bagmch_pre))==(?);
  Abstract_List_Variables(Machine(Bagmch_pre))==(?);
  Local_List_Variables(Machine(Bagmch_pre))==(content);
  List_Variables(Machine(Bagmch_pre))==(content);
  External_List_Variables(Machine(Bagmch_pre))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_pre))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_pre))==(?);
  External_List_VisibleVariables(Machine(Bagmch_pre))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_pre))==(?);
  List_VisibleVariables(Machine(Bagmch_pre))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_pre))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_pre))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_pre))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_pre))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_pre))==(btrue);
  Context_List_Invariant(Machine(Bagmch_pre))==(btrue);
  List_Invariant(Machine(Bagmch_pre))==(content <: ITEMS)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_pre))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_pre))==(btrue);
  Context_List_Assertions(Machine(Bagmch_pre))==(btrue);
  List_Assertions(Machine(Bagmch_pre))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_pre))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_pre))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_pre))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_pre))==(skip);
  List_Initialisation(Machine(Bagmch_pre))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_pre))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_pre))==(btrue);
  List_Constraints(Machine(Bagmch_pre))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_pre))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_pre))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_pre),additem)==(aa);
  List_Input(Machine(Bagmch_pre),removeitem)==(aa);
  List_Input(Machine(Bagmch_pre),getcontents)==(?);
  List_Input(Machine(Bagmch_pre),howmany)==(?);
  List_Input(Machine(Bagmch_pre),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_pre),additem)==(?);
  List_Output(Machine(Bagmch_pre),removeitem)==(?);
  List_Output(Machine(Bagmch_pre),getcontents)==(items);
  List_Output(Machine(Bagmch_pre),howmany)==(nn);
  List_Output(Machine(Bagmch_pre),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_pre),additem)==(additem(aa));
  List_Header(Machine(Bagmch_pre),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_pre),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_pre),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_pre),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_pre),additem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_pre),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_pre),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_pre),howmany)==(content: FIN(content));
  List_Precondition(Machine(Bagmch_pre),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_pre),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_pre),howmany)==(content: FIN(content) | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_pre),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_pre),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_pre),additem)==(aa: ITEMS | content:=content\/{aa});
  List_Substitution(Machine(Bagmch_pre),additem)==(content:=content\/{aa});
  List_Substitution(Machine(Bagmch_pre),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_pre),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_pre),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_pre),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_pre))==(?);
  Inherited_List_Constants(Machine(Bagmch_pre))==(?);
  List_Constants(Machine(Bagmch_pre))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_pre),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_pre))==(?);
  Context_List_Defered(Machine(Bagmch_pre))==(?);
  Context_List_Sets(Machine(Bagmch_pre))==(?);
  List_Valuable_Sets(Machine(Bagmch_pre))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_pre))==(?);
  Inherited_List_Defered(Machine(Bagmch_pre))==(?);
  Inherited_List_Sets(Machine(Bagmch_pre))==(?);
  List_Enumerated(Machine(Bagmch_pre))==(?);
  List_Defered(Machine(Bagmch_pre))==(ITEMS);
  List_Sets(Machine(Bagmch_pre))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_pre))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_pre))==(?);
  List_HiddenConstants(Machine(Bagmch_pre))==(?);
  External_List_HiddenConstants(Machine(Bagmch_pre))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_pre))==(btrue);
  Context_List_Properties(Machine(Bagmch_pre))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_pre))==(btrue);
  List_Properties(Machine(Bagmch_pre))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_pre),additem)==(?);
  List_ANY_Var(Machine(Bagmch_pre),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_pre),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_pre),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_pre),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_pre)) == (ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_pre);
  List_Of_HiddenCst_Ids(Machine(Bagmch_pre)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_pre)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_pre)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_pre)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_pre)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_pre)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_pre)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_pre)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
