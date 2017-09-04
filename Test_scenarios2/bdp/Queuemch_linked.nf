Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Queuemch_linked))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Queuemch_linked))==(Machine(Queuemch_linked));
  Level(Machine(Queuemch_linked))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Queuemch_linked)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Queuemch_linked))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Queuemch_linked))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Queuemch_linked))==(?);
  List_Includes(Machine(Queuemch_linked))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Queuemch_linked))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Queuemch_linked))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Queuemch_linked))==(?);
  Context_List_Variables(Machine(Queuemch_linked))==(?);
  Abstract_List_Variables(Machine(Queuemch_linked))==(?);
  Local_List_Variables(Machine(Queuemch_linked))==(next,content,anchor);
  List_Variables(Machine(Queuemch_linked))==(next,content,anchor);
  External_List_Variables(Machine(Queuemch_linked))==(next,content,anchor)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Queuemch_linked))==(?);
  Abstract_List_VisibleVariables(Machine(Queuemch_linked))==(?);
  External_List_VisibleVariables(Machine(Queuemch_linked))==(?);
  Expanded_List_VisibleVariables(Machine(Queuemch_linked))==(?);
  List_VisibleVariables(Machine(Queuemch_linked))==(?);
  Internal_List_VisibleVariables(Machine(Queuemch_linked))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Queuemch_linked))==(btrue);
  Gluing_List_Invariant(Machine(Queuemch_linked))==(btrue);
  Expanded_List_Invariant(Machine(Queuemch_linked))==(btrue);
  Abstract_List_Invariant(Machine(Queuemch_linked))==(btrue);
  Context_List_Invariant(Machine(Queuemch_linked))==(btrue);
  List_Invariant(Machine(Queuemch_linked))==(content: iseq(ITEMS) & anchor: ran(content) & next: ran(content) -->> ran(content) & content: seq(ran(content)))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Queuemch_linked))==(btrue);
  Abstract_List_Assertions(Machine(Queuemch_linked))==(btrue);
  Context_List_Assertions(Machine(Queuemch_linked))==(btrue);
  List_Assertions(Machine(Queuemch_linked))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Queuemch_linked))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Queuemch_linked))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Queuemch_linked))==(@item.(item: ITEMS ==> anchor,content,next:=item,[item],{item|->item}));
  Context_List_Initialisation(Machine(Queuemch_linked))==(skip);
  List_Initialisation(Machine(Queuemch_linked))==(ANY item WHERE item: ITEMS THEN anchor:=item || content:=[item] || next:={item|->item} END)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Queuemch_linked))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Queuemch_linked))==(btrue);
  List_Constraints(Machine(Queuemch_linked))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Queuemch_linked))==(append,remove,remove2,getindexof,getelem);
  List_Operations(Machine(Queuemch_linked))==(append,remove,remove2,getindexof,getelem)
