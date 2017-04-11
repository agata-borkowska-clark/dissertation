Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_numbers))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_numbers))==(Machine(Bagmch_numbers));
  Level(Machine(Bagmch_numbers))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_numbers)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_numbers))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_numbers))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_numbers))==(?);
  List_Includes(Machine(Bagmch_numbers))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_numbers))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_numbers))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_numbers))==(?);
  Context_List_Variables(Machine(Bagmch_numbers))==(?);
  Abstract_List_Variables(Machine(Bagmch_numbers))==(?);
  Local_List_Variables(Machine(Bagmch_numbers))==(content);
  List_Variables(Machine(Bagmch_numbers))==(content);
  External_List_Variables(Machine(Bagmch_numbers))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_numbers))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_numbers))==(?);
  External_List_VisibleVariables(Machine(Bagmch_numbers))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_numbers))==(?);
  List_VisibleVariables(Machine(Bagmch_numbers))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_numbers))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_numbers))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_numbers))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_numbers))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_numbers))==(btrue);
  Context_List_Invariant(Machine(Bagmch_numbers))==(btrue);
  List_Invariant(Machine(Bagmch_numbers))==(content <: items & card(content)<=max_elem)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_numbers))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_numbers))==(btrue);
  Context_List_Assertions(Machine(Bagmch_numbers))==(btrue);
  List_Assertions(Machine(Bagmch_numbers))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_numbers))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_numbers))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_numbers))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_numbers))==(skip);
  List_Initialisation(Machine(Bagmch_numbers))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_numbers))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_numbers))==(btrue);
  List_Constraints(Machine(Bagmch_numbers))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_numbers))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_numbers))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_numbers),additem)==(aa);
  List_Input(Machine(Bagmch_numbers),removeitem)==(aa);
  List_Input(Machine(Bagmch_numbers),getcontents)==(?);
  List_Input(Machine(Bagmch_numbers),howmany)==(?);
  List_Input(Machine(Bagmch_numbers),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_numbers),additem)==(?);
  List_Output(Machine(Bagmch_numbers),removeitem)==(?);
  List_Output(Machine(Bagmch_numbers),getcontents)==(output);
  List_Output(Machine(Bagmch_numbers),howmany)==(nn);
  List_Output(Machine(Bagmch_numbers),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_numbers),additem)==(additem(aa));
  List_Header(Machine(Bagmch_numbers),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_numbers),getcontents)==(output <-- getcontents);
  List_Header(Machine(Bagmch_numbers),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_numbers),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_numbers),additem)==(aa: items);
  List_Precondition(Machine(Bagmch_numbers),removeitem)==(aa: items);
  List_Precondition(Machine(Bagmch_numbers),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_numbers),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_numbers),isin)==(aa: items)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_numbers),isin)==(aa: items | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_numbers),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_numbers),getcontents)==(btrue | output:=content);
  Expanded_List_Substitution(Machine(Bagmch_numbers),removeitem)==(aa: items | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_numbers),additem)==(aa: items | card(content)<max_elem ==> content:=content\/{aa} [] not(card(content)<max_elem) ==> skip);
  List_Substitution(Machine(Bagmch_numbers),additem)==(IF card(content)<max_elem THEN content:=content\/{aa} END);
  List_Substitution(Machine(Bagmch_numbers),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_numbers),getcontents)==(output:=content);
  List_Substitution(Machine(Bagmch_numbers),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_numbers),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_numbers))==(max_elem,items);
  Inherited_List_Constants(Machine(Bagmch_numbers))==(?);
  List_Constants(Machine(Bagmch_numbers))==(max_elem,items)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Bagmch_numbers))==(?);
  Context_List_Defered(Machine(Bagmch_numbers))==(?);
  Context_List_Sets(Machine(Bagmch_numbers))==(?);
  List_Valuable_Sets(Machine(Bagmch_numbers))==(?);
  Inherited_List_Enumerated(Machine(Bagmch_numbers))==(?);
  Inherited_List_Defered(Machine(Bagmch_numbers))==(?);
  Inherited_List_Sets(Machine(Bagmch_numbers))==(?);
  List_Enumerated(Machine(Bagmch_numbers))==(?);
  List_Defered(Machine(Bagmch_numbers))==(?);
  List_Sets(Machine(Bagmch_numbers))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_numbers))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_numbers))==(?);
  List_HiddenConstants(Machine(Bagmch_numbers))==(?);
  External_List_HiddenConstants(Machine(Bagmch_numbers))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_numbers))==(btrue);
  Context_List_Properties(Machine(Bagmch_numbers))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_numbers))==(btrue);
  List_Properties(Machine(Bagmch_numbers))==(max_elem = 2 & items = {1,2,3})
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_numbers),additem)==(?);
  List_ANY_Var(Machine(Bagmch_numbers),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_numbers),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_numbers),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_numbers),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_numbers)) == (max_elem,items | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_numbers);
  List_Of_HiddenCst_Ids(Machine(Bagmch_numbers)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_numbers)) == (max_elem,items);
  List_Of_VisibleVar_Ids(Machine(Bagmch_numbers)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_numbers)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Bagmch_numbers)) == (Type(max_elem) == Cst(btype(INTEGER,?,?));Type(items) == Cst(SetOf(btype(INTEGER,"[items","]items"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_numbers)) == (Type(content) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_numbers)) == (Type(isin) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(btype(INTEGER,?,?)),No_type);Type(removeitem) == Cst(No_type,btype(INTEGER,?,?));Type(additem) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Bagmch_numbers)) == (Type(isin) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(btype(INTEGER,?,?)),No_type))
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
