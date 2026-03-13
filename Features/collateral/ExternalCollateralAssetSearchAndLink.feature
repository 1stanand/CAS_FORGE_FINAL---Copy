@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-atul.mishra
@ReviewedByDEV
@ImplementedBy-aryan.jain
@ReviewedSecCollateral
@NotImplemented
Feature: External Collateral Asset Search and Link

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page

#External Search CAS-127468 and link
  #FeatureID-ACAUTOCAS-4103
  Scenario Outline: ACAUTOCAS-4362: Provision to search Asset as collateral from third party and link
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "DDE" stage from application grid
    And user opens Collateral Page
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_collateralSearch>" and row <Collateral_collateralSearch_rowNum>
    And user searches for an existing collateral
    When user enters parameters to search collateral
    And clicks on Search External
    And user sees the list of collaterals available in "<ExternalSystem>" as per the parameters entered
    Then user should be able to link it to the application
    Examples:
      | SourceDataFile       | SheetName | RowNumber | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 2783                               |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 107                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 108                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 109                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 110                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 111                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 112                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 113                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 114                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 115                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 116                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 117                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 118                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 119                                |


#External Search CAS-127468 and link
  #FeatureID-ACAUTOCAS-4103,CAS-127468
  Scenario Outline: ACAUTOCAS-11586:  Search and link Asset as collateral from third party to reconcile the copied data
    And user opens an application at "DDE" stage from application grid
    And user identifies an external "<CollateralSubType>" collateral
    When user links the "<CollateralSubType>" to the application using external collateral search as a security collateral
    And the collateral gets linked to the application
    Then the copied data should should match with the original data available at "<CollateralSubType>"
    Examples:
      | CollateralSubType    |
      | Commercial Equipment |
      | Commercial Vehicle   |
      | Consumer Durable     |
      | Consumer Vehicle     |
      | Tractor              |

#External Search CAS-127468 and link
  #FeatureID-ACAUTOCAS-4103,CAS-127468
  Scenario Outline: ACAUTOCAS-11587:  Search and link Asset as collateral from third party to reconcile the copied CERSAI data
    And user opens an application at "DDE" stage from application grid
    And user identifies an external "<CollateralSubType>" collateral having updated CERSAI data
    When user links the "<CollateralSubType>" to the application using external collateral search as a security collateral
    And the collateral gets linked to the application
    Then the CERSAI data should also gets copied to the application
    Examples:
      | CollateralSubType    |
      | Commercial Equipment |
      | Commercial Vehicle   |
      | Consumer Durable     |
      | Consumer Vehicle     |
      | Tractor              |

#External Search CAS-127468 and link
  #FeatureID-ACAUTOCAS-4103,CAS-127468
  Scenario Outline: ACAUTOCAS-11588:  Search and link Asset as collateral from third party to reconcile the copied CERSAI security interest data
    And user opens an application at "DDE" stage from application grid
    And user identifies an external "<CollateralSubType>" collateral having updated CERSAI security interest data
    When user links the "<CollateralSubType>" to the application using external collateral search as a security collateral
    And the collateral gets linked to the application
    Then the CERSAI security interest data should also gets copied to the application
    Examples:
      | CollateralSubType    |
      | Commercial Equipment |
      | Commercial Vehicle   |
      | Consumer Durable     |
      | Consumer Vehicle     |
      | Tractor              |
