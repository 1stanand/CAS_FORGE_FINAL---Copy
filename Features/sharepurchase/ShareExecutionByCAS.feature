@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Islamic
@ReleaseIslamicM3
@Release

@Shares
@Perishable

#${ProductType:["IPF"]}
#${ApplicationStage:["Reconsideration"]}
#${ApplicantType:["indiv"]}

Feature: Islamic Share Execution API via CAS

#  Pre-Requisites---
#  In this feature we will validate the share execution api
# PRODUCT_TYPE
#  IPF	    Personal Finance
#  IHF	    Home Finance
#  IAF	    Auto Finance

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0

#PQM-49_CAS-189529, 50_CAS-189529, 51_CAS-189529, 52_CAS-189529, 53_CAS-189529
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-14922:  Verify call back mechanism for order type Market share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
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
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 79                                  | <ApplicantType> | shares   | ispurchase promise |

#PQM-49_CAS-189529, 50_CAS-189529, 51_CAS-189529, 52_CAS-189529, 53_CAS-189529
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16101: Verify call back mechanism for order type Market share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 82 |
      | sharepurchase.xlsx | share_execution | 83 |
      | sharepurchase.xlsx | share_execution | 84 |
    And investor details should be added successfully
    And user click on save investor details
    And user click on move to next stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And user reads data from the excel file "shares.xlsx" under sheet "share_order" and row 0
    And user fills share order stage
    And user clicks on move to next stage
    And user opens an application of "<VarStage2>" stage present in context from application grid
    And user generates the transaction number
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user save the first record for share execution
      | sharepurchase.xlsx | share_execution | 82 |
    And user save the second record for share execution
      | sharepurchase.xlsx | share_execution | 83 |
    And user saves the third record for share execution
      | sharepurchase.xlsx | share_execution | 84 |
    And user hits the postman API for share execution at share purchase
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 82                                  | <ApplicantType> | shares   | ispurchase promise |

#PQM-49_CAS-189529, 50_CAS-189529, 51_CAS-189529, 52_CAS-189529, 53_CAS-189529
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16101: Verify call back mechanism for order type Market share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 85 |
      | sharepurchase.xlsx | share_execution | 86 |
      | sharepurchase.xlsx | share_execution | 87 |
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
      | sharepurchase.xlsx | share_execution | 85 |
    And user save the second record for share execution
      | sharepurchase.xlsx | share_execution | 86 |
    And user saves the third record for share execution
      | sharepurchase.xlsx | share_execution | 87 |
    And user hits the postman API for share execution at share purchase
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 85                                  | <ApplicantType> | shares   | ispurchase promise |

#PQM-49_CAS-189529, 50_CAS-189529, 51_CAS-189529, 52_CAS-189529, 53_CAS-189529
#FeatureID-ACAUTOCAS-16523
  Scenario Outline:ACAUTOCAS-16101: Verify call back mechanism for order type Market share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 88 |
      | sharepurchase.xlsx | share_execution | 89 |
      | sharepurchase.xlsx | share_execution | 90 |
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
      | sharepurchase.xlsx | share_execution | 88 |
    And user save the second record for share execution
      | sharepurchase.xlsx | share_execution | 89 |
    And user saves the third record for share execution
      | sharepurchase.xlsx | share_execution | 90 |
    And user hits the postman API for share execution at share purchase
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 88                                  | <ApplicantType> | shares   | ispurchase promise |

#PQM-49_CAS-189529, 50_CAS-189529, 51_CAS-189529, 52_CAS-189529, 53_CAS-189529
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16101: Verify call back mechanism for order type Market share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 91 |
      | sharepurchase.xlsx | share_execution | 92 |
      | sharepurchase.xlsx | share_execution | 93 |
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
      | sharepurchase.xlsx | share_execution | 91 |
    And user save the second record for share execution
      | sharepurchase.xlsx | share_execution | 92 |
    And user saves the third record for share execution
      | sharepurchase.xlsx | share_execution | 93 |
    And user hits the postman API for share execution at share purchase
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 91                                  | <ApplicantType> | shares   | ispurchase promise |

#PQM-49_CAS-189529, 50_CAS-189529, 51_CAS-189529, 52_CAS-189529, 53_CAS-189529
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16101: Verify call back mechanism for order type Market share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
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
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 94                                  | <ApplicantType> | shares   | ispurchase promise |

