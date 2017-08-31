Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_2sets_1elem))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_2sets_1elem))==(Machine(Bagmch_2sets_1elem));
  Level(Machine(Bagmch_2sets_1elem))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_2sets_1elem)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_2sets_1elem))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_2sets_1elem))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_2sets_1elem))==(?);
  List_Includes(Machine(Bagmch_2sets_1elem))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_2sets_1elem))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_2sets_1elem))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_2sets_1elem))==(?);
  Context_List_Variables(Machine(Bagmch_2sets_1elem))==(?);
  Abstract_List_Variables(Machine(Bagmch_2sets_1elem))==(?);
  Local_List_Variables(Machine(Bagmch_2sets_1elem))==(content2,content1);
  List_Variables(Machine(Bagmch_2sets_1elem))==(content2,content1);
  External_List_Variables(Machine(Bagmch_2sets_1elem))==(content2,content1)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_2sets_1elem))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_2sets_1elem))==(?);
  External_List_VisibleVariables(Machine(Bagmch_2sets_1elem))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_2sets_1elem))==(?);
  List_VisibleVariables(Machine(Bagmch_2sets_1elem))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_2sets_1elem))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_2sets_1elem))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_2sets_1elem))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_2sets_1elem))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_2sets_1elem))==(btrue);
  Context_List_Invariant(Machine(Bagmch_2sets_1elem))==(btrue);
  List_Invariant(Machine(Bagmch_2sets_1elem))==(content1: POW(ITEMS) & content1: FIN(content1) & content2: POW(ITEMS) & content2: FIN(content2) & content1\/content2: POW(ITEMS))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_2sets_1elem))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_2sets_1elem))==(btrue);
  Context_List_Assertions(Machine(Bagmch_2sets_1elem))==(btrue);
  List_Assertions(Machine(Bagmch_2sets_1elem))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_2sets_1elem))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_2sets_1elem))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_2sets_1elem))==(@xx.(xx: ITEMS ==> content1,content2:={xx},{xx}));
  Context_List_Initialisation(Machine(Bagmch_2sets_1elem))==(skip);
  List_Initialisation(Machine(Bagmch_2sets_1elem))==(ANY xx WHERE xx: ITEMS THEN content1:={xx} || content2:={xx} END)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_2sets_1elem))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_2sets_1elem))==(btrue);
  List_Constraints(Machine(Bagmch_2sets_1elem))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_2sets_1elem))==(additem1,additem2,additemboth,removeitem1,removeitem2,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_2sets_1elem))==(additem1,additem2,additemboth,removeitem1,removeitem2,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_2sets_1elem),additem1)==(aa);
  List_Input(Machine(Bagmch_2sets_1elem),additem2)==(aa);
  List_Input(Machine(Bagmch_2sets_1elem),additemboth)==(aa);
  List_Input(Machine(Bagmch_2sets_1elem),removeitem1)==(aa);
  List_Input(Machine(Bagmch_2sets_1elem),removeitem2)==(aa);
  List_Input(Machine(Bagmch_2sets_1elem),getcontents)==(?);
  List_Input(Machine(Bagmch_2sets_1elem),howmany)==(?);
  List_Input(Machine(Bagmch_2sets_1elem),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_2sets_1elem),additem1)==(?);
  List_Output(Machine(Bagmch_2sets_1elem),additem2)==(?);
  List_Output(Machine(Bagmch_2sets_1elem),additemboth)==(?);
  List_Output(Machine(Bagmch_2sets_1elem),removeitem1)==(?);
  List_Output(Machine(Bagmch_2sets_1elem),removeitem2)==(?);
  List_Output(Machine(Bagmch_2sets_1elem),getcontents)==(items);
  List_Output(Machine(Bagmch_2sets_1elem),howmany)==(nn);
  List_Output(Machine(Bagmch_2sets_1elem),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_2sets_1elem),additem1)==(additem1(aa));
  List_Header(Machine(Bagmch_2sets_1elem),additem2)==(additem2(aa));
  List_Header(Machine(Bagmch_2sets_1elem),additemboth)==(additemboth(aa));
  List_Header(Machine(Bagmch_2sets_1elem),removeitem1)==(removeitem1(aa));
  List_Header(Machine(Bagmch_2sets_1elem),removeitem2)==(removeitem2(aa));
  List_Header(Machine(Bagmch_2sets_1elem),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_2sets_1elem),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_2sets_1elem),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_2sets_1elem),additem1)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_2sets_1elem),additem2)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_2sets_1elem),additemboth)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_2sets_1elem),removeitem1)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_2sets_1elem),removeitem2)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_2sets_1elem),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_2sets_1elem),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_2sets_1elem),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_2sets_1elem),isin)==(aa: ITEMS | aa: content1 or aa: content2 ==> check:=TRUE [] not(aa: content1 or aa: content2) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_2sets_1elem),howmany)==(btrue | nn:=card(content1)+card(content2));
  Expanded_List_Substitution(Machine(Bagmch_2sets_1elem),getcontents)==(btrue | items:=content1\/content2);
  Expanded_List_Substitution(Machine(Bagmch_2sets_1elem),removeitem2)==(aa: ITEMS | content2:=content2-{aa});
  Expanded_List_Substitution(Machine(Bagmch_2sets_1elem),removeitem1)==(aa: ITEMS | content1:=content1-{aa});
  Expanded_List_Substitution(Machine(Bagmch_2sets_1elem),additemboth)==(aa: ITEMS | content1,content2:=content1\/{aa},content2\/{aa});
  Expanded_List_Substitution(Machine(Bagmch_2sets_1elem),additem2)==(aa: ITEMS | content2:=content2\/{aa});
  Expanded_List_Substitution(Machine(Bagmch_2sets_1elem),additem1)==(aa: ITEMS | content1:=content1\/{aa});
  List_Substitution(Machine(Bagmch_2sets_1elem),additem1)==(content1:=content1\/{aa});
  List_Substitution(Machine(Bagmch_2sets_1elem),additem2)==(content2:=content2\/{aa});
  List_Substitution(Machine(Bagmch_2sets_1elem),additemboth)==(content1:=content1\/{aa} || content2:=content2\/{aa});
  List_Substitution(Machine(Bagmch_2sets_1elem),removeitem1)==(content1:=content1-{aa});
  List_Substitution(Machine(Bagmch_2sets_1elem),removeitem2)==(content2:=content2-{aa});
  List_Substitution(Machine(Bagmch_2sets_1elem),getcontents)==(items:=content1\/content2);
  List_Substitution(Machine(Bagmch_2sets_1elem),howmany)==(nn:=card(content1)+card(content2));
  List_Substitution(Machine(Bagmch_2sets_1elem),isin)==(IF aa: content1 or aa: content2 THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_2sets_1elem))==(?);
  Inherited_List_Constants(Machine(Bagmch_2sets_1elem))==(?);
  List_Constants(Machine(Bagmch_2sets_1elem))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_2sets_1elem),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_2sets_1elem))==(?);
  Context_List_Defered(Machine(Bagmch_2sets_1elem))==(?);
  Context_List_Sets(Machine(Bagmch_2sets_1elem))==(?);
  List_Valuable_Sets(Machine(Bagmch_2sets_1elem))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_2sets_1elem))==(?);
  Inherited_List_Defered(Machine(Bagmch_2sets_1elem))==(?);
  Inherited_List_Sets(Machine(Bagmch_2sets_1elem))==(?);
  List_Enumerated(Machine(Bagmch_2sets_1elem))==(?);
  List_Defered(Machine(Bagmch_2sets_1elem))==(ITEMS);
  List_Sets(Machine(Bagmch_2sets_1elem))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_2sets_1elem))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_2sets_1elem))==(?);
  List_HiddenConstants(Machine(Bagmch_2sets_1elem))==(?);
  External_List_HiddenConstants(Machine(Bagmch_2sets_1elem))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_2sets_1elem))==(btrue);
  Context_List_Properties(Machine(Bagmch_2sets_1elem))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_2sets_1elem))==(btrue);
  List_Properties(Machine(Bagmch_2sets_1elem))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_2sets_1elem),?)==(Var(xx) == atype(ITEMS,?,?));
  List_ANY_Var(Machine(Bagmch_2sets_1elem),additem1)==(?);
  List_ANY_Var(Machine(Bagmch_2sets_1elem),additem2)==(?);
  List_ANY_Var(Machine(Bagmch_2sets_1elem),additemboth)==(?);
  List_ANY_Var(Machine(Bagmch_2sets_1elem),removeitem1)==(?);
  List_ANY_Var(Machine(Bagmch_2sets_1elem),removeitem2)==(?);
  List_ANY_Var(Machine(Bagmch_2sets_1elem),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_2sets_1elem),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_2sets_1elem),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_2sets_1elem)) == (ITEMS | ? | content2,content1 | ? | additem1,additem2,additemboth,removeitem1,removeitem2,getcontents,howmany,isin | ? | ? | ? | Bagmch_2sets_1elem);
  List_Of_HiddenCst_Ids(Machine(Bagmch_2sets_1elem)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_2sets_1elem)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_2sets_1elem)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_2sets_1elem)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_2sets_1elem)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_2sets_1elem)) == (Type(content2) == Mvl(SetOf(atype(ITEMS,?,?)));Type(content1) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_2sets_1elem)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem2) == Cst(No_type,atype(ITEMS,?,?));Type(removeitem1) == Cst(No_type,atype(ITEMS,?,?));Type(additemboth) == Cst(No_type,atype(ITEMS,?,?));Type(additem2) == Cst(No_type,atype(ITEMS,?,?));Type(additem1) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_2sets_1elem)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
