Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Queuemch_stack))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Queuemch_stack))==(Machine(Queuemch_stack));
  Level(Machine(Queuemch_stack))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Queuemch_stack)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Queuemch_stack))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Queuemch_stack))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Queuemch_stack))==(?);
  List_Includes(Machine(Queuemch_stack))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Queuemch_stack))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Queuemch_stack))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Queuemch_stack))==(?);
  Context_List_Variables(Machine(Queuemch_stack))==(?);
  Abstract_List_Variables(Machine(Queuemch_stack))==(?);
  Local_List_Variables(Machine(Queuemch_stack))==(stack);
  List_Variables(Machine(Queuemch_stack))==(stack);
  External_List_Variables(Machine(Queuemch_stack))==(stack)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Queuemch_stack))==(?);
  Abstract_List_VisibleVariables(Machine(Queuemch_stack))==(?);
  External_List_VisibleVariables(Machine(Queuemch_stack))==(?);
  Expanded_List_VisibleVariables(Machine(Queuemch_stack))==(?);
  List_VisibleVariables(Machine(Queuemch_stack))==(?);
  Internal_List_VisibleVariables(Machine(Queuemch_stack))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Queuemch_stack))==(btrue);
  Gluing_List_Invariant(Machine(Queuemch_stack))==(btrue);
  Expanded_List_Invariant(Machine(Queuemch_stack))==(btrue);
  Abstract_List_Invariant(Machine(Queuemch_stack))==(btrue);
  Context_List_Invariant(Machine(Queuemch_stack))==(btrue);
  List_Invariant(Machine(Queuemch_stack))==(stack: seq(ITEMS) & stack: seq(ran(stack)))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Queuemch_stack))==(btrue);
  Abstract_List_Assertions(Machine(Queuemch_stack))==(btrue);
  Context_List_Assertions(Machine(Queuemch_stack))==(btrue);
  List_Assertions(Machine(Queuemch_stack))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Queuemch_stack))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Queuemch_stack))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Queuemch_stack))==(stack:=<>);
  Context_List_Initialisation(Machine(Queuemch_stack))==(skip);
  List_Initialisation(Machine(Queuemch_stack))==(stack:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Queuemch_stack))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Queuemch_stack))==(btrue);
  List_Constraints(Machine(Queuemch_stack))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Queuemch_stack))==(push,pop);
  List_Operations(Machine(Queuemch_stack))==(push,pop)
END
&
THEORY ListInputX IS
  List_Input(Machine(Queuemch_stack),push)==(aa);
  List_Input(Machine(Queuemch_stack),pop)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Queuemch_stack),push)==(?);
  List_Output(Machine(Queuemch_stack),pop)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Queuemch_stack),push)==(push(aa));
  List_Header(Machine(Queuemch_stack),pop)==(aa <-- pop)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Queuemch_stack),push)==(aa: ITEMS-ran(stack));
  List_Precondition(Machine(Queuemch_stack),pop)==(size(stack)>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Queuemch_stack),pop)==(size(stack)>0 | aa,stack:=last(stack),front(stack));
  Expanded_List_Substitution(Machine(Queuemch_stack),push)==(aa: ITEMS-ran(stack) | stack:=stack<-aa);
  List_Substitution(Machine(Queuemch_stack),push)==(stack:=stack<-aa);
  List_Substitution(Machine(Queuemch_stack),pop)==(aa:=last(stack) || stack:=front(stack))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Queuemch_stack))==(?);
  Inherited_List_Constants(Machine(Queuemch_stack))==(?);
  List_Constants(Machine(Queuemch_stack))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Queuemch_stack),ITEMS)==(?);
  Context_List_Enumerated(Machine(Queuemch_stack))==(?);
  Context_List_Defered(Machine(Queuemch_stack))==(?);
  Context_List_Sets(Machine(Queuemch_stack))==(?);
  List_Valuable_Sets(Machine(Queuemch_stack))==(ITEMS);
  Inherited_List_Enumerated(Machine(Queuemch_stack))==(?);
  Inherited_List_Defered(Machine(Queuemch_stack))==(?);
  Inherited_List_Sets(Machine(Queuemch_stack))==(?);
  List_Enumerated(Machine(Queuemch_stack))==(?);
  List_Defered(Machine(Queuemch_stack))==(ITEMS);
  List_Sets(Machine(Queuemch_stack))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Queuemch_stack))==(?);
  Expanded_List_HiddenConstants(Machine(Queuemch_stack))==(?);
  List_HiddenConstants(Machine(Queuemch_stack))==(?);
  External_List_HiddenConstants(Machine(Queuemch_stack))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Queuemch_stack))==(btrue);
  Context_List_Properties(Machine(Queuemch_stack))==(btrue);
  Inherited_List_Properties(Machine(Queuemch_stack))==(btrue);
  List_Properties(Machine(Queuemch_stack))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Queuemch_stack),push)==(?);
  List_ANY_Var(Machine(Queuemch_stack),pop)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Queuemch_stack)) == (ITEMS | ? | stack | ? | push,pop | ? | ? | ? | Queuemch_stack);
  List_Of_HiddenCst_Ids(Machine(Queuemch_stack)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Queuemch_stack)) == (?);
  List_Of_VisibleVar_Ids(Machine(Queuemch_stack)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Queuemch_stack)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Queuemch_stack)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Queuemch_stack)) == (Type(stack) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Queuemch_stack)) == (Type(pop) == Cst(atype(ITEMS,?,?),No_type);Type(push) == Cst(No_type,atype(ITEMS,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == VALIDATION_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
