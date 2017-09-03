Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_setops))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_setops))==(Machine(Bagmch_setops));
  Level(Machine(Bagmch_setops))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_setops)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_setops))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_setops))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_setops))==(?);
  List_Includes(Machine(Bagmch_setops))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_setops))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_setops))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_setops))==(?);
  Context_List_Variables(Machine(Bagmch_setops))==(?);
  Abstract_List_Variables(Machine(Bagmch_setops))==(?);
  Local_List_Variables(Machine(Bagmch_setops))==(content);
  List_Variables(Machine(Bagmch_setops))==(content);
  External_List_Variables(Machine(Bagmch_setops))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_setops))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_setops))==(?);
  External_List_VisibleVariables(Machine(Bagmch_setops))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_setops))==(?);
  List_VisibleVariables(Machine(Bagmch_setops))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_setops))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_setops))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_setops))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_setops))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_setops))==(btrue);
  Context_List_Invariant(Machine(Bagmch_setops))==(btrue);
  List_Invariant(Machine(Bagmch_setops))==(content <: ITEMS & content: FIN(content))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_setops))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_setops))==(btrue);
  Context_List_Assertions(Machine(Bagmch_setops))==(btrue);
  List_Assertions(Machine(Bagmch_setops))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_setops))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_setops))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_setops))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_setops))==(skip);
  List_Initialisation(Machine(Bagmch_setops))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_setops))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_setops))==(btrue);
  List_Constraints(Machine(Bagmch_setops))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_setops))==(additems,removeitems,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_setops))==(additems,removeitems,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_setops),additems)==(aa);
  List_Input(Machine(Bagmch_setops),removeitems)==(aa);
  List_Input(Machine(Bagmch_setops),getcontents)==(?);
  List_Input(Machine(Bagmch_setops),howmany)==(?);
  List_Input(Machine(Bagmch_setops),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_setops),additems)==(?);
  List_Output(Machine(Bagmch_setops),removeitems)==(?);
  List_Output(Machine(Bagmch_setops),getcontents)==(items);
  List_Output(Machine(Bagmch_setops),howmany)==(nn);
  List_Output(Machine(Bagmch_setops),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_setops),additems)==(additems(aa));
  List_Header(Machine(Bagmch_setops),removeitems)==(removeitems(aa));
  List_Header(Machine(Bagmch_setops),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_setops),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_setops),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_setops),additems)==(aa: FIN(ITEMS));
  List_Precondition(Machine(Bagmch_setops),removeitems)==(aa: FIN(ITEMS));
  List_Precondition(Machine(Bagmch_setops),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_setops),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_setops),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_setops),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_setops),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_setops),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_setops),removeitems)==(aa: FIN(ITEMS) | content:=content-aa);
  Expanded_List_Substitution(Machine(Bagmch_setops),additems)==(aa: FIN(ITEMS) | content:=content\/aa);
  List_Substitution(Machine(Bagmch_setops),additems)==(content:=content\/aa);
  List_Substitution(Machine(Bagmch_setops),removeitems)==(content:=content-aa);
  List_Substitution(Machine(Bagmch_setops),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_setops),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_setops),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_setops))==(?);
  Inherited_List_Constants(Machine(Bagmch_setops))==(?);
  List_Constants(Machine(Bagmch_setops))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_setops),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_setops))==(?);
  Context_List_Defered(Machine(Bagmch_setops))==(?);
  Context_List_Sets(Machine(Bagmch_setops))==(?);
  List_Valuable_Sets(Machine(Bagmch_setops))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_setops))==(?);
  Inherited_List_Defered(Machine(Bagmch_setops))==(?);
  Inherited_List_Sets(Machine(Bagmch_setops))==(?);
  List_Enumerated(Machine(Bagmch_setops))==(?);
  List_Defered(Machine(Bagmch_setops))==(ITEMS);
  List_Sets(Machine(Bagmch_setops))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_setops))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_setops))==(?);
  List_HiddenConstants(Machine(Bagmch_setops))==(?);
  External_List_HiddenConstants(Machine(Bagmch_setops))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_setops))==(btrue);
  Context_List_Properties(Machine(Bagmch_setops))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_setops))==(btrue);
  List_Properties(Machine(Bagmch_setops))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_setops),additems)==(?);
  List_ANY_Var(Machine(Bagmch_setops),removeitems)==(?);
  List_ANY_Var(Machine(Bagmch_setops),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_setops),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_setops),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_setops)) == (ITEMS | ? | content | ? | additems,removeitems,getcontents,howmany,isin | ? | ? | ? | Bagmch_setops);
  List_Of_HiddenCst_Ids(Machine(Bagmch_setops)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_setops)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_setops)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_setops)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_setops)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_setops)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_setops)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitems) == Cst(No_type,SetOf(atype(ITEMS,?,?)));Type(additems) == Cst(No_type,SetOf(atype(ITEMS,?,?))));
  Observers(Machine(Bagmch_setops)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
