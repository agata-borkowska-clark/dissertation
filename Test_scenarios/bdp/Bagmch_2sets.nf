Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_2sets))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_2sets))==(Machine(Bagmch_2sets));
  Level(Machine(Bagmch_2sets))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_2sets)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_2sets))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_2sets))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_2sets))==(?);
  List_Includes(Machine(Bagmch_2sets))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_2sets))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_2sets))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_2sets))==(?);
  Context_List_Variables(Machine(Bagmch_2sets))==(?);
  Abstract_List_Variables(Machine(Bagmch_2sets))==(?);
  Local_List_Variables(Machine(Bagmch_2sets))==(content2,content1);
  List_Variables(Machine(Bagmch_2sets))==(content2,content1);
  External_List_Variables(Machine(Bagmch_2sets))==(content2,content1)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_2sets))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_2sets))==(?);
  External_List_VisibleVariables(Machine(Bagmch_2sets))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_2sets))==(?);
  List_VisibleVariables(Machine(Bagmch_2sets))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_2sets))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_2sets))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_2sets))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_2sets))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_2sets))==(btrue);
  Context_List_Invariant(Machine(Bagmch_2sets))==(btrue);
  List_Invariant(Machine(Bagmch_2sets))==(content1: POW(ITEMS) & content1: FIN(content1) & content2: POW(ITEMS) & content2: FIN(content2) & content1\/content2: POW(ITEMS))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_2sets))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_2sets))==(btrue);
  Context_List_Assertions(Machine(Bagmch_2sets))==(btrue);
  List_Assertions(Machine(Bagmch_2sets))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_2sets))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_2sets))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_2sets))==(content1,content2:={},{});
  Context_List_Initialisation(Machine(Bagmch_2sets))==(skip);
  List_Initialisation(Machine(Bagmch_2sets))==(content1:={} || content2:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_2sets))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_2sets))==(btrue);
  List_Constraints(Machine(Bagmch_2sets))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_2sets))==(additem1,additem2,additemboth,removeitem1,removeitem2,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_2sets))==(additem1,additem2,additemboth,removeitem1,removeitem2,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_2sets),additem1)==(aa);
  List_Input(Machine(Bagmch_2sets),additem2)==(aa);
  List_Input(Machine(Bagmch_2sets),additemboth)==(aa);
  List_Input(Machine(Bagmch_2sets),removeitem1)==(aa);
  List_Input(Machine(Bagmch_2sets),removeitem2)==(aa);
  List_Input(Machine(Bagmch_2sets),getcontents)==(?);
  List_Input(Machine(Bagmch_2sets),howmany)==(?);
  List_Input(Machine(Bagmch_2sets),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_2sets),additem1)==(?);
  List_Output(Machine(Bagmch_2sets),additem2)==(?);
  List_Output(Machine(Bagmch_2sets),additemboth)==(?);
  List_Output(Machine(Bagmch_2sets),removeitem1)==(?);
  List_Output(Machine(Bagmch_2sets),removeitem2)==(?);
  List_Output(Machine(Bagmch_2sets),getcontents)==(items);
  List_Output(Machine(Bagmch_2sets),howmany)==(nn);
  List_Output(Machine(Bagmch_2sets),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_2sets),additem1)==(additem1(aa));
  List_Header(Machine(Bagmch_2sets),additem2)==(additem2(aa));
  List_Header(Machine(Bagmch_2sets),additemboth)==(additemboth(aa));
  List_Header(Machine(Bagmch_2sets),removeitem1)==(removeitem1(aa));
  List_Header(Machine(Bagmch_2sets),removeitem2)==(removeitem2(aa));
  List_Header(Machine(Bagmch_2sets),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_2sets),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_2sets),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_2sets),additem1)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_2sets),additem2)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_2sets),additemboth)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_2sets),removeitem1)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_2sets),removeitem2)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_2sets),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_2sets),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_2sets),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_2sets),isin)==(aa: ITEMS | aa: content1 or aa: content2 ==> check:=TRUE [] not(aa: content1 or aa: content2) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_2sets),howmany)==(btrue | nn:=card(content1)+card(content2));
  Expanded_List_Substitution(Machine(Bagmch_2sets),getcontents)==(btrue | items:=content1\/content2);
  Expanded_List_Substitution(Machine(Bagmch_2sets),removeitem2)==(aa: ITEMS | content2:=content2-{aa});
  Expanded_List_Substitution(Machine(Bagmch_2sets),removeitem1)==(aa: ITEMS | content1:=content1-{aa});
  Expanded_List_Substitution(Machine(Bagmch_2sets),additemboth)==(aa: ITEMS | content1,content2:=content1\/{aa},content2\/{aa});
  Expanded_List_Substitution(Machine(Bagmch_2sets),additem2)==(aa: ITEMS | content2:=content2\/{aa});
  Expanded_List_Substitution(Machine(Bagmch_2sets),additem1)==(aa: ITEMS | content1:=content1\/{aa});
  List_Substitution(Machine(Bagmch_2sets),additem1)==(content1:=content1\/{aa});
  List_Substitution(Machine(Bagmch_2sets),additem2)==(content2:=content2\/{aa});
  List_Substitution(Machine(Bagmch_2sets),additemboth)==(content1:=content1\/{aa} || content2:=content2\/{aa});
  List_Substitution(Machine(Bagmch_2sets),removeitem1)==(content1:=content1-{aa});
  List_Substitution(Machine(Bagmch_2sets),removeitem2)==(content2:=content2-{aa});
  List_Substitution(Machine(Bagmch_2sets),getcontents)==(items:=content1\/content2);
  List_Substitution(Machine(Bagmch_2sets),howmany)==(nn:=card(content1)+card(content2));
  List_Substitution(Machine(Bagmch_2sets),isin)==(IF aa: content1 or aa: content2 THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_2sets))==(?);
  Inherited_List_Constants(Machine(Bagmch_2sets))==(?);
  List_Constants(Machine(Bagmch_2sets))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_2sets),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_2sets))==(?);
  Context_List_Defered(Machine(Bagmch_2sets))==(?);
  Context_List_Sets(Machine(Bagmch_2sets))==(?);
  List_Valuable_Sets(Machine(Bagmch_2sets))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_2sets))==(?);
  Inherited_List_Defered(Machine(Bagmch_2sets))==(?);
  Inherited_List_Sets(Machine(Bagmch_2sets))==(?);
  List_Enumerated(Machine(Bagmch_2sets))==(?);
  List_Defered(Machine(Bagmch_2sets))==(ITEMS);
  List_Sets(Machine(Bagmch_2sets))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_2sets))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_2sets))==(?);
  List_HiddenConstants(Machine(Bagmch_2sets))==(?);
  External_List_HiddenConstants(Machine(Bagmch_2sets))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_2sets))==(btrue);
  Context_List_Properties(Machine(Bagmch_2sets))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_2sets))==(btrue);
  List_Properties(Machine(Bagmch_2sets))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_2sets),additem1)==(?);
  List_ANY_Var(Machine(Bagmch_2sets),additem2)==(?);
  List_ANY_Var(Machine(Bagmch_2sets),additemboth)==(?);
  List_ANY_Var(Machine(Bagmch_2sets),removeitem1)==(?);
  List_ANY_Var(Machine(Bagmch_2sets),removeitem2)==(?);
  List_ANY_Var(Machine(Bagmch_2sets),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_2sets),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_2sets),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_2sets)) == (ITEMS | ? | content2,content1 | ? | additem1,additem2,additemboth,removeitem1,removeitem2,getcontents,howmany,isin | ? | ? | ? | Bagmch_2sets);
  List_Of_HiddenCst_Ids(Machine(Bagmch_2sets)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_2sets)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_2sets)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_2sets)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_2sets)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_2sets)) == (Type(content2) == Mvl(SetOf(atype(ITEMS,?,?)));Type(content1) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_2sets)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem2) == Cst(No_type,atype(ITEMS,?,?));Type(removeitem1) == Cst(No_type,atype(ITEMS,?,?));Type(additemboth) == Cst(No_type,atype(ITEMS,?,?));Type(additem2) == Cst(No_type,atype(ITEMS,?,?));Type(additem1) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_2sets)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
