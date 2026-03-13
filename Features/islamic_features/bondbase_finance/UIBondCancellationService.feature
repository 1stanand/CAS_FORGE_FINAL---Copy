@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Release
@Islamic
@Bonds
@Part-2

Feature: UI Bond Cancellation Service for Expired Bonds

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-15_CAS-186980,PQM-59_CAS-186980
Scenario Outline: ACAUTOCAS-18026: Validation should come that filling bond allocation data is mandatory of <ProductType> product type  <ApplicationStage> for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user clicks on move to next stage
    Then Validation should come that filling bond allocation data is mandatory
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18027: Validation should come that perform bond cancellation of <ProductType> product type  <ApplicationStage> for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then Validation should come that perform bond cancellation
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18028: Validation should come Bonds have expired of <ProductType> product type  <ApplicationStage> for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then Validation should come that Bonds have expired
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-19_CAS-186980
Scenario Outline: ACAUTOCAS-18029: Application should move to next stage of <ProductType> product type  <ApplicationStage> for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions
    And user clicks on save on security conditions
    And user complete document printing tab
    When user clicks on move to next stage
    Then user opens an application of "Disbursal" stage present in context from application grid
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-20_CAS-186980
Scenario Outline: ACAUTOCAS-18030: Application should not move to next stage When bonds expired validation should come of <ProductType> product type  <ApplicationStage> for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    Then Proper Validation should come for bond expired
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-21_CAS-186980
Scenario Outline: ACAUTOCAS-18031: Page should reload and Bond Allocation Data should get empty of <ProductType> product type  <ApplicationStage> for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on cancel bonds button
    Then Page should reload with Bond Allocation "<FieldName>" should get empty
    Examples:
      | FieldName               | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
      | Deal Reference Number   | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Number Start       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Number End         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Price              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Bond Number             | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Issue Date         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Purchase Invoice Number | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Purchase Receipt Number | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Bond Expiry Date        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Amount                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Quantity                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18032: Validate editable <fieldName> validation at <ApplicationStage> of <ProductType> for bond cancellation
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    Then user should be able to verify "<fieldName>" as "<EditableNonEditable>" for bond purchase
    Examples:
      | fieldName               | EditableNonEditable | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
      | Deal Reference Number   | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Number Start       | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Number End         | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Price              | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Bond Number             | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Issue Date         | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Purchase Invoice Number | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Purchase Receipt Number | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Bond Expiry Date        | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Amount                  | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Quantity                | NO                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18033: Validation of BondCancellationService is successfully executed should have come of <ProductType> product type  <ApplicationStage> for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on cancel bonds button
    Then "BondCancellationService is successfully executed." comes in notification message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-22_CAS-186980
Scenario Outline: ACAUTOCAS-18034: Activity section should have bond cancellation service success message of <ProductType> product type  <ApplicationStage> for <Category>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And On PDOC Stage check Activity section
    Then Activity section should have "Service execution SUCCESS for BondCancellationService." message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-25_CAS-186980
Scenario Outline: ACAUTOCAS-18035: Application should move to next stage of <ProductType> product type  <ApplicationStage> for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    When user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions
    And user clicks on save on security conditions
    And user complete document printing tab
    And user clicks on move to next stage
    Then user opens an application of "Disbursal" stage present in context from application grid
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-41_CAS-186980
Scenario Outline: ACAUTOCAS-18036: Bond Allocation data should not be empty of <ProductType> product type  <ApplicationStage> for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions
    And user clicks on save on security conditions
    And user complete document printing tab
    When user clicks on move to next stage
    And user opens an application of "Disbursal" stage present in context from application grid
    And user opens bond allocation tab
    Then Page should reload with Bond Allocation "<FieldName>" data should not be empty
    Examples:
      | FieldName               | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
      | Deal Reference Number   | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Number Start       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Number End         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Price              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Bond Number             | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Issue Date         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Purchase Invoice Number | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Purchase Receipt Number | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Bond Expiry Date        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Amount                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Quantity                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-45_CAS-186980
