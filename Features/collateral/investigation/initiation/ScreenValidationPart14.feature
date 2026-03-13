@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release2
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@LoggedBug
Feature: Collateral investigation initiation screen validation for search application part 14

  #After discussion with Author, Last Updated Date field is now being validated in a separate scenario
  Scenario Outline:ACAUTOCAS-4432:user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 14
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 794                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 795                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 796                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 797                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 798                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 799                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 800                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 801                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 802                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 803                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 804                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 805                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 806                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 807                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 808                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 809                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 810                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 811                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 812                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 813                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 814                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 815                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 816                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 817                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 818                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 819                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 820                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 821                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 822                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 823                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 824                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 825                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 826                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 827                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 828                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 829                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 830                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 831                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 832                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 833                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 834                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 835                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 836                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 837                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 838                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 839                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 840                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 841                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 842                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 843                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 844                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 845                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 846                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 847                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 848                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 849                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 850                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 851                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 852                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 853                | api     | 0              |
