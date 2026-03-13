@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-atul.mishra
@Release
@ReviewedSecCollateral

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE", "Credit", "Approval", "Recommendation", "Reconsideration", "Disbursal Initiation"]}
Feature: Internal Collateral Asset Search
#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page

#  Background:
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#Internal Collateral Search
  Scenario Outline: ACAUTOCAS-3114: Provision to search internal collateral <with> asset search of <applicantType> on <ProductType> on <ApplicationStage> at <Collateral_collateralSearch_rowNum>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_collateralSearch>" and row <Collateral_collateralSearch_rowNum>
    When user enters parameters to search collateral
    And clicks on search
    Then user should be able to see the list of collaterals available in CMS as per the parameters entered
    Examples:
      | CollateralWB    | Collateral_collateralSearch | Collateral_collateralSearch_rowNum | ProductType   | ApplicationStage   | key | category | applicantType | with                                                                        |
      | collateral.xlsx | collateral_search           | 1462                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Ref No, Owner                    |
      | collateral.xlsx | collateral_search           | 1463                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral Type, Collateral Status,  Owner                                  |
      | collateral.xlsx | collateral_search           | 1464                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Ref No, Collateral Status, Owner |
      | collateral.xlsx | collateral_search           | 1465                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral Type, Collateral Ref No, Collateral Status, Owner                |
      | collateral.xlsx | collateral_search           | 1466                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Ref No, Collateral Status        |
      | collateral.xlsx | collateral_search           | 1467                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Status, Owner                    |
      | collateral.xlsx | collateral_search           | 1468                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Status, Owner                    |
      | collateral.xlsx | collateral_search           | 1469                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Ref No                           |
      | collateral.xlsx | collateral_search           | 1470                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral Type                                                             |
      | collateral.xlsx | collateral_search           | 1471                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type                                              |
      | collateral.xlsx | collateral_search           | 1472                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral ID, Collateral Type, Collateral Status                           |
      | collateral.xlsx | collateral_search           | 1473                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral Type, Collateral Ref No                                          |
      | collateral.xlsx | collateral_search           | 1474                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral Type                                                             |
      | collateral.xlsx | collateral_search           | 1475                               | <ProductType> | <ApplicationStage> |     |          | indiv         | Collateral Type, Collateral Status, Owner                                   |
