@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-priyanshu.kashyap
@Release3
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral


Feature: Collateral investigation initiation screen validation for load search part 1

#FeatureID-ACAUTOCAS-363
  Scenario Outline: ACAUTOCAS-4389: user loads search criteria <Cii_ciiGrid_rowNum> for CII with various search parameters part 1
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_api>" and row <Cii_api_rowNum>
    And user stores some values collateral investigation initiation grid using api
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    When user enters parameter values present in collateral investigation initiation
    And user enter the Search Criteria Name to save search
    And user saves the search criteria
    And user clicks on load search
    Then user should be able filter out all applications on given fields parameter combination
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum | Cii_api | Cii_api_rowNum |
      | collateral_investigation_initiation.xlsx | cii_grid    | 0                  | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1                  | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 2                  | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 3                  | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 4                  | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 5                  | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 6                  | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 7                  | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 8                  | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 9                  | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 10                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 11                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 12                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 13                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 14                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 15                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 16                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 17                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 18                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 19                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 20                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 21                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 22                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 23                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 24                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 25                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 26                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 27                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 28                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 29                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 30                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 31                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 32                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 33                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 34                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 35                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 36                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 37                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 38                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 39                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 40                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 41                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 42                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 43                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 44                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 45                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 46                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 47                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 48                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 49                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 50                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 51                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 52                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 53                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 54                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 55                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 56                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 57                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 58                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 59                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 60                 | api     | 0              |
