@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-ankit.yadav
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@Release3

Feature: Collateral investigation initiation screen validation for load search part 15


  Scenario Outline: ACAUTOCAS-4395: user loads search criteria <Cii_ciiGrid_rowNum> for CII with various search parameters part 15
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_api>" and row <Cii_api_rowNum>
    And user stores some values collateral investigation initiation grid using api
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    And user enters parameter values present in collateral investigation initiation
    And user enter the Search Criteria Name to save search
    And user saves the search criteria
    And user clicks on load search
    Then user should be able filter out all applications on given fields parameter combination
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum | Cii_api | Cii_api_rowNum |
      | collateral_investigation_initiation.xlsx | cii_grid    | 850                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 851                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 852                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 853                | api     | 0              |
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 908                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 909                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 910                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 911                | api     | 0              |

