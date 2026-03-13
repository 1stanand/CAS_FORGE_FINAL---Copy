@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-aman.verma
@Release
@ReviewedSecCollateral

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
Feature: Internal Collateral Commercial Vehicle Search and Link

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page

#Internal Collateral Search and link
  Scenario Outline: ACAUTOCAS-3119:  Provision to search Commercial Vehicle as internal collateral and link of <applicantType> on <ProductType> on <ApplicationStage> at <Collateral_collateralSearch_rowNum>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_search>" and row <Collateral_search_rowNum>
    When user enter parameter in external search
    And clicks on search
    And user sees the list of collaterals available in CMS as per the parameters entered
    Then user should be able to link it to the application

    Examples:
      | CollateralWB    | Collateral_search | Collateral_search_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | collateral_search | 2712                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2713                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2714                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2715                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2716                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2717                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2718                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2719                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2720                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search | 2721                     | <ProductType> | <ApplicationStage> |     |          | indiv         |
