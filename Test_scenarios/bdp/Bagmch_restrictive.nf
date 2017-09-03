Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_restrictive))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_restrictive))==(Machine(Bagmch_restrictive));
  Level(Machine(Bagmch_restrictive))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_restrictive)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_restrictive))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_restrictive))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_restrictive))==(?);
  List_Includes(Machine(Bagmch_restrictive))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_restrictive))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_restrictive))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_restrictive))==(?);
  Context_List_Variables(Machine(Bagmch_restrictive))==(?);
  Abstract_List_Variables(Machine(Bagmch_restrictive))==(?);
  Local_List_Variables(Machine(Bagmch_restrictive))==(content);
  List_Variables(Machine(Bagmch_restrictive))==(content);
  External_List_Variables(Machine(Bagmch_restrictive))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_restrictive))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_restrictive))==(?);
  External_List_VisibleVariables(Machine(Bagmch_restrictive))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_restrictive))==(?);
  List_VisibleVariables(Machine(Bagmch_restrictive))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_restrictive))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_restrictive))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_restrictive))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_restrictive))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_restrictive))==(btrue);
  Context_List_Invariant(Machine(Bagmch_restrictive))==(btrue);
  List_Invariant(Machine(Bagmch_restrictive))==(content: FIN(ITEMS))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_restrictive))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_restrictive))==(btrue);
  Context_List_Assertions(Machine(Bagmch_restrictive))==(btrue);
  List_Assertions(Machine(Bagmch_restrictive))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_restrictive))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_restrictive))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_restrictive))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_restrictive))==(skip);
  List_Initialisation(Machine(Bagmch_restrictive))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_restrictive))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_restrictive))==(btrue);
  List_Constraints(Machine(Bagmch_restrictive))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_restrictive))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_restrictive))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_restrictive),additem)==(aa);
  List_Input(Machine(Bagmch_restrictive),removeitem)==(aa);
  List_Input(Machine(Bagmch_restrictive),getcontents)==(?);
  List_Input(Machine(Bagmch_restrictive),howmany)==(?);
  List_Input(Machine(Bagmch_restrictive),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_restrictive),additem)==(?);
  List_Output(Machine(Bagmch_restrictive),removeitem)==(?);
  List_Output(Machine(Bagmch_restrictive),getcontents)==(items);
  List_Output(Machine(Bagmch_restrictive),howmany)==(nn);
  List_Output(Machine(Bagmch_restrictive),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_restrictive),additem)==(additem(aa));
  List_Header(Machine(Bagmch_restrictive),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_restrictive),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_restrictive),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_restrictive),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_restrictive),additem)==(aa: ITEMS-content);
  List_Precondition(Machine(Bagmch_restrictive),removeitem)==(aa: content);
  List_Precondition(Machine(Bagmch_restrictive),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_restrictive),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_restrictive),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_restrictive),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_restrictive),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_restrictive),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_restrictive),removeitem)==(aa: content | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_restrictive),additem)==(aa: ITEMS-content | content:=content\/{aa});
  List_Substitution(Machine(Bagmch_restrictive),additem)==(content:=content\/{aa});
  List_Substitution(Machine(Bagmch_restrictive),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_restrictive),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_restrictive),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_restrictive),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_restrictive))==(?);
  Inherited_List_Constants(Machine(Bagmch_restrictive))==(?);
  List_Constants(Machine(Bagmch_restrictive))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_restrictive),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_restrictive))==(?);
  Context_List_Defered(Machine(Bagmch_restrictive))==(?);
  Context_List_Sets(Machine(Bagmch_restrictive))==(?);
  List_Valuable_Sets(Machine(Bagmch_restrictive))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_restrictive))==(?);
  Inherited_List_Defered(Machine(Bagmch_restrictive))==(?);
  Inherited_List_Sets(Machine(Bagmch_restrictive))==(?);
  List_Enumerated(Machine(Bagmch_restrictive))==(?);
  List_Defered(Machine(Bagmch_restrictive))==(ITEMS);
  List_Sets(Machine(Bagmch_restrictive))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_restrictive))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_restrictive))==(?);
  List_HiddenConstants(Machine(Bagmch_restrictive))==(?);
  External_List_HiddenConstants(Machine(Bagmch_restrictive))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_restrictive))==(btrue);
  Context_List_Properties(Machine(Bagmch_restrictive))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_restrictive))==(btrue);
  List_Properties(Machine(Bagmch_restrictive))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_restrictive),additem)==(?);
  List_ANY_Var(Machine(Bagmch_restrictive),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_restrictive),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_restrictive),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_restrictive),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_restrictive)) == (ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_restrictive);
  List_Of_HiddenCst_Ids(Machine(Bagmch_restrictive)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_restrictive)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_restrictive)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_restrictive)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_restrictive)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_restrictive)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_restrictive)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_restrictive)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
