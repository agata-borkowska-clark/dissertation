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
  Local_List_Variables(Machine(Queuemch_stack))==(list);
  List_Variables(Machine(Queuemch_stack))==(list);
  External_List_Variables(Machine(Queuemch_stack))==(list)
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
  List_Invariant(Machine(Queuemch_stack))==(list: seq(ITEMS) & list: seq(ran(list)))
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
  Expanded_List_Initialisation(Machine(Queuemch_stack))==(list:=<>);
  Context_List_Initialisation(Machine(Queuemch_stack))==(skip);
  List_Initialisation(Machine(Queuemch_stack))==(list:=<>)
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
  Internal_List_Operations(Machine(Queuemch_stack))==(push,pop,enqueue,dequeue);
  List_Operations(Machine(Queuemch_stack))==(push,pop,enqueue,dequeue)
END
&
THEORY ListInputX IS
  List_Input(Machine(Queuemch_stack),push)==(aa);
  List_Input(Machine(Queuemch_stack),pop)==(?);
  List_Input(Machine(Queuemch_stack),enqueue)==(aa);
  List_Input(Machine(Queuemch_stack),dequeue)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Queuemch_stack),push)==(?);
  List_Output(Machine(Queuemch_stack),pop)==(aa);
  List_Output(Machine(Queuemch_stack),enqueue)==(?);
  List_Output(Machine(Queuemch_stack),dequeue)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Queuemch_stack),push)==(push(aa));
  List_Header(Machine(Queuemch_stack),pop)==(aa <-- pop);
  List_Header(Machine(Queuemch_stack),enqueue)==(enqueue(aa));
  List_Header(Machine(Queuemch_stack),dequeue)==(aa <-- dequeue)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Queuemch_stack),push)==(aa: ITEMS-ran(list));
  List_Precondition(Machine(Queuemch_stack),pop)==(size(list)>0);
  List_Precondition(Machine(Queuemch_stack),enqueue)==(aa: ITEMS-ran(list));
  List_Precondition(Machine(Queuemch_stack),dequeue)==(size(list)>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Queuemch_stack),dequeue)==(size(list)>0 | aa,list:=first(list),tail(list));
  Expanded_List_Substitution(Machine(Queuemch_stack),enqueue)==(aa: ITEMS-ran(list) | list:=list<-aa);
  Expanded_List_Substitution(Machine(Queuemch_stack),pop)==(size(list)>0 | aa,list:=last(list),front(list));
  Expanded_List_Substitution(Machine(Queuemch_stack),push)==(aa: ITEMS-ran(list) | list:=list<-aa);
  List_Substitution(Machine(Queuemch_stack),push)==(list:=list<-aa);
  List_Substitution(Machine(Queuemch_stack),pop)==(aa:=last(list) || list:=front(list));
  List_Substitution(Machine(Queuemch_stack),enqueue)==(list:=list<-aa);
  List_Substitution(Machine(Queuemch_stack),dequeue)==(aa:=first(list) || list:=tail(list))
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
  List_ANY_Var(Machine(Queuemch_stack),pop)==(?);
  List_ANY_Var(Machine(Queuemch_stack),enqueue)==(?);
  List_ANY_Var(Machine(Queuemch_stack),dequeue)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Queuemch_stack)) == (ITEMS | ? | list | ? | push,pop,enqueue,dequeue | ? | ? | ? | Queuemch_stack);
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
  Variables(Machine(Queuemch_stack)) == (Type(list) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Queuemch_stack)) == (Type(dequeue) == Cst(atype(ITEMS,?,?),No_type);Type(enqueue) == Cst(No_type,atype(ITEMS,?,?));Type(pop) == Cst(atype(ITEMS,?,?),No_type);Type(push) == Cst(No_type,atype(ITEMS,?,?)))
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
