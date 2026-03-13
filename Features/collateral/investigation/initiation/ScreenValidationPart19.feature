@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release2
@ReviewedByDEV
@Reconciled
@ReviewedSecCollateral
@LoggedBug
Feature: Collateral investigation initiation screen validation for search application part 19 and 20

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #After discussion with Author, Last Updated Date field is now being validated in a separate scenario
  Scenario Outline: ACAUTOCAS-4437: user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 19
    When user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_api>" and row <Cii_api_rowNum>
    And user stores some values collateral investigation initiation grid using api
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    And user enters all parameter values of Collateral Investigation grid
    Then user should be able to search applications on given parameter combination
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum | Cii_api | Cii_api_rowNum |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1094               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1095               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1096               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1097               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1098               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1099               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1100               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1101               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1102               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1103               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1104               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1105               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1106               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1107               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1108               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1109               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1110               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1111               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1112               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1113               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1114               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1115               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1116               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1117               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1118               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1119               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1120               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1121               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1122               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1123               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1124               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1125               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1126               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1127               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1128               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1129               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1130               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1131               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1132               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1133               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1134               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1135               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1136               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1137               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1138               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1139               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1140               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1141               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1142               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1143               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1144               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1145               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1146               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1147               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1148               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1149               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1150               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1151               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1152               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1153               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1154               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1155               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1156               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1157               | api     | 0              |

  #Last Updated Date field is validated in this scenario
  @Perishable
  #FeatureID-ACAUTOCAS-363
  Scenario Outline: user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 20
    When user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_api>" and row <Cii_api_rowNum>
    And user stores some values collateral investigation initiation grid using api
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    And user enters all parameter values of Collateral Investigation grid
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_collateralInvestigation>" and row <Cii_collateralInvestigation_rowNum>
    And user initiates verification of collateral
    And user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum2>
    And user enters all parameter values of Collateral Investigation grid
    Then user should be able to search applications on given parameter combination
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum | Cii_ciiGrid_rowNum2 | Cii_api | Cii_api_rowNum | Cii_collateralInvestigation | Cii_collateralInvestigation_rowNum | Var_Stage                                    |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1158               | 1159                | api     | 0              | collateral_investigation    | 0                                  | collateral investigation initiation_indiv_hl |


