@Epic-Secondary_Collateral
#Author: rsurya.kumar
#CreateDate: 11th Sep 2023
#ScriptedBy:
#ReviewedBy:
#Scenarios: = 186
@AuthoredBy-rsurya.kumar
@NotImplemented
@CollateralExternalSearch
@ReviewedByDEV
Feature: External Collateral Kisan Vikas Patra Search and Link

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page
#External Search CAS-127468 and link
  #FeatureID-ACAUTOCAS-4103
  Scenario Outline:ACAUTOCAS-4372: Provision to search Kisan Vikas Patra as collateral from third party and link
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
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 734                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 735                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 736                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 737                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 738                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 739                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 740                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 741                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 742                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 743                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 744                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 745                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 746                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 747                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 748                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 749                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 750                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 751                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 752                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 753                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 754                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 755                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 756                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 757                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 758                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 759                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 760                                |
