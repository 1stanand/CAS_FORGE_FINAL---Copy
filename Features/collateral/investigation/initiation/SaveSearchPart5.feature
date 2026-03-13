@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-ankit.yadav
@Reconciled
@ReviewedByDEV
@Release3
@ReviewedSecCollateral


Feature: Collateral investigation initiation screen validation for save search part 5

  Scenario Outline: ACAUTOCAS-4422: user saves search criteria <Cii_ciiGrid_rowNum> for CII with various search parameters part 5
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_api>" and row <Cii_api_rowNum>
    And user stores some values collateral investigation initiation grid using api
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    And user enters parameter values present in collateral investigation initiation
    And user enter the Search Criteria Name to save search
    And user saves the search criteria
    Then user should be able to save search criteria for combination
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum | Cii_api | Cii_api_rowNum |
      | collateral_investigation_initiation.xlsx | cii_grid    | 236                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 237                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 238                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 239                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 240                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 241                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 242                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 243                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 244                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 245                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 246                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 247                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 248                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 249                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 250                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 251                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 252                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 253                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 254                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 255                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 256                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 257                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 258                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 259                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 260                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 261                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 262                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 263                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 264                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 265                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 266                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 267                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 268                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 269                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 270                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 271                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 272                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 273                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 274                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 275                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 276                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 277                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 278                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 279                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 280                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 281                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 282                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 283                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 284                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 285                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 286                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 287                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 288                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 289                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 290                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 291                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 292                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 293                | api     | 0              |
