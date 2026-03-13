@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ImplementedBy-aman.verma
@ReviewedSecCollateral

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
Feature: Internal Collateral Insurance Search and Link

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page

#Internal Collateral Search and link--------DONE---------12
  @Release3
  Scenario Outline:ACAUTOCAS-3133:  Provision to search Insurance as internal collateral and link of <applicantType> on <ProductType> on <ApplicationStage> at <Collateral_collateralSearch_rowNum>
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
      | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum |ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | collateral_search           | 2973                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2974                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2975                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2976                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2977                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2978                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2979                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2980                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2981                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2982                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2983                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2984                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2985                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2986                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2987                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2988                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2989                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2990                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2991                               |<ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2992                               |<ProductType> | <ApplicationStage> |     |          | indiv         |

  @NotImplemented
  #FeatureID-ACAUTOCAS-249
  Scenario Outline: ACAUTOCAS-11616:  Internal search and link Insurance as collateral to reconcile the copied data
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "DDE" stage from application grid
    And user identifies an internal "<CollateralSubType>" collateral
    When user links the "<CollateralSubType>" to the application using internal collateral search as a security collateral
    And the collateral gets linked to the application
    Then the copied data should should match with the original data available at "<CollateralSubType>"
    Examples:
      | CollateralSubType |
      | Insurance         |
