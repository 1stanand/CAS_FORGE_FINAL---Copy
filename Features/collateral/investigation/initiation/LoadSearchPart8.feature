@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-ankit.yadav
@Reconciled
@Release3
@ReviewedByDEV
@ReviewedSecCollateral

Feature: Collateral investigation initiation screen validation for load search part 8

  Scenario Outline: ACAUTOCAS-4406: user loads search criteria <Cii_ciiGrid_rowNum> for CII with various search parameters part 8
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 422                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 423                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 424                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 425                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 426                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 427                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 428                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 429                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 430                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 431                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 432                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 433                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 434                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 435                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 436                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 437                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 438                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 439                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 440                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 441                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 442                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 443                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 444                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 445                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 446                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 447                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 448                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 449                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 450                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 451                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 452                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 453                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 454                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 455                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 456                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 457                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 458                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 459                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 460                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 461                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 462                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 463                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 464                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 465                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 466                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 467                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 468                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 469                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 470                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 471                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 472                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 473                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 474                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 475                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 476                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 477                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 478                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 479                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 480                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 481                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 482                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 483                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 484                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 485                | api     | 0              |
