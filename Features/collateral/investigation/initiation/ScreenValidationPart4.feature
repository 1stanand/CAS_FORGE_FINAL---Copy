@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release2
@ReviewedByDEV
@ReviewedSecCollateral
@LoggedBug
Feature: Collateral investigation initiation screen validation for search application part 4

  #After discussion with Author, Last Updated Date field is now being validated in a separate scenario
  Scenario Outline: ACAUTOCAS-3150:  user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 4
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 165                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 166                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 167                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 168                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 169                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 170                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 171                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 172                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 173                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 174                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 175                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 176                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 177                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 178                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 179                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 180                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 181                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 182                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 183                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 184                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 185                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 186                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 187                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 188                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 189                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 190                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 191                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 192                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 193                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 194                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 195                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 196                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 197                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 198                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 199                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 200                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 201                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 202                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 203                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 204                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 205                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 206                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 207                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 208                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 209                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 210                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 211                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 212                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 213                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 214                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 215                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 216                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 217                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 218                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 219                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 220                | api     | 0              |
