@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ImplementedBy-piyush.agnihotri
@Release3
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral

Feature: Collateral investigation initiation screen validation for save search part 14

  #FeatureID-ACAUTOCAS-363
  Scenario Outline: ACAUTOCAS-4413: user saves search criteria <Cii_ciiGrid_rowNum> for CII with various search parameters
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
      | collateral_investigation_initiation.xlsx | cii_grid    | 791                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 792                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 793                | api     | 0              |
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

