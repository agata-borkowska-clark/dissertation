Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Queuemch_double_initial))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Queuemch_double_initial))==(Machine(Queuemch_double_initial));
  Level(Machine(Queuemch_double_initial))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Queuemch_double_initial)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Queuemch_double_initial))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Queuemch_double_initial))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Queuemch_double_initial))==(?);
  List_Includes(Machine(Queuemch_double_initial))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Queuemch_double_initial))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Queuemch_double_initial))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Queuemch_double_initial))==(?);
  Context_List_Variables(Machine(Queuemch_double_initial))==(?);
  Abstract_List_Variables(Machine(Queuemch_double_initial))==(?);
  Local_List_Variables(Machine(Queuemch_double_initial))==(previous,next,content,anchor);
  List_Variables(Machine(Queuemch_double_initial))==(previous,next,content,anchor);
  External_List_Variables(Machine(Queuemch_double_initial))==(previous,next,content,anchor)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Queuemch_double_initial))==(?);
  Abstract_List_VisibleVariables(Machine(Queuemch_double_initial))==(?);
  External_List_VisibleVariables(Machine(Queuemch_double_initial))==(?);
  Expanded_List_VisibleVariables(Machine(Queuemch_double_initial))==(?);
  List_VisibleVariables(Machine(Queuemch_double_initial))==(?);
  Internal_List_VisibleVariables(Machine(Queuemch_double_initial))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Queuemch_double_initial))==(btrue);
  Gluing_List_Invariant(Machine(Queuemch_double_initial))==(btrue);
  Expanded_List_Invariant(Machine(Queuemch_double_initial))==(btrue);
  Abstract_List_Invariant(Machine(Queuemch_double_initial))==(btrue);
  Context_List_Invariant(Machine(Queuemch_double_initial))==(btrue);
  List_Invariant(Machine(Queuemch_double_initial))==(content: iseq(ITEMS) & anchor: ran(content) & next: ran(content) -->> ran(content) & previous: ran(content) -->> ran(content) & (next;previous) = id(ran(content)) & (previous;next) = id(ran(content)))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Queuemch_double_initial))==(btrue);
  Abstract_List_Assertions(Machine(Queuemch_double_initial))==(btrue);
  Context_List_Assertions(Machine(Queuemch_double_initial))==(btrue);
  List_Assertions(Machine(Queuemch_double_initial))==(!item.(item: ran(content) => previous(next(item)) = item) & !item.(item: ran(content) => next(previous(item)) = item))
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Queuemch_double_initial))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Queuemch_double_initial))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Queuemch_double_initial))==(@item.(item: ITEMS ==> anchor,content,next,previous:=item,[item],{item|->item},{item|->item}));
  Context_List_Initialisation(Machine(Queuemch_double_initial))==(skip);
  List_Initialisation(Machine(Queuemch_double_initial))==(ANY item WHERE item: ITEMS THEN anchor:=item || content:=[item] || next:={item|->item} || previous:={item|->item} END)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Queuemch_double_initial))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Queuemch_double_initial))==(btrue);
  List_Constraints(Machine(Queuemch_double_initial))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Queuemch_double_initial))==(append,remove,getindexof,getelem);
  List_Operations(Machine(Queuemch_double_initial))==(append,remove,getindexof,getelem)
