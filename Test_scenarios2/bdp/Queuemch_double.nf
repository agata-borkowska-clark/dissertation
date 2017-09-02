Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Queuemch_double))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Queuemch_double))==(Machine(Queuemch_double));
  Level(Machine(Queuemch_double))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Queuemch_double)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Queuemch_double))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Queuemch_double))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Queuemch_double))==(?);
  List_Includes(Machine(Queuemch_double))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Queuemch_double))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Queuemch_double))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Queuemch_double))==(?);
  Context_List_Variables(Machine(Queuemch_double))==(?);
  Abstract_List_Variables(Machine(Queuemch_double))==(?);
  Local_List_Variables(Machine(Queuemch_double))==(previous,next,content,anchor);
  List_Variables(Machine(Queuemch_double))==(previous,next,content,anchor);
  External_List_Variables(Machine(Queuemch_double))==(previous,next,content,anchor)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Queuemch_double))==(?);
  Abstract_List_VisibleVariables(Machine(Queuemch_double))==(?);
  External_List_VisibleVariables(Machine(Queuemch_double))==(?);
  Expanded_List_VisibleVariables(Machine(Queuemch_double))==(?);
  List_VisibleVariables(Machine(Queuemch_double))==(?);
  Internal_List_VisibleVariables(Machine(Queuemch_double))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Queuemch_double))==(btrue);
  Gluing_List_Invariant(Machine(Queuemch_double))==(btrue);
  Expanded_List_Invariant(Machine(Queuemch_double))==(btrue);
  Abstract_List_Invariant(Machine(Queuemch_double))==(btrue);
  Context_List_Invariant(Machine(Queuemch_double))==(btrue);
  List_Invariant(Machine(Queuemch_double))==(content <: ITEMS & content: FIN(content) & anchor: content & next: content -->> content & previous: content -->> content & (next;previous) = id(content) & (previous;next) = id(content))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Queuemch_double))==(btrue);
  Abstract_List_Assertions(Machine(Queuemch_double))==(btrue);
  Context_List_Assertions(Machine(Queuemch_double))==(btrue);
  List_Assertions(Machine(Queuemch_double))==(!item.(item: content => previous(next(item)) = item) & !item.(item: content => next(previous(item)) = item))
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Queuemch_double))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Queuemch_double))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Queuemch_double))==(@item.(item: ITEMS ==> anchor,content,next,previous:=item,{item},{item|->item},{item|->item}));
  Context_List_Initialisation(Machine(Queuemch_double))==(skip);
  List_Initialisation(Machine(Queuemch_double))==(ANY item WHERE item: ITEMS THEN anchor:=item || content:={item} || next:={item|->item} || previous:={item|->item} END)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Queuemch_double))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Queuemch_double))==(btrue);
  List_Constraints(Machine(Queuemch_double))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Queuemch_double))==(append,remove);
  List_Operations(Machine(Queuemch_double))==(append,remove)
END
&
THEORY ListInputX IS
  List_Input(Machine(Queuemch_double),append)==(ii);
  List_Input(Machine(Queuemch_double),remove)==(ii)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Queuemch_double),append)==(?);
  List_Output(Machine(Queuemch_double),remove)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Queuemch_double),append)==(append(ii));
  List_Header(Machine(Queuemch_double),remove)==(remove(ii))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Queuemch_double),append)==(ii: ITEMS-content);
  List_Precondition(Machine(Queuemch_double),remove)==(ii: content-{anchor})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Queuemch_double),remove)==(ii: content-{anchor} | content,next,previous:=content-{ii},{ii}<<|next<+{previous(ii)|->next(ii)},{ii}<<|previous<+{next(ii)|->previous(ii)});
  Expanded_List_Substitution(Machine(Queuemch_double),append)==(ii: ITEMS-content | content,previous,next:=content\/{ii},previous<+{anchor|->ii,ii|->previous(anchor)},next<+{ii|->anchor,previous(anchor)|->ii});
  List_Substitution(Machine(Queuemch_double),append)==(content:=content\/{ii} || previous:=previous<+{anchor|->ii,ii|->previous(anchor)} || next:=next<+{ii|->anchor,previous(anchor)|->ii});
  List_Substitution(Machine(Queuemch_double),remove)==(content:=content-{ii} || next:={ii}<<|next<+{previous(ii)|->next(ii)} || previous:={ii}<<|previous<+{next(ii)|->previous(ii)})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Queuemch_double))==(?);
  Inherited_List_Constants(Machine(Queuemch_double))==(?);
  List_Constants(Machine(Queuemch_double))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Queuemch_double),ITEMS)==(?);
  Context_List_Enumerated(Machine(Queuemch_double))==(?);
  Context_List_Defered(Machine(Queuemch_double))==(?);
  Context_List_Sets(Machine(Queuemch_double))==(?);
  List_Valuable_Sets(Machine(Queuemch_double))==(ITEMS);
  Inherited_List_Enumerated(Machine(Queuemch_double))==(?);
  Inherited_List_Defered(Machine(Queuemch_double))==(?);
  Inherited_List_Sets(Machine(Queuemch_double))==(?);
  List_Enumerated(Machine(Queuemch_double))==(?);
  List_Defered(Machine(Queuemch_double))==(ITEMS);
  List_Sets(Machine(Queuemch_double))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Queuemch_double))==(?);
  Expanded_List_HiddenConstants(Machine(Queuemch_double))==(?);
  List_HiddenConstants(Machine(Queuemch_double))==(?);
  External_List_HiddenConstants(Machine(Queuemch_double))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Queuemch_double))==(btrue);
  Context_List_Properties(Machine(Queuemch_double))==(btrue);
  Inherited_List_Properties(Machine(Queuemch_double))==(btrue);
  List_Properties(Machine(Queuemch_double))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Queuemch_double),?)==(Var(item) == atype(ITEMS,?,?));
  List_ANY_Var(Machine(Queuemch_double),append)==(?);
  List_ANY_Var(Machine(Queuemch_double),remove)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Queuemch_double)) == (ITEMS | ? | previous,next,content,anchor | ? | append,remove | ? | ? | ? | Queuemch_double);
  List_Of_HiddenCst_Ids(Machine(Queuemch_double)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Queuemch_double)) == (?);
  List_Of_VisibleVar_Ids(Machine(Queuemch_double)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Queuemch_double)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Queuemch_double)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Queuemch_double)) == (Type(previous) == Mvl(SetOf(atype(ITEMS,?,?)*atype(ITEMS,?,?)));Type(next) == Mvl(SetOf(atype(ITEMS,?,?)*atype(ITEMS,?,?)));Type(content) == Mvl(SetOf(atype(ITEMS,?,?)));Type(anchor) == Mvl(atype(ITEMS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Queuemch_double)) == (Type(remove) == Cst(No_type,atype(ITEMS,?,?));Type(append) == Cst(No_type,atype(ITEMS,?,?)))
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
