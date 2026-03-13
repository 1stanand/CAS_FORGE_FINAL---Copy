@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedSecCollateral
@NotImplemented
Feature: External Collateral Corporate Guarantee Search and Link

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page
#External Collateral Search and link
  Scenario Outline:ACAUTOCAS-3071: Provision to search Corporate Guarantee as external collateral and link
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "DDE" stage from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_collateralSearch>" and row <Collateral_collateralSearch_rowNum>
    When user enters parameters to search collateral
    And clicks on Search External
    And user sees the list of collaterals available in ExternalSystem as per the parameters entered
    Then user should be able to link it to the application
    Examples:
      | SourceDataFile       | SheetName | RowNumber | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 496                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 497                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 498                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 499                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 500                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 501                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 502                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 503                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 504                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 505                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 506                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 507                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 508                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 509                                |
