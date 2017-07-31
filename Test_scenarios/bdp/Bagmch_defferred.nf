Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_defferred))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_defferred))==(Machine(Bagmch_defferred));
  Level(Machine(Bagmch_defferred))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_defferred)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_defferred))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_defferred))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_defferred))==(?);
  List_Includes(Machine(Bagmch_defferred))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_defferred))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_defferred))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_defferred))==(?);
  Context_List_Variables(Machine(Bagmch_defferred))==(?);
  Abstract_List_Variables(Machine(Bagmch_defferred))==(?);
  Local_List_Variables(Machine(Bagmch_defferred))==(content);
  List_Variables(Machine(Bagmch_defferred))==(content);
  External_List_Variables(Machine(Bagmch_defferred))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_defferred))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_defferred))==(?);
  External_List_VisibleVariables(Machine(Bagmch_defferred))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_defferred))==(?);
  List_VisibleVariables(Machine(Bagmch_defferred))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_defferred))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_defferred))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_defferred))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_defferred))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_defferred))==(btrue);
  Context_List_Invariant(Machine(Bagmch_defferred))==(btrue);
  List_Invariant(Machine(Bagmch_defferred))==(content <: ITEMS & content: FIN(content) & card(content)<=max_elem)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_defferred))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_defferred))==(btrue);
  Context_List_Assertions(Machine(Bagmch_defferred))==(btrue);
  List_Assertions(Machine(Bagmch_defferred))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_defferred))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_defferred))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_defferred))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_defferred))==(skip);
  List_Initialisation(Machine(Bagmch_defferred))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_defferred))==(ITEMS,max_elem)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_defferred))==(btrue);
  List_Constraints(Machine(Bagmch_defferred))==(max_elem: NAT1 & ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_defferred))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_defferred))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_defferred),additem)==(aa);
  List_Input(Machine(Bagmch_defferred),removeitem)==(aa);
  List_Input(Machine(Bagmch_defferred),getcontents)==(?);
  List_Input(Machine(Bagmch_defferred),howmany)==(?);
  List_Input(Machine(Bagmch_defferred),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_defferred),additem)==(?);
  List_Output(Machine(Bagmch_defferred),removeitem)==(?);
  List_Output(Machine(Bagmch_defferred),getcontents)==(items);
  List_Output(Machine(Bagmch_defferred),howmany)==(nn);
  List_Output(Machine(Bagmch_defferred),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_defferred),additem)==(additem(aa));
  List_Header(Machine(Bagmch_defferred),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_defferred),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_defferred),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_defferred),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_defferred),additem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_defferred),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_defferred),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_defferred),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_defferred),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_defferred),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_defferred),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_defferred),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_defferred),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_defferred),additem)==(aa: ITEMS | card(content)<max_elem ==> content:=content\/{aa} [] not(card(content)<max_elem) ==> skip);
  List_Substitution(Machine(Bagmch_defferred),additem)==(IF card(content)<max_elem THEN content:=content\/{aa} END);
  List_Substitution(Machine(Bagmch_defferred),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_defferred),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_defferred),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_defferred),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_defferred))==(?);
  Inherited_List_Constants(Machine(Bagmch_defferred))==(?);
  List_Constants(Machine(Bagmch_defferred))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Bagmch_defferred))==(?);
  Context_List_Defered(Machine(Bagmch_defferred))==(?);
  Context_List_Sets(Machine(Bagmch_defferred))==(?);
  List_Valuable_Sets(Machine(Bagmch_defferred))==(?);
  Inherited_List_Enumerated(Machine(Bagmch_defferred))==(?);
  Inherited_List_Defered(Machine(Bagmch_defferred))==(?);
  Inherited_List_Sets(Machine(Bagmch_defferred))==(?);
  List_Enumerated(Machine(Bagmch_defferred))==(?);
  List_Defered(Machine(Bagmch_defferred))==(?);
  List_Sets(Machine(Bagmch_defferred))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_defferred))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_defferred))==(?);
  List_HiddenConstants(Machine(Bagmch_defferred))==(?);
  External_List_HiddenConstants(Machine(Bagmch_defferred))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_defferred))==(btrue);
  Context_List_Properties(Machine(Bagmch_defferred))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_defferred))==(btrue);
  List_Properties(Machine(Bagmch_defferred))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_defferred),additem)==(?);
  List_ANY_Var(Machine(Bagmch_defferred),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_defferred),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_defferred),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_defferred),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_defferred)) == (? | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ITEMS,max_elem | Bagmch_defferred);
  List_Of_HiddenCst_Ids(Machine(Bagmch_defferred)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_defferred)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_defferred)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_defferred)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(Bagmch_defferred)) == (Type(max_elem) == Prm(btype(INTEGER,?,?));Type(ITEMS) == Prm(SetOf(atype(ITEMS,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_defferred)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_defferred)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_defferred)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
