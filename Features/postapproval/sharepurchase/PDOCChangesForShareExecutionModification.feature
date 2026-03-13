@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Release
@Islamic
@Shares
@Perishable

#${ProductType:["IPF"]}
# First we have to configure share purchase execution api
Feature: Post Approval Changes for Share Execution Modification

#  Pre-Requisites---
#  In this feature we will validate the screen layout when an post approval stage is attached to the finance application.
# PRODUCT_TYPE
#  IPF	    Personal Finance
#  IHF	    Home Finance
#  IAF	    Auto Finance

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#ST-9_CAS-189513
#UT-7_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14624:  Perform a share purchase of amount half the loan requested amount at "<ApplicationStage>" for a "<ProductType>" application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 94 |
      | sharepurchase.xlsx | share_execution | 95 |
      | sharepurchase.xlsx | share_execution | 96 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user save the first record for share execution
      | sharepurchase.xlsx | share_execution | 94 |
    And user save the second record for share execution
      | sharepurchase.xlsx | share_execution | 95 |
    And user saves the third record for share execution
      | sharepurchase.xlsx | share_execution | 96 |
    And user hits the postman API for share execution at share purchase
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | FinalStage       | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 94                                  | Purchase Promise | indiv         | shares   | ispurchase promise |

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#ST-56_CAS-189513
#UT-52_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14625:  Validate market share price at move to next stage at "<ApplicationStage>" for a "<ProductType>" application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 79 |
      | sharepurchase.xlsx | share_execution | 80 |
      | sharepurchase.xlsx | share_execution | 81 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user save the first record for share execution
      | sharepurchase.xlsx | share_execution | 79 |
    And user save the second record for share execution
      | sharepurchase.xlsx | share_execution | 80 |
    And user saves the third record for share execution
      | sharepurchase.xlsx | share_execution | 81 |
    And user hits the postman API for share execution at share purchase
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | FinalStage       | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 79                                  | Purchase Promise | indiv         | shares   | ispurchase promise |

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#ST-10_CAS-189513
#UT-8_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14626:  Validate requested share price at move to next stage at "<ApplicationStage>" for a "<ProductType>" application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 139 |
      | sharepurchase.xlsx | share_execution | 140 |
      | sharepurchase.xlsx | share_execution | 141 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 139 |
      | sharepurchase.xlsx | share_execution | 142 |
      | sharepurchase.xlsx | share_execution | 145 |
      | sharepurchase.xlsx | share_execution | 148 |
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | FinalStage       | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 139                                 | Purchase Promise | indiv         | shares   | ispurchase promise |

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#UT-51_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14627:  Validate share purchase of zero loan amount at "<ApplicationStage>" for a "<ProductType>" application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 136 |
      | sharepurchase.xlsx | share_execution | 137 |
      | sharepurchase.xlsx | share_execution | 138 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user save the first record for share execution
      | sharepurchase.xlsx | share_execution | 136 |
    And user save the second record for share execution
      | sharepurchase.xlsx | share_execution | 137 |
    And user saves the third record for share execution
      | sharepurchase.xlsx | share_execution | 138 |
    And user hits the postman API for share execution at share purchase
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | FinalStage       | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 138                                 | Purchase Promise | indiv         | shares   | ispurchase promise |

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#ST-55_CAS-189513
#UT-29_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14628:  Validate share purchase of full loan amount at "<ApplicationStage>" for a "<ProductType>" application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 127 |
      | sharepurchase.xlsx | share_execution | 128 |
      | sharepurchase.xlsx | share_execution | 129 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user save the first record for share execution
      | sharepurchase.xlsx | share_execution | 127 |
    And user save the second record for share execution
      | sharepurchase.xlsx | share_execution | 128 |
    And user saves the third record for share execution
      | sharepurchase.xlsx | share_execution | 129 |
    And user hits the postman API for share execution at share purchase
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | FinalStage       | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 129                                 | Purchase Promise | indiv         | shares   | ispurchase promise |

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#ST-8_CAS-189513
#UT-6_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14629:  Validate Share purchase execution api for requested share price call at "<ApplicationStage>" for a "<ProductType>" application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 139 |
      | sharepurchase.xlsx | share_execution | 140 |
      | sharepurchase.xlsx | share_execution | 141 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user hits the postman API with all save records of investor for share execution
      | sharepurchase.xlsx | share_execution | 139 |
      | sharepurchase.xlsx | share_execution | 142 |
      | sharepurchase.xlsx | share_execution | 145 |
      | sharepurchase.xlsx | share_execution | 148 |
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | FinalStage       | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 139                                 | Purchase Promise | indiv         | shares   | ispurchase promise |

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#ST-54_CAS-189513
#UT-29_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14630:  Validate Share purchase execution api for market share price call at "<ApplicationStage>" for a "<ProductType>" application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 79 |
      | sharepurchase.xlsx | share_execution | 80 |
      | sharepurchase.xlsx | share_execution | 81 |
    And investor details should be added successfully
    And user click on save investor details
    And user clicks on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user save the first record for share execution
      | sharepurchase.xlsx | share_execution | 79 |
    And user save the second record for share execution
      | sharepurchase.xlsx | share_execution | 80 |
    And user saves the third record for share execution
      | sharepurchase.xlsx | share_execution | 81 |
    And user hits the postman API for share execution at share purchase
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | FinalStage       | ApplicantType | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 79                                  | Purchase Promise | indiv         | shares   | ispurchase promise |
