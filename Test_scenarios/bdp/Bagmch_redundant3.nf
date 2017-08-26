Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_redundant3))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_redundant3))==(Machine(Bagmch_redundant3));
  Level(Machine(Bagmch_redundant3))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_redundant3)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_redundant3))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_redundant3))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_redundant3))==(?);
  List_Includes(Machine(Bagmch_redundant3))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_redundant3))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_redundant3))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_redundant3))==(?);
  Context_List_Variables(Machine(Bagmch_redundant3))==(?);
  Abstract_List_Variables(Machine(Bagmch_redundant3))==(?);
  Local_List_Variables(Machine(Bagmch_redundant3))==(content);
  List_Variables(Machine(Bagmch_redundant3))==(content);
  External_List_Variables(Machine(Bagmch_redundant3))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_redundant3))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_redundant3))==(?);
  External_List_VisibleVariables(Machine(Bagmch_redundant3))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_redundant3))==(?);
  List_VisibleVariables(Machine(Bagmch_redundant3))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_redundant3))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_redundant3))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_redundant3))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_redundant3))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_redundant3))==(btrue);
  Context_List_Invariant(Machine(Bagmch_redundant3))==(btrue);
  List_Invariant(Machine(Bagmch_redundant3))==(content: POW(ITEMS) & content: FIN(content) & card(content)<=10 & card(content)<=9 & card(content)<=8 & card(content)<=7 & card(content)<=6 & card(content)<=5 & card(content)<=4 & card(content)<=3)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_redundant3))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_redundant3))==(btrue);
  Context_List_Assertions(Machine(Bagmch_redundant3))==(btrue);
  List_Assertions(Machine(Bagmch_redundant3))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_redundant3))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_redundant3))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_redundant3))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_redundant3))==(skip);
  List_Initialisation(Machine(Bagmch_redundant3))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_redundant3))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_redundant3))==(btrue);
  List_Constraints(Machine(Bagmch_redundant3))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_redundant3))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_redundant3))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_redundant3),additem)==(aa);
  List_Input(Machine(Bagmch_redundant3),removeitem)==(aa);
  List_Input(Machine(Bagmch_redundant3),getcontents)==(?);
  List_Input(Machine(Bagmch_redundant3),howmany)==(?);
  List_Input(Machine(Bagmch_redundant3),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_redundant3),additem)==(?);
  List_Output(Machine(Bagmch_redundant3),removeitem)==(?);
  List_Output(Machine(Bagmch_redundant3),getcontents)==(items);
  List_Output(Machine(Bagmch_redundant3),howmany)==(nn);
  List_Output(Machine(Bagmch_redundant3),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_redundant3),additem)==(additem(aa));
  List_Header(Machine(Bagmch_redundant3),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_redundant3),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_redundant3),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_redundant3),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_redundant3),additem)==(aa: ITEMS & card(content)<3);
  List_Precondition(Machine(Bagmch_redundant3),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_redundant3),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_redundant3),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_redundant3),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_redundant3),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_redundant3),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_redundant3),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_redundant3),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_redundant3),additem)==(aa: ITEMS & card(content)<3 | content:=content\/{aa});
  List_Substitution(Machine(Bagmch_redundant3),additem)==(content:=content\/{aa});
  List_Substitution(Machine(Bagmch_redundant3),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_redundant3),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_redundant3),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_redundant3),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_redundant3))==(?);
  Inherited_List_Constants(Machine(Bagmch_redundant3))==(?);
  List_Constants(Machine(Bagmch_redundant3))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_redundant3),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_redundant3))==(?);
  Context_List_Defered(Machine(Bagmch_redundant3))==(?);
  Context_List_Sets(Machine(Bagmch_redundant3))==(?);
  List_Valuable_Sets(Machine(Bagmch_redundant3))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_redundant3))==(?);
  Inherited_List_Defered(Machine(Bagmch_redundant3))==(?);
  Inherited_List_Sets(Machine(Bagmch_redundant3))==(?);
  List_Enumerated(Machine(Bagmch_redundant3))==(?);
  List_Defered(Machine(Bagmch_redundant3))==(ITEMS);
  List_Sets(Machine(Bagmch_redundant3))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_redundant3))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_redundant3))==(?);
  List_HiddenConstants(Machine(Bagmch_redundant3))==(?);
  External_List_HiddenConstants(Machine(Bagmch_redundant3))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_redundant3))==(btrue);
  Context_List_Properties(Machine(Bagmch_redundant3))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_redundant3))==(btrue);
  List_Properties(Machine(Bagmch_redundant3))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_redundant3),additem)==(?);
  List_ANY_Var(Machine(Bagmch_redundant3),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_redundant3),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_redundant3),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_redundant3),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_redundant3)) == (ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_redundant3);
  List_Of_HiddenCst_Ids(Machine(Bagmch_redundant3)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_redundant3)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_redundant3)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_redundant3)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_redundant3)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_redundant3)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_redundant3)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_redundant3)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
