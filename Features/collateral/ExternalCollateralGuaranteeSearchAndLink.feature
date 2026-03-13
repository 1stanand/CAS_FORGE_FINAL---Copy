@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@NotImplemented
@ReviewedBy-None
@ReviewedByDEV

Feature: External Collateral Search and Link

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page

#  Background:
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#External Collateral Search and link
  Scenario Outline: ACAUTOCAS-3073: Provision to search Guarantee external collateral and link
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
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 616                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 617                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 618                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 619                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 620                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 621                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 622                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 623                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 624                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 625                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 626                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 627                                |

#External Search CAS-127468 and link
  #FeatureID-ACAUTOCAS-4103,CAS-127468
  @NotImplemented
  Scenario Outline: ACAUTOCAS-11590:  Search and link Guarantee as collateral from third party to reconcile the copied data
    And user opens an application at "DDE" stage from application grid
    And user identifies an external "<CollateralSubType>" collateral
    When user links the "<CollateralSubType>" to the application using external collateral search as a security collateral
    And the collateral gets linked to the application
    Then the copied data should should match with the original data available at "<CollateralSubType>"
    Examples:
      | CollateralSubType   |
      | Corporate Guarantee |
      | Mortgage Guarantee  |
