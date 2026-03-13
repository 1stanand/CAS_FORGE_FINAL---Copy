@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-mohd.aman
@Release
@ReviewedByDEV
@Reconciled
@ReviewedSecCollateral

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
Feature: Internal Collateral Consumer Durable Search and Link

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page
#Internal Collateral Search and link
  Scenario Outline: ACAUTOCAS-3121:  Provision to search Consumer Durable as internal collateral and link of <applicantType> on <ProductType> on <ApplicationStage> at <Collateral_collateralSearch_rowNum>
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
      | collateral.xlsx | collateral_search           | 3022                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 3023                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 3024                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 3025                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 3026                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 3027                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 3028                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 3029                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 3030                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 3031                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 3032                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 3033                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 3034                               | <ProductType> | <ApplicationStage> |     |          | indiv         |