#PQM-49_CAS-189529, 50_CAS-189529, 51_CAS-189529, 52_CAS-189529, 53_CAS-189529
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16101: Verify call back mechanism for order type Market share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 97 |
      | sharepurchase.xlsx | share_execution | 98 |
      | sharepurchase.xlsx | share_execution | 99 |
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
      | sharepurchase.xlsx | share_execution | 97 |
    And user save the second record for share execution
      | sharepurchase.xlsx | share_execution | 98 |
    And user saves the third record for share execution
      | sharepurchase.xlsx | share_execution | 99 |
    And user hits the postman API for share execution at share purchase
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 97                                  | <ApplicantType> | shares   | ispurchase promise |

#PQM-49_CAS-189529, 50_CAS-189529, 51_CAS-189529, 52_CAS-189529, 53_CAS-189529
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16101: Verify call back mechanism for order type Market share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 100 |
      | sharepurchase.xlsx | share_execution | 101 |
      | sharepurchase.xlsx | share_execution | 102 |
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
      | sharepurchase.xlsx | share_execution | 100 |
    And user save the second record for share execution
      | sharepurchase.xlsx | share_execution | 101 |
    And user saves the third record for share execution
      | sharepurchase.xlsx | share_execution | 102 |
    And user hits the postman API for share execution at share purchase
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 100                                 | <ApplicantType> | shares   | ispurchase promise |

#PQM-54_CAS-189529, 55_CAS-189529, 56_CAS-189529
#Call-1,2,3,4 for requested share price
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16102: Verify call back mechanism for order type Requested share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 104 |
      | sharepurchase.xlsx | share_execution | 105 |
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
      | sharepurchase.xlsx | share_execution | 103 |
      | sharepurchase.xlsx | share_execution | 106 |
      | sharepurchase.xlsx | share_execution | 109 |
      | sharepurchase.xlsx | share_execution | 112 |
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 103                                 | <ApplicantType> | shares   | ispurchase promise |

#PQM-54_CAS-189529, 55_CAS-189529, 56_CAS-189529
#Call-1,2,3,4 for requested share price
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16102: Verify call back mechanism for order type Requested share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 115 |
      | sharepurchase.xlsx | share_execution | 116 |
      | sharepurchase.xlsx | share_execution | 117 |
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
      | sharepurchase.xlsx | share_execution | 115 |
      | sharepurchase.xlsx | share_execution | 118 |
      | sharepurchase.xlsx | share_execution | 121 |
      | sharepurchase.xlsx | share_execution | 124 |
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 115                                 | <ApplicantType> | shares   | ispurchase promise |

#PQM-54_CAS-189529, 55_CAS-189529, 56_CAS-189529
#Call-2 for requested share price first false, rest of each call true
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16102: Verify call back mechanism for order type Requested share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
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
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 139                                 | <ApplicantType> | shares   | ispurchase promise |

#PQM-54_CAS-189529, 55_CAS-189529, 56_CAS-189529
#Call-1,2,3,4,5 for requested share price last call true
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16102: Verify call back mechanism for order type Requested share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 151 |
      | sharepurchase.xlsx | share_execution | 152 |
      | sharepurchase.xlsx | share_execution | 153 |
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
      | sharepurchase.xlsx | share_execution | 151 |
      | sharepurchase.xlsx | share_execution | 154 |
      | sharepurchase.xlsx | share_execution | 157 |
      | sharepurchase.xlsx | share_execution | 160 |
      | sharepurchase.xlsx | share_execution | 163 |
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 151                                 | <ApplicantType> | shares   | ispurchase promise |

#PQM-54_CAS-189529, 55_CAS-189529, 56_CAS-189529
#Call-1,2,3 for requested share price last call true
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16102: Verify call back mechanism for order type Requested share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 166 |
      | sharepurchase.xlsx | share_execution | 167 |
      | sharepurchase.xlsx | share_execution | 168 |
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
      | sharepurchase.xlsx | share_execution | 166 |
      | sharepurchase.xlsx | share_execution | 169 |
      | sharepurchase.xlsx | share_execution | 172 |
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 166                                 | <ApplicantType> | shares   | ispurchase promise |

#PQM-54_CAS-189529, 55_CAS-189529, 56_CAS-189529
#Call-1,2,3,4,5 for requested share price all call false
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16102: Verify call back mechanism for order type Requested share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 175 |
      | sharepurchase.xlsx | share_execution | 176 |
      | sharepurchase.xlsx | share_execution | 177 |
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
      | sharepurchase.xlsx | share_execution | 175 |
      | sharepurchase.xlsx | share_execution | 178 |
      | sharepurchase.xlsx | share_execution | 181 |
      | sharepurchase.xlsx | share_execution | 184 |
      | sharepurchase.xlsx | share_execution | 187 |
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 175                                 | <ApplicantType> | shares   | ispurchase promise |