END
&
THEORY ListInputX IS
  List_Input(Machine(Queuemch_linked),append)==(ii);
  List_Input(Machine(Queuemch_linked),remove)==(ii);
  List_Input(Machine(Queuemch_linked),remove2)==(nn);
  List_Input(Machine(Queuemch_linked),getindexof)==(aa);
  List_Input(Machine(Queuemch_linked),getelem)==(ii)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Queuemch_linked),append)==(?);
  List_Output(Machine(Queuemch_linked),remove)==(?);
  List_Output(Machine(Queuemch_linked),remove2)==(?);
  List_Output(Machine(Queuemch_linked),getindexof)==(ii);
  List_Output(Machine(Queuemch_linked),getelem)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Queuemch_linked),append)==(append(ii));
  List_Header(Machine(Queuemch_linked),remove)==(remove(ii));
  List_Header(Machine(Queuemch_linked),remove2)==(remove2(nn));
  List_Header(Machine(Queuemch_linked),getindexof)==(ii <-- getindexof(aa));
  List_Header(Machine(Queuemch_linked),getelem)==(aa <-- getelem(ii))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Queuemch_linked),append)==(ii: ITEMS-ran(content));
  List_Precondition(Machine(Queuemch_linked),remove)==(ii: ran(content)-{anchor} & size(content)>1);
  List_Precondition(Machine(Queuemch_linked),remove2)==(nn: dom(content)-{1} & size(content)>1);
  List_Precondition(Machine(Queuemch_linked),getindexof)==(aa: ITEMS);
  List_Precondition(Machine(Queuemch_linked),getelem)==(ii: dom(content))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Queuemch_linked),getelem)==(ii: dom(content) | aa:=content(ii));
  Expanded_List_Substitution(Machine(Queuemch_linked),getindexof)==(aa: ITEMS | aa: ran(content) ==> ii:=content~(aa) [] not(aa: ran(content)) ==> ii:=0);
  Expanded_List_Substitution(Machine(Queuemch_linked),remove2)==(nn: dom(content)-{1} & size(content)>1 | next,content:={content(nn)}<<|next<+{next~(content(nn))|->next(content(nn))},content/|\nn-1^(content\|/nn));
  Expanded_List_Substitution(Machine(Queuemch_linked),remove)==(ii: ran(content)-{anchor} & size(content)>1 | next:={ii}<<|next<+{next~(ii)|->next(ii)} || @xx.(xx = content~(ii) ==> content:=content/|\xx-1^(content\|/xx)));
  Expanded_List_Substitution(Machine(Queuemch_linked),append)==(ii: ITEMS-ran(content) | content,next:=content<-ii,next<+{ii|->anchor,last(content)|->ii});
  List_Substitution(Machine(Queuemch_linked),append)==(content:=content<-ii || next:=next<+{ii|->anchor,last(content)|->ii});
  List_Substitution(Machine(Queuemch_linked),remove)==(next:={ii}<<|next<+{next~(ii)|->next(ii)} || LET xx BE xx = content~(ii) IN content:=content/|\xx-1^(content\|/xx) END);
  List_Substitution(Machine(Queuemch_linked),remove2)==(next:={content(nn)}<<|next<+{next~(content(nn))|->next(content(nn))} || content:=content/|\nn-1^(content\|/nn));
  List_Substitution(Machine(Queuemch_linked),getindexof)==(IF aa: ran(content) THEN ii:=content~(aa) ELSE ii:=0 END);
  List_Substitution(Machine(Queuemch_linked),getelem)==(aa:=content(ii))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Queuemch_linked))==(?);
  Inherited_List_Constants(Machine(Queuemch_linked))==(?);
  List_Constants(Machine(Queuemch_linked))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Queuemch_linked),ITEMS)==(?);
  Context_List_Enumerated(Machine(Queuemch_linked))==(?);
  Context_List_Defered(Machine(Queuemch_linked))==(?);
  Context_List_Sets(Machine(Queuemch_linked))==(?);
  List_Valuable_Sets(Machine(Queuemch_linked))==(ITEMS);
  Inherited_List_Enumerated(Machine(Queuemch_linked))==(?);
  Inherited_List_Defered(Machine(Queuemch_linked))==(?);
  Inherited_List_Sets(Machine(Queuemch_linked))==(?);
  List_Enumerated(Machine(Queuemch_linked))==(?);
  List_Defered(Machine(Queuemch_linked))==(ITEMS);
  List_Sets(Machine(Queuemch_linked))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Queuemch_linked))==(?);
  Expanded_List_HiddenConstants(Machine(Queuemch_linked))==(?);
  List_HiddenConstants(Machine(Queuemch_linked))==(?);
  External_List_HiddenConstants(Machine(Queuemch_linked))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Queuemch_linked))==(btrue);
  Context_List_Properties(Machine(Queuemch_linked))==(btrue);
  Inherited_List_Properties(Machine(Queuemch_linked))==(btrue);
  List_Properties(Machine(Queuemch_linked))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Queuemch_linked),?)==(Var(item) == atype(ITEMS,?,?));
  List_ANY_Var(Machine(Queuemch_linked),append)==(?);
  List_ANY_Var(Machine(Queuemch_linked),remove)==(?);
  List_ANY_Var(Machine(Queuemch_linked),remove2)==(?);
  List_ANY_Var(Machine(Queuemch_linked),getindexof)==(?);
  List_ANY_Var(Machine(Queuemch_linked),getelem)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Queuemch_linked)) == (ITEMS | ? | next,content,anchor | ? | append,remove,remove2,getindexof,getelem | ? | ? | ? | Queuemch_linked);
  List_Of_HiddenCst_Ids(Machine(Queuemch_linked)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Queuemch_linked)) == (?);
  List_Of_VisibleVar_Ids(Machine(Queuemch_linked)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Queuemch_linked)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Queuemch_linked)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Queuemch_linked)) == (Type(next) == Mvl(SetOf(atype(ITEMS,?,?)*atype(ITEMS,?,?)));Type(content) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ITEMS,?,?)));Type(anchor) == Mvl(atype(ITEMS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Queuemch_linked)) == (Type(getelem) == Cst(atype(ITEMS,?,?),btype(INTEGER,?,?));Type(getindexof) == Cst(btype(INTEGER,?,?),atype(ITEMS,?,?));Type(remove2) == Cst(No_type,btype(INTEGER,?,?));Type(remove) == Cst(No_type,atype(ITEMS,?,?));Type(append) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Queuemch_linked)) == (Type(getelem) == Cst(atype(ITEMS,?,?),btype(INTEGER,?,?));Type(getindexof) == Cst(btype(INTEGER,?,?),atype(ITEMS,?,?)))
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
