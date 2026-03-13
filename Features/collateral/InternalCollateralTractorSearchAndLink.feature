@Epic-Secondary_Collateral
#Author: rsurya.kumar
#CreateDate: 04th Sep 2023
#ScriptedBy:
#ReviewedBy:
#Scenarios: = 758
@AuthoredBy-rsurya.kumar
@ImplementedBy-priyanshu.kashyap
@Release3
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
Feature: Internal Collateral Tractor Search and Link

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page

#Internal Collateral Search and link

  Scenario Outline: ACAUTOCAS-3144: Provision to search Tractor as internal collateral and link of <applicantType> on <ProductType> on <ApplicationStage> at <Collateral_collateralSearch_rowNum>
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
      | collateral.xlsx | collateral_search           | 2083                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2084                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2085                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2086                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2087                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2088                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2089                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2090                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2091                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | collateral.xlsx | collateral_search           | 2092                               | <ProductType> | <ApplicationStage> |     |          | indiv         |
