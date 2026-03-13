@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ImplementedBy-richa.singh
@Release3
@ReviewedByDEV
@ReviewedSecCollateral
  @Sanity
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
  # ${CollateralSubType:["Mortgage Guarantee"]}
Feature: Mortgage Guarantee Viewer

#  Pre-Requisites---
#  In this feature we will attach an Guarantee Mortgage Guarantee to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
 #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3108:  "Mortgage Guarantee" data reconcile to validate if data was saved properly of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral details of mortgage guarantee
    And user saves the data
    When user views the saved collateral
    Then user able to sees the data as available in excel file "<CollateralWB>" under sheet "<Collateral_default>" and row <Collateral_default_rowNum>
    Examples:
      | CollateralWB    | Collateral_default | Collateral_default_rowNum | ProductType   | ApplicationStage   | key | category | applicantType |
      | collateral.xlsx | default            | 8                         | <ProductType> | <ApplicationStage> |     |          | indiv         |
 #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3109:  CollateralPage should not allow to modify data in viewer mode of "<ProductType>" application at "<ApplicationStage>" stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral details of mortgage guarantee
    And user saves the data
    When user views the saved collateral
    Then user should not be able to modifies the data of mortgage guarantee
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |

