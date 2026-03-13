@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
Feature: Internal Collateral Guarantee Search and Link

  @Release
  Scenario Outline: ACAUTOCAS-3131: Provision to search Guarantee internal collateral and link of <applicantType> on <ProductType> on <ApplicationStage> at <Collateral_collateralSearch_rowNum>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_collateralSearch>" and row <Collateral_collateralSearch_rowNum>
    When user enters parameters to search collateral
    And clicks on search
    And user sees the list of collaterals available in CMS as per the parameters entered
    Then user should be able to link it to the application
    Examples:
      | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | collateral_search           | 2410                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2411                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2412                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2413                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2414                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2415                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2416                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2417                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2418                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2419                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2420                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2421                               | <ProductType> | <ApplicationStage> |     |          | indiv         |

  @NotImplemented
#FeatureID-ACAUTOCAS-249
  Scenario Outline: ACAUTOCAS-11615:  Internal search and link Guarantee as collateral to reconcile the copied data
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "DDE" stage from application grid
    And user identifies an internal "<CollateralSubType>" collateral
    When user links the "<CollateralSubType>" to the application using internal collateral search as a security collateral
    And the collateral gets linked to the application
    Then the copied data should should match with the original data available at "<CollateralSubType>"
    Examples:
      | CollateralSubType   |
      | Corporate Guarantee |
      | Mortgage Guarantee  |