Scenario Outline: ACAUTOCAS-18036: Bond Allocation data should not be empty of <ProductType> product type  <ApplicationStage> for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions
    And user clicks on save on security conditions
    And user complete document printing tab
    When user clicks on move to next stage
    And user opens an application of "Disbursal" stage present in context from application grid
    And user opens bond allocation tab
    Then Page should reload with Bond Allocation "<FieldName>" data should not be empty
    Examples:
      | FieldName               | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | Deal Reference Number   | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Unit Number Start       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Unit Number End         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Unit Price              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Bond Number             | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Unit Issue Date         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Purchase Invoice Number | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Purchase Receipt Number | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Bond Expiry Date        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Amount                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | Quantity                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18037: Check Send Back Stamping on <VarStage1> of <ProductType> product type  <ApplicationStage> for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And Application sent back to "<VarStage1>" from Share Sell stage
    Then user opens an application of "<VarStage1>" stage present in context from application grid
    Examples:
      | VarStage1       | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | CREDIT APPROVAL | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |
      | POST APPROVAL   | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |
      | Sourcing        | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18037: Check Send Back Stamping on <VarStage1> of <ProductType> product type  <ApplicationStage> for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And Application sent back to "<VarStage1>" from Share Sell stage
    Then user opens an application of "<VarStage1>" stage present in context from application grid
    Examples:
      | VarStage1       | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | CREDIT APPROVAL | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
  Scenario Outline: ACAUTOCAS-14644:  Validate rejecting Application at <ApplicationStage>for a <ProductType> application for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    When user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    Then Application should be available on Rejected Application Grid
    Examples:
      | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | share_sell.xlsx | share_sell             | 3                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
  Scenario Outline: ACAUTOCAS-14645:  Validate application in Rejected Application grid at <ApplicationStage>for a <ProductType> application for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    When user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    Then Application should be available on Rejected Application Grid
    Examples:
      | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | share_sell.xlsx | share_sell             | 4                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-49_CAS-186980
Scenario Outline: ACAUTOCAS-18038: Validate <ReviewAction> of an application to PDOC stage from Rejected Application Grid at <ApplicationStage>for a <ProductType> application for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    When User is on Rejected application grid
    And user search application on rejected application
    And user makes action to confirm "<ReviewAction>" the application on "<Grid>" application
    Then application is "<Grid>" based on the action taken on Review application
    Examples:
      | Grid     | ReviewAction | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | Rejected | Send Back    | share_sell.xlsx | share_sell             | 0                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |
      | Rejected | Cancellation | share_sell.xlsx | share_sell             | 2                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18039: Validate send back of an application to <VarStage> stage from Rejected Application Grid for a <ProductType> application for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    When User is on Rejected application grid
    And user search application on rejected application
    Then application can be send back to "<VarStage>" stage
    Examples:
      | VarStage        | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | LEAD_DETAILS    | share_sell.xlsx | share_sell             | 8                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |
      | CREDIT_APPROVAL | share_sell.xlsx | share_sell             | 9                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |
      | POST_APPROVAL   | share_sell.xlsx | share_sell             | 10                            | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18039: Validate send back of an application to <VarStage> stage from Rejected Application Grid for a <ProductType> application for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    When User is on Rejected application grid
    And user search application on rejected application
    Then application can be send back to "<VarStage>" stage
    Examples:
      | VarStage        | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | CREDIT_APPROVAL | share_sell.xlsx | share_sell             | 9                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-50_CAS-186980
  Scenario Outline: ACAUTOCAS-14643:  Validate application in cancelled Application grid at <ApplicationStage> for a <ProductType> application for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    When user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    Then Application will land on Cancelled Applications grid
    Examples:
      | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | share_sell.xlsx | share_sell             | 0                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-51_CAS-186980
  Scenario Outline: ACAUTOCAS-14642:  Validate Cancelling application from at <ApplicationStage> for a <ProductType> application for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    When user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    Then Application will land on Cancelled Applications grid
    Examples:
      | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | share_sell.xlsx | share_sell             | 1                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-53_CAS-186980
