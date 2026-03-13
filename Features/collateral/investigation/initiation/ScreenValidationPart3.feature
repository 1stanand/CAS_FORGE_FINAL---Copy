@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release2
@ReviewedByDEV
@ReviewedSecCollateral
@LoggedBug
Feature: Collateral investigation initiation screen validation for search application part 3

  #After discussion with Author, Last Updated Date field is now being validated in a separate scenario
  Scenario Outline: ACAUTOCAS-3149:  user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 3
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 118                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 119                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 120                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 121                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 122                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 123                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 124                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 125                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 126                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 127                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 128                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 129                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 130                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 131                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 132                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 133                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 134                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 135                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 136                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 137                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 138                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 139                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 140                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 141                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 142                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 143                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 144                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 145                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 146                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 147                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 148                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 149                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 150                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 151                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 152                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 153                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 154                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 155                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 156                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 157                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 158                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 159                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 160                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 161                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 162                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 163                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 164                | api     | 0              |
