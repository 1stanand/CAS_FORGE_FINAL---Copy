@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-aniket.tripathi
@Release3
@ReviewedByDEV
@ReviewedSecCollateral

Feature: Collateral investigation initiation screen validation for load search part 10

  Scenario Outline: ACAUTOCAS-4390: user loads search criteria <Cii_ciiGrid_rowNum> for CII with various search parameters part 10
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 537                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 538                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 539                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 540                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 541                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 542                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 543                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 544                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 545                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 546                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 547                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 548                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 549                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 550                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 551                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 552                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 553                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 554                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 555                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 556                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 557                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 558                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 559                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 560                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 561                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 562                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 563                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 564                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 565                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 566                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 567                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 568                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 569                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 570                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 571                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 572                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 573                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 574                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 575                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 576                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 577                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 578                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 579                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 580                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 581                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 582                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 583                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 584                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 585                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 586                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 587                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 588                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 589                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 590                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 591                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 592                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 593                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 594                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 595                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 596                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 597                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 598                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 599                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 600                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 601                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 602                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 603                | api     | 0              |
