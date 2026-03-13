@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release2
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@LoggedBug
Feature: Collateral investigation initiation screen validation for search application part 9

  #After discussion with Author, Last Updated Date field is now being validated in a separate scenario
  Scenario Outline:ACAUTOCAS-4439:user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 9
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 490                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 491                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 492                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 493                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 494                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 495                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 496                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 497                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 498                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 499                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 500                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 501                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 502                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 503                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 504                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 505                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 506                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 507                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 508                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 509                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 510                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 511                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 512                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 513                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 514                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 515                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 516                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 517                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 518                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 519                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 520                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 521                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 522                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 523                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 524                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 525                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 526                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 527                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 528                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 529                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 530                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 531                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 532                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 533                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 534                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 535                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 536                | api     | 0              |
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
