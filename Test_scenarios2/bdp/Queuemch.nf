Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Queuemch))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Queuemch))==(Machine(Queuemch));
  Level(Machine(Queuemch))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Queuemch)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Queuemch))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Queuemch))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Queuemch))==(?);
  List_Includes(Machine(Queuemch))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Queuemch))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Queuemch))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Queuemch))==(?);
  Context_List_Variables(Machine(Queuemch))==(?);
  Abstract_List_Variables(Machine(Queuemch))==(?);
  Local_List_Variables(Machine(Queuemch))==(queue);
  List_Variables(Machine(Queuemch))==(queue);
  External_List_Variables(Machine(Queuemch))==(queue)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Queuemch))==(?);
  Abstract_List_VisibleVariables(Machine(Queuemch))==(?);
  External_List_VisibleVariables(Machine(Queuemch))==(?);
  Expanded_List_VisibleVariables(Machine(Queuemch))==(?);
  List_VisibleVariables(Machine(Queuemch))==(?);
  Internal_List_VisibleVariables(Machine(Queuemch))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Queuemch))==(btrue);
  Gluing_List_Invariant(Machine(Queuemch))==(btrue);
  Expanded_List_Invariant(Machine(Queuemch))==(btrue);
  Abstract_List_Invariant(Machine(Queuemch))==(btrue);
  Context_List_Invariant(Machine(Queuemch))==(btrue);
  List_Invariant(Machine(Queuemch))==(queue: seq(ITEMS) & queue: seq(ran(queue)))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Queuemch))==(btrue);
  Abstract_List_Assertions(Machine(Queuemch))==(btrue);
  Context_List_Assertions(Machine(Queuemch))==(btrue);
  List_Assertions(Machine(Queuemch))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Queuemch))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Queuemch))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Queuemch))==(queue:=<>);
  Context_List_Initialisation(Machine(Queuemch))==(skip);
  List_Initialisation(Machine(Queuemch))==(queue:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Queuemch))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Queuemch))==(btrue);
  List_Constraints(Machine(Queuemch))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Queuemch))==(enqueue,dequeue);
  List_Operations(Machine(Queuemch))==(enqueue,dequeue)
END
&
THEORY ListInputX IS
  List_Input(Machine(Queuemch),enqueue)==(aa);
  List_Input(Machine(Queuemch),dequeue)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Queuemch),enqueue)==(?);
  List_Output(Machine(Queuemch),dequeue)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Queuemch),enqueue)==(enqueue(aa));
  List_Header(Machine(Queuemch),dequeue)==(aa <-- dequeue)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Queuemch),enqueue)==(aa: ITEMS-ran(queue));
  List_Precondition(Machine(Queuemch),dequeue)==(size(queue)>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Queuemch),dequeue)==(size(queue)>0 | aa,queue:=first(queue),tail(queue));
  Expanded_List_Substitution(Machine(Queuemch),enqueue)==(aa: ITEMS-ran(queue) | queue:=queue<-aa);
  List_Substitution(Machine(Queuemch),enqueue)==(queue:=queue<-aa);
  List_Substitution(Machine(Queuemch),dequeue)==(aa:=first(queue) || queue:=tail(queue))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Queuemch))==(?);
  Inherited_List_Constants(Machine(Queuemch))==(?);
  List_Constants(Machine(Queuemch))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Queuemch),ITEMS)==(?);
  Context_List_Enumerated(Machine(Queuemch))==(?);
  Context_List_Defered(Machine(Queuemch))==(?);
  Context_List_Sets(Machine(Queuemch))==(?);
  List_Valuable_Sets(Machine(Queuemch))==(ITEMS);
  Inherited_List_Enumerated(Machine(Queuemch))==(?);
  Inherited_List_Defered(Machine(Queuemch))==(?);
  Inherited_List_Sets(Machine(Queuemch))==(?);
  List_Enumerated(Machine(Queuemch))==(?);
  List_Defered(Machine(Queuemch))==(ITEMS);
  List_Sets(Machine(Queuemch))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Queuemch))==(?);
  Expanded_List_HiddenConstants(Machine(Queuemch))==(?);
  List_HiddenConstants(Machine(Queuemch))==(?);
  External_List_HiddenConstants(Machine(Queuemch))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Queuemch))==(btrue);
  Context_List_Properties(Machine(Queuemch))==(btrue);
  Inherited_List_Properties(Machine(Queuemch))==(btrue);
  List_Properties(Machine(Queuemch))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Queuemch),enqueue)==(?);
  List_ANY_Var(Machine(Queuemch),dequeue)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Queuemch)) == (ITEMS | ? | queue | ? | enqueue,dequeue | ? | ? | ? | Queuemch);
  List_Of_HiddenCst_Ids(Machine(Queuemch)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Queuemch)) == (?);
  List_Of_VisibleVar_Ids(Machine(Queuemch)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Queuemch)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Queuemch)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Queuemch)) == (Type(queue) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Queuemch)) == (Type(dequeue) == Cst(atype(ITEMS,?,?),No_type);Type(enqueue) == Cst(No_type,atype(ITEMS,?,?)))
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