Scenario Outline: ACAUTOCAS-18040: Validate <ReviewAction> of an application to PDOC stage from Cancelled Application Grid at <ApplicationStage>for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    When User is on cancelled application grid
    And user search application on cancelled application
    And user makes action to confirm "<ReviewAction>" the application on "<Grid>" application
    Then application is "<Grid>" based on the action taken on Review application
    Examples:
      | Grid      | ReviewAction | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | Cancelled | Send Back    | share_sell.xlsx | share_sell             | 3                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |
      | Cancelled | Cancellation | share_sell.xlsx | share_sell             | 4                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18041: Validate send back of an application to <VarStage> stage from Cancelled Application Grid at <ApplicationStage>for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    When User is on cancelled application grid
    And user search application on cancelled application
    Then application can be send back to "<VarStage>" stage
    Examples:
      | VarStage        | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | LEAD_DETAILS    | share_sell.xlsx | share_sell             | 8                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |
      | CREDIT_APPROVAL | share_sell.xlsx | share_sell             | 9                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |
      | POST_APPROVAL   | share_sell.xlsx | share_sell             | 10                            | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18041: Validate send back of an application to <VarStage> stage from Cancelled Application Grid at <ApplicationStage>for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_shareSell>" and row <ShareDetails_shareSell_rowNum>
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    When User is on cancelled application grid
    And user search application on cancelled application
    Then application can be send back to "<VarStage>" stage
    Examples:
      | VarStage        | ShareDetailsWB  | ShareDetails_shareSell | ShareDetails_shareSell_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | CREDIT_APPROVAL | share_sell.xlsx | share_sell             | 9                             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-54_CAS-186980
Scenario Outline: ACAUTOCAS-18042: Rule validation should come in case of bond expiry date is reached at <ApplicationStage> for a <ProductType> application for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 3
    And user fills all mandatory fields required for security conditions with upload
    And user clicks on save on security conditions
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    When user moves to main tab of "disbursal"
    And user clicks on add entry on disbursal page
    And user fills mandatory field in disbursal entry for "Personal Loan"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    And user initiate disbursal
    Then Rule validation should come "BOND_EXPIRY_CHECK : Bond Expiry Date is less than Current Date." in case of Bond expire
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-56_CAS-186980
Scenario Outline: ACAUTOCAS-18043: Application should be sent back with bond cancelled in activity Stamping in Activity Section on <VarStage1> at Disbursal for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 3
    And user fills all mandatory fields required for security conditions with upload
    And user clicks on save on security conditions
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    When user moves to main tab of "disbursal"
    And user clicks on add entry on disbursal page
    And user fills mandatory field in disbursal entry for "Personal Loan"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    And user initiate disbursal
    And Application sent back to "<VarStage1>" from Share Sell stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And On PDOC Stage check Activity section
    Then Activity section should have "Service execution SUCCESS for BondCancellationService." message
    Examples:
      | VarStage1     | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | Post Approval | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-58_CAS-186980
Scenario Outline: ACAUTOCAS-18044: Bonds Cancellation service is not executed successfully with Send Back activity Stamping in Activity Section on <VarStage1> at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 3
    And user fills all mandatory fields required for security conditions with upload
    And user clicks on save on security conditions
    And user reads data from the excel file "disbursal.xlsx" under sheet "disbursal_entry" and row 0
    When user moves to main tab of "disbursal"
    And user clicks on add entry on disbursal page
    And user fills mandatory field in disbursal entry for "Personal Loan"
    And user fills disbursal Checklist
    And user opens payee details on disbursal
    And user selects payment mode as "Cheque"
    And user fills dealing bank in payee details
    And user saves the disbursal
    And user initiate disbursal
    And Application sent back to "<VarStage1>" from Share Sell stage
    And user opens an application of "<VarStage1>" stage present in context from application grid
    And On PDOC Stage check Activity section
    Then Activity section should not have "Service execution SUCCESS for BondCancellationService." message
    Examples:
      | VarStage1       | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
      | Credit Approval | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-65_CAS-186980
