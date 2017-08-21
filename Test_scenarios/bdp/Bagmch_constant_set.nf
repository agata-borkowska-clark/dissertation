Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_constant_set))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_constant_set))==(Machine(Bagmch_constant_set));
  Level(Machine(Bagmch_constant_set))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_constant_set)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_constant_set))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_constant_set))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_constant_set))==(?);
  List_Includes(Machine(Bagmch_constant_set))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_constant_set))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_constant_set))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_constant_set))==(?);
  Context_List_Variables(Machine(Bagmch_constant_set))==(?);
  Abstract_List_Variables(Machine(Bagmch_constant_set))==(?);
  Local_List_Variables(Machine(Bagmch_constant_set))==(content);
  List_Variables(Machine(Bagmch_constant_set))==(content);
  External_List_Variables(Machine(Bagmch_constant_set))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_constant_set))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_constant_set))==(?);
  External_List_VisibleVariables(Machine(Bagmch_constant_set))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_constant_set))==(?);
  List_VisibleVariables(Machine(Bagmch_constant_set))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_constant_set))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_constant_set))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_constant_set))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_constant_set))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_constant_set))==(btrue);
  Context_List_Invariant(Machine(Bagmch_constant_set))==(btrue);
  List_Invariant(Machine(Bagmch_constant_set))==(content <: items)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_constant_set))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_constant_set))==(btrue);
  Context_List_Assertions(Machine(Bagmch_constant_set))==(btrue);
  List_Assertions(Machine(Bagmch_constant_set))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_constant_set))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_constant_set))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_constant_set))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_constant_set))==(skip);
  List_Initialisation(Machine(Bagmch_constant_set))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_constant_set))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_constant_set))==(btrue);
  List_Constraints(Machine(Bagmch_constant_set))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_constant_set))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_constant_set))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_constant_set),additem)==(aa);
  List_Input(Machine(Bagmch_constant_set),removeitem)==(aa);
  List_Input(Machine(Bagmch_constant_set),getcontents)==(?);
  List_Input(Machine(Bagmch_constant_set),howmany)==(?);
  List_Input(Machine(Bagmch_constant_set),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_constant_set),additem)==(?);
  List_Output(Machine(Bagmch_constant_set),removeitem)==(?);
  List_Output(Machine(Bagmch_constant_set),getcontents)==(output);
  List_Output(Machine(Bagmch_constant_set),howmany)==(nn);
  List_Output(Machine(Bagmch_constant_set),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_constant_set),additem)==(additem(aa));
  List_Header(Machine(Bagmch_constant_set),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_constant_set),getcontents)==(output <-- getcontents);
  List_Header(Machine(Bagmch_constant_set),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_constant_set),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_constant_set),additem)==(aa: items);
  List_Precondition(Machine(Bagmch_constant_set),removeitem)==(aa: items);
  List_Precondition(Machine(Bagmch_constant_set),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_constant_set),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_constant_set),isin)==(aa: items)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_constant_set),isin)==(aa: items | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_constant_set),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_constant_set),getcontents)==(btrue | output:=content);
  Expanded_List_Substitution(Machine(Bagmch_constant_set),removeitem)==(aa: items | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_constant_set),additem)==(aa: items | content:=content\/{aa});
  List_Substitution(Machine(Bagmch_constant_set),additem)==(content:=content\/{aa});
  List_Substitution(Machine(Bagmch_constant_set),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_constant_set),getcontents)==(output:=content);
  List_Substitution(Machine(Bagmch_constant_set),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_constant_set),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_constant_set))==(items);
  Inherited_List_Constants(Machine(Bagmch_constant_set))==(?);
  List_Constants(Machine(Bagmch_constant_set))==(items)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_constant_set),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_constant_set))==(?);
  Context_List_Defered(Machine(Bagmch_constant_set))==(?);
  Context_List_Sets(Machine(Bagmch_constant_set))==(?);
  List_Valuable_Sets(Machine(Bagmch_constant_set))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_constant_set))==(?);
  Inherited_List_Defered(Machine(Bagmch_constant_set))==(?);
  Inherited_List_Sets(Machine(Bagmch_constant_set))==(?);
  List_Enumerated(Machine(Bagmch_constant_set))==(?);
  List_Defered(Machine(Bagmch_constant_set))==(ITEMS);
  List_Sets(Machine(Bagmch_constant_set))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_constant_set))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_constant_set))==(?);
  List_HiddenConstants(Machine(Bagmch_constant_set))==(?);
  External_List_HiddenConstants(Machine(Bagmch_constant_set))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_constant_set))==(btrue);
  Context_List_Properties(Machine(Bagmch_constant_set))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_constant_set))==(btrue);
  List_Properties(Machine(Bagmch_constant_set))==(items: FIN(ITEMS) & ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_constant_set),additem)==(?);
  List_ANY_Var(Machine(Bagmch_constant_set),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_constant_set),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_constant_set),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_constant_set),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_constant_set)) == (items,ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_constant_set);
  List_Of_HiddenCst_Ids(Machine(Bagmch_constant_set)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_constant_set)) == (items);
  List_Of_VisibleVar_Ids(Machine(Bagmch_constant_set)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_constant_set)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_constant_set)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Bagmch_constant_set)) == (Type(items) == Cst(SetOf(atype(ITEMS,"[items","]items"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_constant_set)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_constant_set)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_constant_set)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
