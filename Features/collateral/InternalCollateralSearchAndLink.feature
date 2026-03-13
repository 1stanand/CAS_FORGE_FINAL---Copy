@Epic-Secondary_Collateral
#Author: rsurya.kumar
#CreateDate: 04th Sep 2023
#ScriptedBy:
#ReviewedBy:
#Scenarios: = 758
@AuthoredBy-rsurya.kumar
@ReviewedSecCollateral
@Release3
@ReleaseSecCollateralM5
@Conventional 

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE", "Credit Approval", "Recommendation", "Reconsideration", "Disbursal"]}
Feature: Internal Collateral Search and Link feature

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page
  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#Internal Collateral Search and link
  @ImplementedBy-aditya.tomar
  Scenario Outline: ACAUTOCAS-3142: Provision to search internal collateral and link of <applicantType> on <ProductType> on <ApplicationStage> at <Collateral_collateralSearch_rowNum>
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
      | collateral.xlsx | collateral_search           | 2530                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2531                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2532                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2533                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2534                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2535                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2536                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2537                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2538                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2539                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2540                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2541                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2542                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2543                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2544                               | <ProductType> | <ApplicationStage> |     |          | indiv         |


  @ImplementedBy-rishabh.sachan
  #StoryID-CAS-127468
  #FeatureID-ACAUTOCAS-4114,ACAUTOCAS-249,CAS-127468,ACAUTOCAS-6852
  Scenario Outline: ACAUTOCAS-8927:  User attaches a collateral already attached to same <ProductType> application at <ApplicationStage> Stage
    And user opens an "<ProductType>" application for "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Collateral Page for adding new collateral for "<ApplicationStage>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_national_saving_certificate>" and row <Collateral_national_saving_certificate_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills mandatory fields of national saving certificate
    And user checks the duplicates on collateral dedupe check
    And user clicks on save collateral
    When user searches for an existing internal collateral using Global Collateral Number
    And user links the collateral with the application
    Then user gets a notification message
    Examples:
      | CollateralWB    | Collateral_national_saving_certificate | Collateral_national_saving_certificate_rowNum | ProductType   | ApplicationStage   | ApplicantType | Category | Key |
      | collateral.xlsx | national_saving_certificate            | 188                                           | <ProductType> | <ApplicationStage> | indiv         |          |     |