Scenario Outline: ACAUTOCAS-18045: Validation should come that filling bond allocation data is mandatory at <ApplicationStage> for a <ProductType> application for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user clicks on move to next stage
    Then Validation should come that filling bond allocation data is mandatory
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
#PQM-76_CAS-186980
Scenario Outline: ACAUTOCAS-18046: Page should reload and Bond Allocation Data should not be empty at <ApplicationStage> for a <ProductType> application for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user is on conditions tab
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions
    And user clicks on save on security conditions
    And user complete document printing tab
    When user clicks on move to next stage
    And user opens an application of "Disbursal" stage present in context from application grid
    And user opens bond allocation tab
    Then Page should reload with Bond Allocation "<FieldName>" data should not be empty
    Examples:
      | FieldName               | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
      | Deal Reference Number   | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Number Start       | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Number End         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Price              | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Bond Number             | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Unit Issue Date         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Purchase Invoice Number | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Purchase Receipt Number | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Bond Expiry Date        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Amount                  | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
      | Quantity                | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18047: Validating <fieldName> label present on bond cancellation section at <ApplicationStage> for a <ProductType> application for <Category> are <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then "<fieldName>" label should be present on bond allocation section for "<section>" category
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key    | fieldName               | section         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Deal Reference Number   | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Unit Number Start       | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Unit Number End         | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Unit Price              | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Bond Number             | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Unit Issue Date         | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Purchase Invoice Number | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Purchase Receipt Number | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Bond Expiry Date        | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Amount                  | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Quantity                | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Documents               | Bond Initiation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Deal Reference Number   | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Unit Number Start       | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Unit Number End         | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Bond Number             | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Bond Expiry Date        | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Amount                  | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Quantity                | Bond Transfer   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Documents               | Bond Transfer   |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18048: field validation for non-editable in unit price at <ApplicationStage> for a <ProductType> application for <Category> are <Key> for bond transfer
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then user should be able to verify "<fieldName>" in unit price as disable for bond purchase
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key    | fieldName |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Currency  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Amount    |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18049: Mandatory field validation at <ApplicationStage> for a <ProductType> application for <Category> are <Key> application for bond transfer
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user reads data from the excel file "post_approval.xlsx" under sheet "bondAllocation" and row 0
    Then user should be able to verify mandatory "<fieldName>" field for bond transfer
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key    | fieldName             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Deal Reference Number |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Unit Number Start     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Unit Number End       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Bond Number           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Amount                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Quality               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Bond Expiry Date      |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18050: Screen validation for <fieldName> at <ApplicationStage> for a <ProductType> application for <Category> are <Key> application for bond transfer
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then user should be able to see "<fieldName>" under bond transfer
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key    | fieldName             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Deal Reference Number |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Unit Number Start     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Unit Number End       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Bond Number           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Bond Expiry Date      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Amount                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Quality               |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval","Disbursal"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18051: Visibility of document at <ApplicationStage> for a <ProductType> application for <Category> are <Key> product
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then user should be able to view "<documentName>" document for "<fieldName>" field
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key    | fieldName       | documentName |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Bond Initiation | Doc1         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Bond Initiation | Doc2         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Bond Initiation | Doc3         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Bond Transfer   | Doc1         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    | Expire | Bond Transfer   | Doc2         |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18052: Validate <FieldName> is in view mode at hold stage in bond at <ApplicationStage> for a <ProductType> application for <Category> are <Key> for <section> STP mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user throw the application to the hold grid for "<ApplicationStage>"
    When user search for an application present of "<ProductType>" application at "<ApplicationStage>" stage in hold application grid
    And user opens bond allocation tab
    Then "<FieldName>" should be present in view mode for "<section>" section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName               | section       | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Issue Date         | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Invoice Number | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Receipt Number | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Purchase | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Transfer | post_approval.xlsx | bondAllocation              | 23                                 |

