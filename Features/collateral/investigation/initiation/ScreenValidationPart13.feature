@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release2
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@LoggedBug
Feature: Collateral investigation initiation screen validation for search application part 13

  #After discussion with Author, Last Updated Date field is now being validated in a separate scenario
  Scenario Outline:ACAUTOCAS-4431:user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 13
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 733                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 734                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 735                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 736                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 737                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 738                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 739                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 740                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 741                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 742                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 743                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 744                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 745                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 746                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 747                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 748                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 749                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 750                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 751                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 752                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 753                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 754                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 755                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 756                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 757                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 758                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 759                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 760                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 761                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 762                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 763                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 764                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 765                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 766                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 767                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 768                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 769                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 770                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 771                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 772                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 773                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 774                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 775                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 776                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 777                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 778                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 779                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 780                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 781                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 782                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 783                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 784                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 785                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 786                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 787                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 788                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 789                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 790                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 791                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 792                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 793                | api     | 0              |
