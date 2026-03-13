@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-tushar.chauhan
@ImplementedBy-piyush.agnihotri
@Release3
@ReviewedByDEV
@ReviewedSecCollateral
@Sanity
#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
# ${CollateralSubType:["Mortgage Guarantee"]}
Feature: Mortgage Guarantee Modification

#  Pre-Requisites---
#  In this feature we will modify and delete an Guarantee Mortgage Guarantee to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Perishable
     #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3715:  Deleting a Mortgage Guarantee attached to the application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 282
    And user opens Collateral Page
    When user deletes the saved collateral
    Then user should be able to successfully deletes the collateral based on sub type
    Examples:
      | ProductType   | ApplicationStage   | key | category | applicantType |
      | <ProductType> | <ApplicationStage> |     |          | indiv         |

     #FeatureID-ACAUTOCAS-8448
  Scenario Outline: ACAUTOCAS-3105:  Mortgage Guarantee Data Modification
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 8
    And user selects collateral type along with collateral sub type
    And user enters mandatory fields of collateral subtype mortgage guarantee
    And user checks the duplicates on collateral dedupe check
    And user saves the collateral data
    And user reads data from the excel file "collateral.xlsx" under sheet "default" and row 282
    And user opens Collateral Page
    When user click on modify collateral subtype
    Then user should be able to modify the data in field "<FieldName>"
    Examples:
      | FieldName                             | ProductType   | ApplicationStage   | key | category | applicantType |
      | Mortgage Collateral Ref No            | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Mortgage Description                  | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Mortgage Collateral Value             | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Mortgage Guarantee Company Code       | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Mortgage Guarantee Company Percentage | <ProductType> | <ApplicationStage> |     |          | indiv         |
      | Mortgage Guarantee Email ID           | <ProductType> | <ApplicationStage> |     |          | indiv         |

