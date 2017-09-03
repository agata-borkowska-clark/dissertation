Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_enum))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_enum))==(Machine(Bagmch_enum));
  Level(Machine(Bagmch_enum))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_enum)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_enum))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_enum))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_enum))==(?);
  List_Includes(Machine(Bagmch_enum))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_enum))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_enum))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_enum))==(?);
  Context_List_Variables(Machine(Bagmch_enum))==(?);
  Abstract_List_Variables(Machine(Bagmch_enum))==(?);
  Local_List_Variables(Machine(Bagmch_enum))==(content);
  List_Variables(Machine(Bagmch_enum))==(content);
  External_List_Variables(Machine(Bagmch_enum))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_enum))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_enum))==(?);
  External_List_VisibleVariables(Machine(Bagmch_enum))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_enum))==(?);
  List_VisibleVariables(Machine(Bagmch_enum))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_enum))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_enum))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_enum))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_enum))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_enum))==(btrue);
  Context_List_Invariant(Machine(Bagmch_enum))==(btrue);
  List_Invariant(Machine(Bagmch_enum))==(content: FIN(ITEMS))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_enum))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_enum))==(btrue);
  Context_List_Assertions(Machine(Bagmch_enum))==(btrue);
  List_Assertions(Machine(Bagmch_enum))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_enum))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_enum))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_enum))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_enum))==(skip);
  List_Initialisation(Machine(Bagmch_enum))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_enum))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_enum))==(btrue);
  List_Constraints(Machine(Bagmch_enum))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_enum))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_enum))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_enum),additem)==(aa);
  List_Input(Machine(Bagmch_enum),removeitem)==(aa);
  List_Input(Machine(Bagmch_enum),getcontents)==(?);
  List_Input(Machine(Bagmch_enum),howmany)==(?);
  List_Input(Machine(Bagmch_enum),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_enum),additem)==(?);
  List_Output(Machine(Bagmch_enum),removeitem)==(?);
  List_Output(Machine(Bagmch_enum),getcontents)==(items);
  List_Output(Machine(Bagmch_enum),howmany)==(nn);
  List_Output(Machine(Bagmch_enum),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_enum),additem)==(additem(aa));
  List_Header(Machine(Bagmch_enum),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_enum),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_enum),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_enum),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_enum),additem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_enum),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_enum),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_enum),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_enum),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_enum),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_enum),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_enum),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_enum),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_enum),additem)==(aa: ITEMS | content:=content\/{aa});
  List_Substitution(Machine(Bagmch_enum),additem)==(content:=content\/{aa});
  List_Substitution(Machine(Bagmch_enum),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_enum),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_enum),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_enum),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_enum))==(?);
  Inherited_List_Constants(Machine(Bagmch_enum))==(?);
  List_Constants(Machine(Bagmch_enum))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_enum),ITEMS)==({FOO,BAR,BAZZ});
  Context_List_Enumerated(Machine(Bagmch_enum))==(?);
  Context_List_Defered(Machine(Bagmch_enum))==(?);
  Context_List_Sets(Machine(Bagmch_enum))==(?);
  List_Valuable_Sets(Machine(Bagmch_enum))==(?);
  Inherited_List_Enumerated(Machine(Bagmch_enum))==(?);
  Inherited_List_Defered(Machine(Bagmch_enum))==(?);
  Inherited_List_Sets(Machine(Bagmch_enum))==(?);
  List_Enumerated(Machine(Bagmch_enum))==(ITEMS);
  List_Defered(Machine(Bagmch_enum))==(?);
  List_Sets(Machine(Bagmch_enum))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_enum))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_enum))==(?);
  List_HiddenConstants(Machine(Bagmch_enum))==(?);
  External_List_HiddenConstants(Machine(Bagmch_enum))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_enum))==(btrue);
  Context_List_Properties(Machine(Bagmch_enum))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_enum))==(btrue);
  List_Properties(Machine(Bagmch_enum))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_enum),additem)==(?);
  List_ANY_Var(Machine(Bagmch_enum),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_enum),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_enum),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_enum),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_enum)) == (ITEMS,FOO,BAR,BAZZ | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_enum);
  List_Of_HiddenCst_Ids(Machine(Bagmch_enum)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_enum)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_enum)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_enum)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_enum)) == (Type(ITEMS) == Cst(SetOf(etype(ITEMS,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Bagmch_enum)) == (Type(FOO) == Cst(etype(ITEMS,0,2));Type(BAR) == Cst(etype(ITEMS,0,2));Type(BAZZ) == Cst(etype(ITEMS,0,2)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_enum)) == (Type(content) == Mvl(SetOf(etype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_enum)) == (Type(isin) == Cst(btype(BOOL,?,?),etype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(etype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,etype(ITEMS,?,?));Type(additem) == Cst(No_type,etype(ITEMS,?,?)));
  Observers(Machine(Bagmch_enum)) == (Type(isin) == Cst(btype(BOOL,?,?),etype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(etype(ITEMS,?,?)),No_type))
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
