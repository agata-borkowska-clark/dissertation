﻿Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bagmch_unbounded))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bagmch_unbounded))==(Machine(Bagmch_unbounded));
  Level(Machine(Bagmch_unbounded))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bagmch_unbounded)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bagmch_unbounded))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bagmch_unbounded))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bagmch_unbounded))==(?);
  List_Includes(Machine(Bagmch_unbounded))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bagmch_unbounded))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bagmch_unbounded))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bagmch_unbounded))==(?);
  Context_List_Variables(Machine(Bagmch_unbounded))==(?);
  Abstract_List_Variables(Machine(Bagmch_unbounded))==(?);
  Local_List_Variables(Machine(Bagmch_unbounded))==(content);
  List_Variables(Machine(Bagmch_unbounded))==(content);
  External_List_Variables(Machine(Bagmch_unbounded))==(content)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bagmch_unbounded))==(?);
  Abstract_List_VisibleVariables(Machine(Bagmch_unbounded))==(?);
  External_List_VisibleVariables(Machine(Bagmch_unbounded))==(?);
  Expanded_List_VisibleVariables(Machine(Bagmch_unbounded))==(?);
  List_VisibleVariables(Machine(Bagmch_unbounded))==(?);
  Internal_List_VisibleVariables(Machine(Bagmch_unbounded))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bagmch_unbounded))==(btrue);
  Gluing_List_Invariant(Machine(Bagmch_unbounded))==(btrue);
  Expanded_List_Invariant(Machine(Bagmch_unbounded))==(btrue);
  Abstract_List_Invariant(Machine(Bagmch_unbounded))==(btrue);
  Context_List_Invariant(Machine(Bagmch_unbounded))==(btrue);
  List_Invariant(Machine(Bagmch_unbounded))==(content <: ITEMS)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bagmch_unbounded))==(btrue);
  Abstract_List_Assertions(Machine(Bagmch_unbounded))==(btrue);
  Context_List_Assertions(Machine(Bagmch_unbounded))==(btrue);
  List_Assertions(Machine(Bagmch_unbounded))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bagmch_unbounded))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bagmch_unbounded))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bagmch_unbounded))==(content:={});
  Context_List_Initialisation(Machine(Bagmch_unbounded))==(skip);
  List_Initialisation(Machine(Bagmch_unbounded))==(content:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bagmch_unbounded))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_unbounded))==(btrue);
  List_Constraints(Machine(Bagmch_unbounded))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_unbounded))==(additem,removeitem,getcontents,howmany,isin);
  List_Operations(Machine(Bagmch_unbounded))==(additem,removeitem,getcontents,howmany,isin)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bagmch_unbounded),additem)==(aa);
  List_Input(Machine(Bagmch_unbounded),removeitem)==(aa);
  List_Input(Machine(Bagmch_unbounded),getcontents)==(?);
  List_Input(Machine(Bagmch_unbounded),howmany)==(?);
  List_Input(Machine(Bagmch_unbounded),isin)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bagmch_unbounded),additem)==(?);
  List_Output(Machine(Bagmch_unbounded),removeitem)==(?);
  List_Output(Machine(Bagmch_unbounded),getcontents)==(items);
  List_Output(Machine(Bagmch_unbounded),howmany)==(nn);
  List_Output(Machine(Bagmch_unbounded),isin)==(check)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bagmch_unbounded),additem)==(additem(aa));
  List_Header(Machine(Bagmch_unbounded),removeitem)==(removeitem(aa));
  List_Header(Machine(Bagmch_unbounded),getcontents)==(items <-- getcontents);
  List_Header(Machine(Bagmch_unbounded),howmany)==(nn <-- howmany);
  List_Header(Machine(Bagmch_unbounded),isin)==(check <-- isin(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bagmch_unbounded),additem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_unbounded),removeitem)==(aa: ITEMS);
  List_Precondition(Machine(Bagmch_unbounded),getcontents)==(btrue);
  List_Precondition(Machine(Bagmch_unbounded),howmany)==(btrue);
  List_Precondition(Machine(Bagmch_unbounded),isin)==(aa: ITEMS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bagmch_unbounded),isin)==(aa: ITEMS | aa: content ==> check:=TRUE [] not(aa: content) ==> check:=FALSE);
  Expanded_List_Substitution(Machine(Bagmch_unbounded),howmany)==(btrue | nn:=card(content));
  Expanded_List_Substitution(Machine(Bagmch_unbounded),getcontents)==(btrue | items:=content);
  Expanded_List_Substitution(Machine(Bagmch_unbounded),removeitem)==(aa: ITEMS | content:=content-{aa});
  Expanded_List_Substitution(Machine(Bagmch_unbounded),additem)==(aa: ITEMS | content:=content\/{aa});
  List_Substitution(Machine(Bagmch_unbounded),additem)==(content:=content\/{aa});
  List_Substitution(Machine(Bagmch_unbounded),removeitem)==(content:=content-{aa});
  List_Substitution(Machine(Bagmch_unbounded),getcontents)==(items:=content);
  List_Substitution(Machine(Bagmch_unbounded),howmany)==(nn:=card(content));
  List_Substitution(Machine(Bagmch_unbounded),isin)==(IF aa: content THEN check:=TRUE ELSE check:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_unbounded))==(?);
  Inherited_List_Constants(Machine(Bagmch_unbounded))==(?);
  List_Constants(Machine(Bagmch_unbounded))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_unbounded),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_unbounded))==(?);
  Context_List_Defered(Machine(Bagmch_unbounded))==(?);
  Context_List_Sets(Machine(Bagmch_unbounded))==(?);
  List_Valuable_Sets(Machine(Bagmch_unbounded))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_unbounded))==(?);
  Inherited_List_Defered(Machine(Bagmch_unbounded))==(?);
  Inherited_List_Sets(Machine(Bagmch_unbounded))==(?);
  List_Enumerated(Machine(Bagmch_unbounded))==(?);
  List_Defered(Machine(Bagmch_unbounded))==(ITEMS);
  List_Sets(Machine(Bagmch_unbounded))==(ITEMS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bagmch_unbounded))==(?);
  Expanded_List_HiddenConstants(Machine(Bagmch_unbounded))==(?);
  List_HiddenConstants(Machine(Bagmch_unbounded))==(?);
  External_List_HiddenConstants(Machine(Bagmch_unbounded))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bagmch_unbounded))==(btrue);
  Context_List_Properties(Machine(Bagmch_unbounded))==(btrue);
  Inherited_List_Properties(Machine(Bagmch_unbounded))==(btrue);
  List_Properties(Machine(Bagmch_unbounded))==(ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bagmch_unbounded),additem)==(?);
  List_ANY_Var(Machine(Bagmch_unbounded),removeitem)==(?);
  List_ANY_Var(Machine(Bagmch_unbounded),getcontents)==(?);
  List_ANY_Var(Machine(Bagmch_unbounded),howmany)==(?);
  List_ANY_Var(Machine(Bagmch_unbounded),isin)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_unbounded)) == (ITEMS | ? | content | ? | additem,removeitem,getcontents,howmany,isin | ? | ? | ? | Bagmch_unbounded);
  List_Of_HiddenCst_Ids(Machine(Bagmch_unbounded)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_unbounded)) == (?);
  List_Of_VisibleVar_Ids(Machine(Bagmch_unbounded)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_unbounded)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_unbounded)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_unbounded)) == (Type(content) == Mvl(SetOf(atype(ITEMS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bagmch_unbounded)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type);Type(removeitem) == Cst(No_type,atype(ITEMS,?,?));Type(additem) == Cst(No_type,atype(ITEMS,?,?)));
  Observers(Machine(Bagmch_unbounded)) == (Type(isin) == Cst(btype(BOOL,?,?),atype(ITEMS,?,?));Type(howmany) == Cst(btype(INTEGER,?,?),No_type);Type(getcontents) == Cst(SetOf(atype(ITEMS,?,?)),No_type))
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
