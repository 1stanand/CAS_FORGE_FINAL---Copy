@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release2
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@LoggedBug
Feature: Collateral investigation initiation screen validation for search application part 18

  #After discussion with Author, Last Updated Date field is now being validated in a separate scenario
  Scenario Outline:ACAUTOCAS-4436:user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 18
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_api>" and row <Cii_api_rowNum>
    And user stores some values collateral investigation initiation grid using api
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    And user enters all parameter values of Collateral Investigation grid
    Then user should be able to search applications on given parameter combination
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum |Cii_api | Cii_api_rowNum |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1030               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1031               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1032               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1033               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1034               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1035               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1036               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1037               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1038               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1039               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1040               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1041               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1042               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1043               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1044               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1045               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1046               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1047               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1048               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1049               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1050               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1051               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1052               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1053               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1054               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1055               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1056               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1057               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1058               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1059               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1060               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1061               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1062               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1063               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1064               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1065               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1066               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1067               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1068               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1069               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1070               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1071               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1072               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1073               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1074               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1075               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1076               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1077               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1078               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1079               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1080               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1081               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1082               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1083               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1084               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1085               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1086               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1087               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1088               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1089               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1090               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1091               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1092               |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1093               |api     | 0              |