END
&
THEORY ListInputX IS
  List_Input(Machine(Queuemch_double_initial),append)==(ii);
  List_Input(Machine(Queuemch_double_initial),remove)==(ii);
  List_Input(Machine(Queuemch_double_initial),getindexof)==(aa);
  List_Input(Machine(Queuemch_double_initial),getelem)==(ii)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Queuemch_double_initial),append)==(?);
  List_Output(Machine(Queuemch_double_initial),remove)==(?);
  List_Output(Machine(Queuemch_double_initial),getindexof)==(ii);
  List_Output(Machine(Queuemch_double_initial),getelem)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Queuemch_double_initial),append)==(append(ii));
  List_Header(Machine(Queuemch_double_initial),remove)==(remove(ii));
  List_Header(Machine(Queuemch_double_initial),getindexof)==(ii <-- getindexof(aa));
  List_Header(Machine(Queuemch_double_initial),getelem)==(aa <-- getelem(ii))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Queuemch_double_initial),append)==(ii: ITEMS-ran(content));
  List_Precondition(Machine(Queuemch_double_initial),remove)==(ii: ran(content)-{anchor});
  List_Precondition(Machine(Queuemch_double_initial),getindexof)==(aa: ITEMS);
  List_Precondition(Machine(Queuemch_double_initial),getelem)==(ii: dom(content))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Queuemch_double_initial),getelem)==(ii: dom(content) | aa:=content(ii));
  Expanded_List_Substitution(Machine(Queuemch_double_initial),getindexof)==(aa: ITEMS | aa: ran(content) ==> ii:=content~(aa) [] not(aa: ran(content)) ==> ii:=0);
  Expanded_List_Substitution(Machine(Queuemch_double_initial),remove)==(ii: ran(content)-{anchor} | next,previous:={ii}<<|next<+{previous(ii)|->next(ii)},{ii}<<|previous<+{next(ii)|->previous(ii)} || @xx.(xx = content~(ii) ==> content:=content/|\xx-1^(content\|/xx)));
  Expanded_List_Substitution(Machine(Queuemch_double_initial),append)==(ii: ITEMS-ran(content) | content,previous,next:=content<-ii,previous<+{anchor|->ii,ii|->previous(anchor)},next<+{ii|->anchor,previous(anchor)|->ii});
  List_Substitution(Machine(Queuemch_double_initial),append)==(content:=content<-ii || previous:=previous<+{anchor|->ii,ii|->previous(anchor)} || next:=next<+{ii|->anchor,previous(anchor)|->ii});
  List_Substitution(Machine(Queuemch_double_initial),remove)==(next:={ii}<<|next<+{previous(ii)|->next(ii)} || previous:={ii}<<|previous<+{next(ii)|->previous(ii)} || LET xx BE xx = content~(ii) IN content:=content/|\xx-1^(content\|/xx) END);
  List_Substitution(Machine(Queuemch_double_initial),getindexof)==(IF aa: ran(content) THEN ii:=content~(aa) ELSE ii:=0 END);
  List_Substitution(Machine(Queuemch_double_initial),getelem)==(aa:=content(ii))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Queuemch_double_initial))==(?);
  Inherited_List_Constants(Machine(Queuemch_double_initial))==(?);
  List_Constants(Machine(Queuemch_double_initial))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Queuemch_double_initial),ITEMS)==(?);
  Context_List_Enumerated(Machine(Queuemch_double_initial))==(?);
  Context_List_Defered(Machine(Queuemch_double_initial))==(?);
  Context_List_Sets(Machine(Queuemch_double_initial))==(?);
  List_Valuable_Sets(Machine(Queuemch_double_initial))==(ITEMS);
  Inherited_List_Enumerated(Machine(Queuemch_double_initial))==(?);
  Inherited_List_Defered(Machine(Queuemch_double_initial))==(?);
  Inherited_List_Sets(Machine(Queuemch_double_initial))==(?);
  List_Enumerated(Machine(Queuemch_double_initial))==(?);
  List_Defered(Machine(Queuemch_double_initial))==(ITEMS);
  List_Sets(Machine(Queuemch_double_initial))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Queuemch_double_initial))==(?);
  Expanded_List_HiddenConstants(Machine(Queuemch_double_initial))==(?);
  List_HiddenConstants(Machine(Queuemch_double_initial))==(?);
  External_List_HiddenConstants(Machine(Queuemch_double_initial))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Queuemch_double_initial))==(btrue);
  Context_List_Properties(Machine(Queuemch_double_initial))==(btrue);
  Inherited_List_Properties(Machine(Queuemch_double_initial))==(btrue);
  List_Properties(Machine(Queuemch_double_initial))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Queuemch_double_initial),?)==(Var(item) == atype(ITEMS,?,?));
  List_ANY_Var(Machine(Queuemch_double_initial),append)==(?);
  List_ANY_Var(Machine(Queuemch_double_initial),remove)==(?);
  List_ANY_Var(Machine(Queuemch_double_initial),getindexof)==(?);
  List_ANY_Var(Machine(Queuemch_double_initial),getelem)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Queuemch_double_initial)) == (ITEMS | ? | previous,next,content,anchor | ? | append,remove,getindexof,getelem | ? | ? | ? | Queuemch_double_initial);
  List_Of_HiddenCst_Ids(Machine(Queuemch_double_initial)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Queuemch_double_initial)) == (?);
  List_Of_VisibleVar_Ids(Machine(Queuemch_double_initial)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Queuemch_double_initial)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Queuemch_double_initial)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Queuemch_double_initial)) == (Type(previous) == Mvl(SetOf(atype(ITEMS,?,?)*atype(ITEMS,?,?)));Type(next) == Mvl(SetOf(atype(ITEMS,?,?)*atype(ITEMS,?,?)));Type(content) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ITEMS,?,?)));Type(anchor) == Mvl(atype(ITEMS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Queuemch_double_initial)) == (Type(getelem) == Cst(atype(ITEMS,?,?),btype(INTEGER,?,?));Type(getindexof) == Cst(btype(INTEGER,?,?),atype(ITEMS,?,?));Type(remove) == Cst(No_type,atype(ITEMS,?,?));Type(append) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Queuemch_double_initial)) == (Type(getelem) == Cst(atype(ITEMS,?,?),btype(INTEGER,?,?));Type(getindexof) == Cst(btype(INTEGER,?,?),atype(ITEMS,?,?)))
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
