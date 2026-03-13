@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-priyanshu.kashyap
@Release3
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral


Feature: Collateral investigation initiation screen validation for save search part 16

#FeatureID-ACAUTOCAS-363
  Scenario Outline: ACAUTOCAS-4415: user saves search criteria <Cii_ciiGrid_rowNum> for CII with various search parameters
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 912                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 914                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 915                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 916                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 917                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 918                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 919                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 920                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 921                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 922                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 923                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 924                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 925                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 926                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 927                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 928                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 929                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 930                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 931                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 932                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 933                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 934                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 935                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 936                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 937                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 938                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 939                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 940                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 941                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 942                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 943                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 944                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 945                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 946                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 947                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 948                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 949                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 950                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 951                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 952                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 953                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 954                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 955                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 956                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 957                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 958                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 959                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 960                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 961                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 962                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 963                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 964                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 965                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 966                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 967                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 968                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 969                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 970                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 971                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 972                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 973                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 974                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 975                | api     | 0              |
