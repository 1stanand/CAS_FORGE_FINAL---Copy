@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-atul.mishra
@ReviewedByDEV
@ReviewedSecCollateral
Feature: External Collateral Deposit Search and Link

  @ImplementedBy-aniket.tripathi
  @Release
  Scenario Outline: ACAUTOCAS-4368: Provision to search Deposit as collateral from third party and link
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
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 530                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 531                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 532                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 533                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 534                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 535                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 536                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 537                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 538                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 539                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 540                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 541                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 542                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 543                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 544                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 545                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 546                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 547                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 548                                |
      | LoginDetailsCAS.xlsx | LoginData | 0         | collateral.xlsx | collateral_search           | 549                                |

#External Search CAS-127468 and link
  #FeatureID-ACAUTOCAS-4103,CAS-127468
  @NotImplemented
  Scenario Outline: ACAUTOCAS-11589: Search and link Deposit as collateral from third party to reconcile the copied data
    And user opens an application at "DDE" stage from application grid
    And user identifies an external "<CollateralSubType>" collateral
    When user links the "<CollateralSubType>" to the application using external collateral search as a security collateral
    And the collateral gets linked to the application
    Then the copied data should should match with the original data available at "<CollateralSubType>"
    Examples:
      | CollateralSubType           |
      | Fixed Deposit               |
      | Kisan Vikas Patra           |
      | National Saving Certificate |
