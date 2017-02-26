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
  List_Invariant(Machine(Bagmch_defferred))==(content <: ITEMS +-> NAT1 & card(content)<=max_items)
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
  List_Parameters(Machine(Bagmch_defferred))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bagmch_defferred))==(btrue);
  List_Constraints(Machine(Bagmch_defferred))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bagmch_defferred))==(?);
  List_Operations(Machine(Bagmch_defferred))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bagmch_defferred))==(max_items);
  Inherited_List_Constants(Machine(Bagmch_defferred))==(?);
  List_Constants(Machine(Bagmch_defferred))==(max_items)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bagmch_defferred),ITEMS)==(?);
  Context_List_Enumerated(Machine(Bagmch_defferred))==(?);
  Context_List_Defered(Machine(Bagmch_defferred))==(?);
  Context_List_Sets(Machine(Bagmch_defferred))==(?);
  List_Valuable_Sets(Machine(Bagmch_defferred))==(ITEMS);
  Inherited_List_Enumerated(Machine(Bagmch_defferred))==(?);
  Inherited_List_Defered(Machine(Bagmch_defferred))==(?);
  Inherited_List_Sets(Machine(Bagmch_defferred))==(?);
  List_Enumerated(Machine(Bagmch_defferred))==(?);
  List_Defered(Machine(Bagmch_defferred))==(ITEMS);
  List_Sets(Machine(Bagmch_defferred))==(ITEMS)
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
  List_Properties(Machine(Bagmch_defferred))==(max_items: NAT1 & ITEMS: FIN(INTEGER) & not(ITEMS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bagmch_defferred)) == (max_items,ITEMS | ? | content | ? | ? | ? | ? | ? | Bagmch_defferred);
  List_Of_HiddenCst_Ids(Machine(Bagmch_defferred)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bagmch_defferred)) == (max_items);
  List_Of_VisibleVar_Ids(Machine(Bagmch_defferred)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bagmch_defferred)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bagmch_defferred)) == (Type(ITEMS) == Cst(SetOf(atype(ITEMS,"[ITEMS","]ITEMS"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Bagmch_defferred)) == (Type(max_items) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bagmch_defferred)) == (Type(content) == Mvl(SetOf(SetOf(atype(ITEMS,?,?)*btype(INTEGER,?,?)))))
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
