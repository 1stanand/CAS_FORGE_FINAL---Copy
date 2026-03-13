@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral
@NotImplemented
Feature: External Collateral Asset Search

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page

#External Search CAS-127468
  Scenario Outline: ACAUTOCAS-1299:  Provision to search Asset as collateral from third party
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user opens an application at "DDE" stage from application grid
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_collateralSearch>" and row <Collateral_collateralSearch_rowNum>
    And user searches for an existing collateral
    And user enters parameters to search collateral
    And clicks on Search External
    Then user should be able to see the list of collaterals available in "<ExternalSystem>" as per the parameters entered
    Examples:
      | SourceDataFile       | SheetName | RowNumber | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | ExternalSystem |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 93                                 |                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 94                                 |                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 95                                 |                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 96                                 |                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 97                                 |                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 98                                 |                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 99                                 |                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 100                                |                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 101                                |                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 102                                |                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 103                                |                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 104                                |                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 105                                |                |
