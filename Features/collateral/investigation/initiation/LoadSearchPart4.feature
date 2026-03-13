@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-priyanshu.kashyap
@Release3
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral

Feature: Collateral investigation initiation screen validation for load search part 4

#FeatureID-ACAUTOCAS-363
  Scenario Outline: ACAUTOCAS-4402: user loads search criteria <Cii_ciiGrid_rowNum> for CII with various search parameters part 4
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_api>" and row <Cii_api_rowNum>
    And user stores some values collateral investigation initiation grid using api
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    And user enters parameter values present in collateral investigation initiation
    And user enter the Search Criteria Name to save search
    And user saves the search criteria
    When user clicks on load search
    Then user should be able filter out all applications on given fields parameter combination
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum | Cii_api | Cii_api_rowNum |
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 221                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 222                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 223                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 224                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 225                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 226                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 227                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 228                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 229                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 230                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 231                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 232                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 233                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 234                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 235                | api     | 0              |
