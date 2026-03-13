@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-ankit.yadav
@Reconciled
@ReviewedByDEV
@Release3
@ReviewedSecCollateral

Feature: Collateral investigation initiation screen validation for save search part 6

  Scenario Outline: ACAUTOCAS-4423: user saves search criteria <Cii_ciiGrid_rowNum> for CII with various search parameters part 6
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 294                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 295                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 296                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 297                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 298                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 299                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 300                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 301                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 302                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 303                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 304                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 305                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 306                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 307                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 308                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 309                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 310                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 311                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 312                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 313                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 314                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 315                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 316                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 317                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 318                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 319                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 320                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 321                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 322                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 323                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 324                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 325                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 326                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 327                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 328                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 329                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 330                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 331                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 332                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 333                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 334                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 335                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 336                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 337                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 338                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 339                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 340                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 341                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 342                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 343                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 344                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 345                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 346                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 347                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 348                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 349                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 350                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 351                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 352                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 353                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 354                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 355                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 356                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 357                | api     | 0              |