#${ProductType:["IPF"]}
#${ApplicationStage:["Post Approval"]}
#${ApplicantType:["indiv"]}
#${Category:["bonds"]}
Scenario Outline: ACAUTOCAS-18053: Validate <FieldName> is in view mode at enquiry stage in bond at <ApplicationStage> for a <ProductType> application for <Category> are <Key> for <section> STP mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on cancel bonds button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    And user opens bond allocation tab
    Then "<FieldName>" should be present in view mode for "<section>" section
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | FieldName               | section       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Issue Date         | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Invoice Number | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Purchase Receipt Number | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Purchase |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number   | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start       | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End         | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number             | Bond Transfer |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date        | Bond Transfer |

###############################################   Auditted DB Cases   ###########################################

#PQM-48_CAS-186980_NotImplementable
# Scenario Outline: Application rejection should stop at <ApplicationStage>for a <ProductType> application
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Confirm Reject >> Cancel service error
#    Then Application rejection should stop
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category   | Key    |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> | Expire |
#
#PQM-52_CAS-186980_NotImplementable
# Scenario Outline: Application cancellation should stop at <ApplicationStage>for a <ProductType> application
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Click Confirm cancel and Cancel service is not executed successfully
#    Then Application cancellation should stop
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#PQM-55_CAS-186980_Invalid
#Scenario Outline: Rule validation should come in case of bond expiry date is reached
#Initiate Disbursal>>Disbursal Author>>Confirm Author

#PQM-57_CAS-186980_Negative_Case_Deferred
# Scenario Outline: Application send back should stop and error message should come
#  INITIATE DISBURSAL>>Rule validation comes>>Send back to PDOC>>Bonds Cancellation service is not executed successfully

