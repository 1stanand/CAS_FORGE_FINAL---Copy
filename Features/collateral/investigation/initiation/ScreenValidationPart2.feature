@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@ReviewedByDEV
@Reconciled
@Release2
@ReviewedSecCollateral
@LoggedBug
Feature: Collateral investigation initiation screen validation for search application part 2

  #After discussion with Author, Last Updated Date field is now being validated in a separate scenario
  Scenario Outline: ACAUTOCAS-3148:  user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 2
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_api>" and row <Cii_api_rowNum>
    And user stores some values collateral investigation initiation grid using api
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    And user enters all parameter values of Collateral Investigation grid
    Then user should be able to search applications on given parameter combination
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum | Cii_api | Cii_api_rowNum |
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 61                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 62                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 63                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 64                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 65                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 66                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 67                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 68                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 69                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 70                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 71                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 72                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 73                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 74                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 75                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 76                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 77                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 78                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 79                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 80                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 81                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 82                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 83                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 84                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 85                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 86                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 87                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 88                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 89                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 90                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 91                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 92                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 93                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 94                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 95                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 96                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 97                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 98                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 99                 | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 100                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 101                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 102                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 103                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 104                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 105                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 106                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 107                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 108                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 109                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 110                | api     | 0              |