#PQM-54_CAS-189529, 55_CAS-189529, 56_CAS-189529
#Call-1,2,3,4,5 for requested share price from all of only one call of only one record true
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16102: Verify call back mechanism for order type Requested share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 190 |
      | sharepurchase.xlsx | share_execution | 191 |
      | sharepurchase.xlsx | share_execution | 192 |
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
      | sharepurchase.xlsx | share_execution | 190 |
      | sharepurchase.xlsx | share_execution | 193 |
      | sharepurchase.xlsx | share_execution | 196 |
      | sharepurchase.xlsx | share_execution | 199 |
      | sharepurchase.xlsx | share_execution | 202 |
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 190                                 | <ApplicantType> | shares   | ispurchase promise |


#PQM-49_CAS-189529, 50_CAS-189529, 51_CAS-189529, 52_CAS-189529, 53_CAS-189529
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16103: Move to next stage for Market Share Price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
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
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 129                                 | <ApplicantType> | shares   | ispurchase promise |


#PQM-49_CAS-189529, 50_CAS-189529, 51_CAS-189529, 52_CAS-189529, 53_CAS-189529
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16103: Move to next stage for Market Share Price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 130 |
      | sharepurchase.xlsx | share_execution | 131 |
      | sharepurchase.xlsx | share_execution | 132 |
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
      | sharepurchase.xlsx | share_execution | 130 |
    And user save the second record for share execution
      | sharepurchase.xlsx | share_execution | 131 |
    And user saves the third record for share execution
      | sharepurchase.xlsx | share_execution | 132 |
    And user hits the postman API for share execution at share purchase
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 132                                 | <ApplicantType> | shares   | ispurchase promise |

#PQM-49_CAS-189529, 50_CAS-189529, 51_CAS-189529, 52_CAS-189529, 53_CAS-189529
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16103: Move to next stage for Market Share Price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 133 |
      | sharepurchase.xlsx | share_execution | 134 |
      | sharepurchase.xlsx | share_execution | 135 |
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
      | sharepurchase.xlsx | share_execution | 133 |
    And user save the second record for share execution
      | sharepurchase.xlsx | share_execution | 134 |
    And user saves the third record for share execution
      | sharepurchase.xlsx | share_execution | 135 |
    And user hits the postman API for share execution at share purchase
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 135                                 | <ApplicantType> | shares   | ispurchase promise |


#PQM-49_CAS-189529, 50_CAS-189529, 51_CAS-189529, 52_CAS-189529, 53_CAS-189529
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16103: Move to next stage for Market Share Price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
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
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 138                                 | <ApplicantType> | shares   | ispurchase promise |


#ST-CAS-189529-52,53
#Call-1,2,3,4,5 for requested share price from all of only one call of only one record true
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16102: Verify call back mechanism for order type Requested share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 205 |
      | sharepurchase.xlsx | share_execution | 206 |
      | sharepurchase.xlsx | share_execution | 207 |
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
      | sharepurchase.xlsx | share_execution | 205 |
      | sharepurchase.xlsx | share_execution | 208 |
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 205                                 | <ApplicantType> | shares   | ispurchase promise |


#ST-CAS-189529-55
#Call-1 for requested share price from all of only one call of each record true
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-16102: Verify call back mechanism for order type Requested share price at <VarStage2> for a <ProductType> application with <SharePurchase_shareExecution_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 211 |
      | sharepurchase.xlsx | share_execution | 212 |
      | sharepurchase.xlsx | share_execution | 213 |
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
      | sharepurchase.xlsx | share_execution | 211 |
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 211                                 | <ApplicantType> | shares   | ispurchase promise |

#UT-CAS-189529-32
#Call-1 for all true and no need to make second call after 1st call
#FeatureID-ACAUTOCAS-16523
  Scenario Outline: ACAUTOCAS-14927:  Verify additional call is made in case of Requested share price at <VarStage2> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<SharePurchaseWB>" under sheet "<SharePurchase_shareExecution>" and row <SharePurchase_shareExecution_rowNum>
    And user open investor details tab
    When user fills all fields to add investor details for share execution
      | sharepurchase.xlsx | share_execution | 211 |
      | sharepurchase.xlsx | share_execution | 212 |
      | sharepurchase.xlsx | share_execution | 213 |
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
      | sharepurchase.xlsx | share_execution | 211 |
    Then Application successfully move to next stage
    Examples:
      | VarStage1   | VarStage2      | ProductType   | ApplicationStage   | SharePurchaseWB    | SharePurchase_shareExecution | SharePurchase_shareExecution_rowNum | ApplicantType   | Category | Key                |
      | Share Order | SHARE_PURCHASE | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_execution              | 211                                 | <ApplicantType> | shares   | ispurchase promise |
