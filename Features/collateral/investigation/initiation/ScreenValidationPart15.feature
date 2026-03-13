@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release2
@ReviewedByDEV
@ReviewedSecCollateral
@LoggedBug
Feature: Collateral investigation initiation screen validation for search application part 15

  #After discussion with Author, Last Updated Date field is now being validated in a separate scenario
  Scenario Outline: ACAUTOCAS-4433: user searches the application for CII with search parameters present in <Cii_ciiGrid_rowNum> part 15
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 854                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 855                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 856                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 857                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 858                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 859                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 860                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 861                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 862                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 863                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 864                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 865                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 866                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 867                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 868                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 869                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 870                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 871                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 872                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 873                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 874                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 875                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 876                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 877                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 878                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 879                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 880                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 881                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 882                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 883                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 884                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 885                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 886                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 887                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 888                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 889                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 890                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 891                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 892                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 893                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 894                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 895                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 896                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 897                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 898                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 899                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 900                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 901                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 902                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 903                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 904                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 905                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 906                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 907                | api     | 0              |
