Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_relation))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_relation))==(Machine(Bagmch_relation));
  Level(Machine(Bagmch_relation))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_relation)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_relation))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_relation))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_relation))==(?);
  List_Includes(Machine(Bagmch_relation))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_relation))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_relation))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_relation))==(?);
  Context_List_Variables(Machine(Bagmch_relation))==(?);
  Abstract_List_Variables(Machine(Bagmch_relation))==(?);
  Local_List_Variables(Machine(Bagmch_relation))==(content);
  List_Variables(Machine(Bagmch_relation))==(content);
  External_List_Variables(Machine(Bagmch_relation))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_relation))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_relation))==(?);
  External_List_VisibleVariables(Machine(Bagmch_relation))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_relation))==(?);
  List_VisibleVariables(Machine(Bagmch_relation))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_relation))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_relation))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_relation))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_relation))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_relation))==(btrue);
  Context_List_Invariant(Machine(Bagmch_relation))==(btrue);
  List_Invariant(Machine(Bagmch_relation))==(content: ITEMS >+> {TRUE,FALSE} & dom(content): FIN(ITEMS))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_relation))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_relation))==(btrue);
  Context_List_Assertions(Machine(Bagmch_relation))==(btrue);
  List_Assertions(Machine(Bagmch_relation))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_relation))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_relation))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_relation))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_relation))==(skip);
  List_Initialisation(Machine(Bagmch_relation))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_relation))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_relation))==(btrue);
  List_Constraints(Machine(Bagmch_relation))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_relation))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_relation))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_relation),additem)==(aa);
  List_Input(Machine(Bagmch_relation),removeitem)==(aa);
  List_Input(Machine(Bagmch_relation),getcontents)==(?);
  List_Input(Machine(Bagmch_relation),howmany)==(?);
  List_Input(Machine(Bagmch_relation),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_relation),additem)==(?);
  List_Output(Machine(Bagmch_relation),removeitem)==(?);
  List_Output(Machine(Bagmch_relation),getcontents)==(items);
  List_Output(Machine(Bagmch_relation),howmany)==(nn);
  List_Output(Machine(Bagmch_relation),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_relation),additem)==(additem(aa));
  List_Header(Machine(Bagmch_relation),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_relation),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_relation),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_relation),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_relation),additem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_relation),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_relation),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_relation),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_relation),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_relation),isin)==(aa: ITEMS | aa|->TRUE: content ==> check:=TRUE [] not(aa|->TRUE: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_relation),howmany)==(btrue | nn:=card(content|>{TRUE}));
  Expanded_List_Substitution(Machine(Bagmch_relation),getcontents)==(btrue | items:={xx | xx|->TRUE: content});
  Expanded_List_Substitution(Machine(Bagmch_relation),removeitem)==(aa: ITEMS | content:=content<+{aa|->FALSE});
  Expanded_List_Substitution(Machine(Bagmch_relation),additem)==(aa: ITEMS | content:=content<+{aa|->TRUE});
  List_Substitution(Machine(Bagmch_relation),additem)==(content:=content<+{aa|->TRUE});
  List_Substitution(Machine(Bagmch_relation),removeitem)==(content:=content<+{aa|->FALSE});
  List_Substitution(Machine(Bagmch_relation),getcontents)==(items:={xx | xx|->TRUE: content});
  List_Substitution(Machine(Bagmch_relation),howmany)==(nn:=card(content|>{TRUE}));
  List_Substitution(Machine(Bagmch_relation),isin)==(IF aa|->TRUE: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_relation))==(?);
  Inherited_List_Constants(Machine(Bagmch_relation))==(?);
  List_Constants(Machine(Bagmch_relation))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_relation),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_relation))==(?);
  Context_List_Defered(Machine(Bagmch_relation))==(?);
  Context_List_Sets(Machine(Bagmch_relation))==(?);
  List_Valuable_Sets(Machine(Bagmch_relation))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_relation))==(?);
  Inherited_List_Defered(Machine(Bagmch_relation))==(?);
  Inherited_List_Sets(Machine(Bagmch_relation))==(?);
  List_Enumerated(Machine(Bagmch_relation))==(?);
  List_Defered(Machine(Bagmch_relation))==(ITEMS);
  List_Sets(Machine(Bagmch_relation))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_relation))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_relation))==(?);
  List_HiddenConstants(Machine(Bagmch_relation))==(?);
  External_List_HiddenConstants(Machine(Bagmch_relation))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_relation))==(btrue);
  Context_List_Properties(Machine(Bagmch_relation))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_relation))==(btrue);
  List_Properties(Machine(Bagmch_relation))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_relation),additem)==(?);
  List_ANY_Var(Machine(Bagmch_relation),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_relation),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_relation),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_relation),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_relation)) == (ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_relation);
  List_Of_HiddenCst_Ids(Machine(Bagmch_relation)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_relation)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_relation)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_relation)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_relation)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_relation)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?)*btype(BOOL,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_relation)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_relation)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
