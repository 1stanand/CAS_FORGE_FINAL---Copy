@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release2
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@LoggedBug
Feature: Collateral investigation initiation screen validation for search application part 10

  #After discussion with Author, Last Updated Date field is now being validated in a separate scenario
  Scenario Outline:ACAUTOCAS-4428 :user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 10
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_api>" and row <Cii_api_rowNum>
    And user stores some values collateral investigation initiation grid using api
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    And user enters all parameter values of Collateral Investigation grid
    Then user should be able to search applications on given parameter combination
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum |Cii_api | Cii_api_rowNum |
      | collateral_investigation_initiation.xlsx | cii_grid    | 551                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 552                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 553                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 554                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 555                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 556                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 557                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 558                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 559                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 560                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 561                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 562                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 563                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 564                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 565                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 566                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 567                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 568                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 569                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 570                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 571                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 572                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 573                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 574                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 575                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 576                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 577                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 578                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 579                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 580                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 581                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 582                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 583                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 584                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 585                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 586                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 587                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 588                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 589                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 590                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 591                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 592                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 593                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 594                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 595                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 596                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 597                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 598                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 599                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 600                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 601                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 602                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 603                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 604                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 605                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 606                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 607                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 608                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 609                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 610                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 611                |api     | 0              |
