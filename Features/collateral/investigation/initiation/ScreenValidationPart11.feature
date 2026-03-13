@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release2
@ReviewedByDEV
@ReviewedSecCollateral
@LoggedBug
Feature: Collateral investigation initiation screen validation for search application part 11

  #After discussion with Author, Last Updated Date field is now being validated in a separate scenario
  Scenario Outline: ACAUTOCAS-4429: user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 11
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 612                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 613                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 614                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 615                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 616                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 617                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 618                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 619                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 620                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 621                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 622                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 623                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 624                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 625                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 626                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 627                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 628                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 629                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 630                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 631                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 632                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 633                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 634                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 635                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 636                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 637                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 638                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 639                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 640                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 641                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 642                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 643                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 644                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 645                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 646                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 647                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 648                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 649                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 650                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 651                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 652                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 653                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 654                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 655                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 656                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 657                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 658                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 659                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 660                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 661                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 662                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 663                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 664                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 665                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 666                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 667                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 668                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 669                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 670                |api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 671                |api     | 0              |
