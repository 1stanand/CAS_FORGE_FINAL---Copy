@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-priyanshu.kashyap
@Release3
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral

Feature: Collateral investigation initiation screen validation for save search part 17

#FeatureID-ACAUTOCAS-363
  Scenario Outline:  ACAUTOCAS-4416:user saves search criteria <Cii_ciiGrid_rowNum> for CII with various search parameters
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 976                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 977                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 978                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 979                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 980                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 981                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 982                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 983                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 984                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 985                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 986                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 987                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 988                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 989                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 990                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 991                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 992                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 993                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 994                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 995                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 996                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 997                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 998                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 999                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1000               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1001               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1002               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1003               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1004               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1005               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1006               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1007               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1008               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1009               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1010               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1011               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1012               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1013               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1014               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1015               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1016               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1017               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1018               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1019               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1020               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1021               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1022               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1023               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1024               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1025               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1026               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1027               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1028               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1029               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1030               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1031               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1032               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1033               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1034               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1035               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1036               | api     | 0              |
