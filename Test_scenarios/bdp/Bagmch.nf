Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch))==(Machine(Bagmch));
  Level(Machine(Bagmch))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch))==(?);
  List_Includes(Machine(Bagmch))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch))==(?);
  Context_List_Variables(Machine(Bagmch))==(?);
  Abstract_List_Variables(Machine(Bagmch))==(?);
  Local_List_Variables(Machine(Bagmch))==(content);
  List_Variables(Machine(Bagmch))==(content);
  External_List_Variables(Machine(Bagmch))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch))==(?);
  External_List_VisibleVariables(Machine(Bagmch))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch))==(?);
  List_VisibleVariables(Machine(Bagmch))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch))==(btrue);
  Context_List_Invariant(Machine(Bagmch))==(btrue);
  List_Invariant(Machine(Bagmch))==(content: FIN(ITEMS))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch))==(btrue);
  Context_List_Assertions(Machine(Bagmch))==(btrue);
  List_Assertions(Machine(Bagmch))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch))==(content:={});
  Context_List_Initialisation(Machine(Bagmch))==(skip);
  List_Initialisation(Machine(Bagmch))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch))==(btrue);
  List_Constraints(Machine(Bagmch))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch),additem)==(aa);
  List_Input(Machine(Bagmch),removeitem)==(aa);
  List_Input(Machine(Bagmch),getcontents)==(?);
  List_Input(Machine(Bagmch),howmany)==(?);
  List_Input(Machine(Bagmch),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch),additem)==(?);
  List_Output(Machine(Bagmch),removeitem)==(?);
  List_Output(Machine(Bagmch),getcontents)==(items);
  List_Output(Machine(Bagmch),howmany)==(nn);
  List_Output(Machine(Bagmch),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch),additem)==(additem(aa));
  List_Header(Machine(Bagmch),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch),additem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch),howmany)==(btrue);
  List_Precondition(Machine(Bagmch),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch),additem)==(aa: ITEMS | content:=content\/{aa});
  List_Substitution(Machine(Bagmch),additem)==(content:=content\/{aa});
  List_Substitution(Machine(Bagmch),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch))==(?);
  Inherited_List_Constants(Machine(Bagmch))==(?);
  List_Constants(Machine(Bagmch))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch))==(?);
  Context_List_Defered(Machine(Bagmch))==(?);
  Context_List_Sets(Machine(Bagmch))==(?);
  List_Valuable_Sets(Machine(Bagmch))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch))==(?);
  Inherited_List_Defered(Machine(Bagmch))==(?);
  Inherited_List_Sets(Machine(Bagmch))==(?);
  List_Enumerated(Machine(Bagmch))==(?);
  List_Defered(Machine(Bagmch))==(ITEMS);
  List_Sets(Machine(Bagmch))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch))==(?);
  List_HiddenConstants(Machine(Bagmch))==(?);
  External_List_HiddenConstants(Machine(Bagmch))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch))==(btrue);
  Context_List_Properties(Machine(Bagmch))==(btrue);
  Inherited_List_Properties(Machine(Bagmch))==(btrue);
  List_Properties(Machine(Bagmch))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch),additem)==(?);
  List_ANY_Var(Machine(Bagmch),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch),howmany)==(?);
  List_ANY_Var(Machine(Bagmch),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch)) == (ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch);
  List_Of_HiddenCst_Ids(Machine(Bagmch)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