##PQM-79_CAS-186980_Deffered_DB_Cases
# Scenario Outline: Already saved bond allocation data should be present
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens bond allocation tab
#    And user clicks on cancel bond button
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    When user send back the application to "DDE" stage
#    And user change Auditted Data
#    And user move application "PDOC" stage
#    Then Already saved bond allocation data should be present
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
#
##PQM-80_CAS-186980_Deffered_DB_Cases
# Scenario Outline: Application should not move to next stage and data mismatch validation should come
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens bond allocation tab
#    And user clicks on cancel bond button
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    When user send back the application to "DDE" stage
#    And user change Auditted Data
#    And user move application "PDOC" stage
#    Then Application should not move to next stage with data mismatch validation should come
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
#
##PQM-81_CAS-186980_Deffered_DB_Cases
# Scenario Outline: Page should reload with Bond Allocation Data should be empty
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens bond allocation tab
#    When user clicks on cancel bonds button
#    When user send back the application to "DDE" stage
#    And user change Auditted Data
#    And user move application "PDOC" stage
#    Then Page should reload with Bond Allocation Data should get empty
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
#
##PQM-82_CAS-186980_Deffered_DB_Cases
# Scenario Outline: Activity section should have bond cancellation service success message
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens bond allocation tab
#    When user send back the application to "DDE" stage
#    And user change Auditted Data
#    And user move application "PDOC" stage
#    And user clicks on cancel bonds button
#    And On PDOC Stage check Activity section
#    Then Activity section should have "Service execution SUCCESS for BondCancellationService." message
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key    |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> | Expire |
#
##PQM-72_CAS-186980_Out_of_scope
# Scenario Outline: Bond Cancellation data should be updated in DB
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Click on MTNS after initiating Bond Transfer service in case of Current Date >= Bond Expiry Date
#    Then Bond Cancellation data should be updated in DB
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
##PQM-83_CAS-186980_Out_of_scope
# Scenario Outline: And  Initiate Bonds Transfer Service>>Send Back to DDE>>Change Auditted Data>Move till PDOC>>Click on MTNS
#    And Then Initiate Bonds Transfer Service>>Send Back to DDE>>Change Auditted Data>Move till PDOC>>Click on MTNS
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    Then Bond cancellation data should be updated in DB
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage and Bonds are already expired
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
##PQM-85_CAS-186980_Out_of_scope
# Scenario Outline: Bonds Transfer Service should give error
#    When Click Initiate Bond Transfer button
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    Then Bonds Transfer Service should give error
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage and Bonds are already expired
#    When Click MTNS after initiating Bonds Transfer
#    Then MTNS should not be allowed and validation should be shown
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
##PQM-78_CAS-186980_Out_of_scope
# Scenario Outline: Bond cancellation data should be updated in DB
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage and Bonds are cancelled once and Current Date >= Bond Expiry Date
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Click on MTNS after initiating Bonds Transfer
#    Then Bond cancellation data should be updated in DB
#
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
##PQM-16_CAS-186980_Done
# Scenario Outline: Bond Purchase Data should come and response should be shown on UI
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Click on Initiate Bond Purchase button
#    Then Bond Purchase Data should come and response should be shown on UI
#
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
##PQM-18_CAS-186980_Done
# Scenario Outline: Bond Transfer Data should come and response should be shown on UI
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Click on Initiate Bond Transfer button
#    Then Bond Transfer Data should come and response should be shown on UI
#
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
##PQM-24_CAS-186980_Done
# Scenario Outline: Bond Allocation Data should get saved second time also
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage and Bonds are cancelled once and Current Date < Bond Expiry Date
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Initiate Bond Purchase and then Initaite Bond Transfer
#    Then Bond Allocation Data should get saved second time also
#
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
##PQM-67_CAS-186980_Done
# Scenario Outline: Bond Transfer Data should come and response should be shown on UI
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Click Initiate Bond Transfer button
#    Then Bond Transfer Data should come and response should be shown on UI
#
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
#
##PQM-73_CAS-186980_Done
# Scenario Outline: Bond Allocation Data should get saved second time also
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage and Bonds are cancelled once and Current Date < Bond Expiry Date
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Initiate Bond Transfer
#    Then Bond Allocation Data should get saved second time also
#
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
##PQM-36_CAS-186980_Manual_Bond_Config_Done
# Scenario Outline: Mandatory field validation should come for bond transfer fields
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Fill Bond Purchase Data>>Click on save button
#    Then Mandatory field validation should come for bond transfer fields
#
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
##PQM-37_CAS-186980_Manual_Bond_Config_Done
# Scenario Outline: All conditional validations should work
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Fill Bond Transfer Data>>Click on save button
#    Then All conditional validations should work
#
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
##PQM-38_CAS-186980_Manual_Bond_Config_Done
# Scenario Outline: Bond allocation data should be saved successfully
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Fill Bond Purchase Data>>Fill Bond Transfer Data>>Click on save button
#    Then Bond allocation data should be saved successfully
#
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
##PQM-61_CAS-186980_Manual_Bond_Config_Done
# Scenario Outline: Entered data should be saved successfully and no conditional validations should come
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Fill Bond Transfer Data>>Click on save button
#    Then Entered data should be saved successfully and no conditional validations should come
#
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
##PQM-39_CAS-186980_Manual_Bond_Config_Done
# Scenario Outline: Application should move to next stage
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage and Current Date < Bond Expiry Date
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Fill Bond Purchase Data>>Fill Bond Transfer Data>>Click on save>>Click on MTNS
#    Then Application should move to next stage
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
##PQM-40_CAS-186980_Manual_Bond_Config_Done
# Scenario Outline: Application should not move to next stage and bonds expired validation should come
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage and Current Date >= Bond Expiry Date
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Fill Bond Purchase Data>>Fill Bond Transfer Data>>Click on save>>Click on MTNS
#    Then Application should not move to next stage and bonds expired validation should come
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
#PQM-66_CAS-186980_Invalid
# Scenario Outline: Bond Purchase section should not be displayed on Bond Allocation tab
#    Given A Personal Finance application having a product mapped with Bonds Commodity is at PDOC stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When Verify Bond Purchase section
#    Then Bond Purchase section should not be displayed on Bond Allocation tab
#    Examples:
#      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
#      | <ProductType> | <ApplicantType> | <ApplicationStage> |    |     |
#
#PQM-21_CAS-186980_invalid
#after page reload, data are present.
# Scenario Outline: Page should reload and Bond Allocation Data should get empty
#
#PQM-23_CAS-186980_invalid
# Scenario Outline: Bond cancellation data should get updated in DB
#
