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
#${ApplicationStage:["Reconsideration"]}

Feature: Post Approval Changes with respect to Tadwaul Workflow

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

#PQM-2_CAS-189513
#ST-12_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14631:  Validate seeded <TabName> at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user add "<TabName>" on post approval stage
    Then "<TabName>" will get added on post approval stage
    Examples:
      | ProductType   | ApplicationStage   | TabName                 | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | Application Information | sharepurchase.xlsx | share_purchase             | 30                                | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Finance Details         | sharepurchase.xlsx | share_purchase             | 31                                | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Documents               | sharepurchase.xlsx | share_purchase             | 33                                | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | References              | sharepurchase.xlsx | share_purchase             | 34                                | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Conditions              | sharepurchase.xlsx | share_purchase             | 35                                | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Checklist               | sharepurchase.xlsx | share_purchase             | 36                                | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Account Details         | sharepurchase.xlsx | share_purchase             | 37                                | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | E-Stamping              | sharepurchase.xlsx | share_purchase             | 38                                | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Summary Analysis        | sharepurchase.xlsx | share_purchase             | 39                                | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Share Purchase          | sharepurchase.xlsx | share_purchase             | 40                                | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Repayment Instrument    | sharepurchase.xlsx | share_purchase             | 41                                | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Collateral              | sharepurchase.xlsx | share_purchase             | 42                                | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-3_CAS-189513
#ST-26_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14632:  Validate Share Purchase Tab is editable at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user is on Share Purchase Tab
    And User try to edit data in share purchase tab
    Then data gets edited successfully
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 43                                | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-4_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14633:  Validate data entered on dynamic form gets saved at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user is on Share Purchase Tab
    And user enters the data in dynamic form on share purchase tab
    Then data should get saved successfully
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 44                                | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-5_CAS-189513
#ST-11_CAS-189513,17_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14634:  Validate repayment schedule gets automatically redrawn at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user clicks on view repayment schedule on repayment tab
    Then repayment schedule gets automatically redrawn
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-5_CAS-189513
#ST-11_CAS-189513
#FeatureID-ACAUTOCAS-11318
  @LoggedBug-CAS-223693
  Scenario Outline: ACAUTOCAS-14635:  Validate <Field_Name> within application details in Repayment Schedule generated at <FinalStage> for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user saves the "<Field_Name>" of applicant details of Repayment Schedule at "<FinalStage>"
    And user open Repayment Schedule to validate data of "<Field_Name>"
    And user saves the "<Field_Name>" of Repayment Schedule for "<ProductType>"
    Then "<Field_Name>" is same as above Repayment Schedule record
    Examples:
      | ProductType   | Field_Name           | ApplicationStage   | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | Product Type         | <ApplicationStage> | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Product              | <ApplicationStage> | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Scheme               | <ApplicationStage> | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Application Number   | <ApplicationStage> | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Amount Requested     | <ApplicationStage> | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Repayment Type       | <ApplicationStage> | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Profit Rate Type     | <ApplicationStage> | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Repayment Frequency  | <ApplicationStage> | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Tenure               | <ApplicationStage> | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | Profit Charge Method | <ApplicationStage> | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-6_CAS-189513
#ST-28_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14636:  Validate Requested Amount does not get changed with updated loan amount at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User checks Sourcing details on Loan details tab
    And user checks Requested Amount
    Then requested amount does not get changed with updated loan amount
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-7_CAS-189513,22_CAS-189513
#ST-29_CAS-189513,48_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14637:  Validate Application amount gets automatically updated at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User checks Repayment Parameters on Loan details tab
    And User views Application amount field
    Then Application amount gets automatically updated with total executed amount
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-8_CAS-189513
#ST-30_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14638:  Validate impact on DBR at financial Summary Tab at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User is on financial summary tab
    And User views DBR
    Then DBR gets calculated as the loan amount gets updated with total executed amount
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-9_CAS-189513
#ST-31_CAS-189513
#The fields on the CAM report page lack unique selectors due to the absence of IDs. refer this CAS-197733
#FeatureID-ACAUTOCAS-11318
  @Deferred-Islamic
  Scenario Outline: ACAUTOCAS-14639:  Validate DBR gets automatically updated on CAM report at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User is on financial summary tab
    And User views DBR
    And User selects the CAM report
    Then DBR gets automatically updated based on the total executed amount
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-10_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14640:  Validate Requested amount field is disabled at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User checks Sourcing details on Loan details tab
    And user checks Requested Amount
    And Amount requested field is disabled
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-11_CAS-189513
#ST-11_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14641:  Validate <Options> in more actions on <FinalStage> for a <ProductType> application for bond purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user clicks on more action button
    Then user will see various "<Options>" as below
    Examples:
      | ProductType   | ApplicationStage   | Options                  | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | CAM Report               | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Hold Application         | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Workflow History Record  | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Raise Query              | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Generate Sanction Letter | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Send Back                | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Response Query           | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Re Run Priority          | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Reject Application       | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Cancel Application       | POST APPROVAL | indiv         | shares   | ispost approval |
      | <ProductType> | <ApplicationStage> | Re-Assign Application    | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-12_CAS-189513
#ST-37_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14642:  Validate Cancelling application from at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    Then Application will land on Cancelled Applications grid
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-13_CAS-189513
#ST-38_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14643:  Validate application in cancelled Application grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    Then Application will land on Cancelled Applications grid
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 1                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-14_CAS-189513
#ST-40_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14644:  Validate rejecting Application at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    Then Application should be available on Rejected Application Grid
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 3                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-15_CAS-189513
#ST-41_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14645:  Validate application in Rejected Application grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    Then Application should be available on Rejected Application Grid
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 4                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-16_CAS-189513
#ST-42_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14646:  Validate <ReviewAction> of an application to PDOC stage from Cancelled Application Grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    When User is on cancelled application grid
    And user search application on cancelled application
    And user makes action to confirm "<ReviewAction>" the application on "<Grid>" application
    Then application is "<Grid>" based on the action taken on Review application
    Examples:
      | Grid      | ReviewAction | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | Cancelled | Send Back    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 3                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | Cancelled | Cancellation | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 4                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-17_CAS-189513
#ST-43_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14647:  Validate send back of an application to some other stage from Cancelled Application Grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user clicks on more action button
    And user click on cancel Application
    And User cancels an application from Post Approval Stage
    When User is on cancelled application grid
    And user search application on cancelled application
    Then application can not be send back to some other stage
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 3                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-18_CAS-189513
#ST-44_CAS-189513
#FeatureID-ACAUTOCAS-11318

  Scenario Outline: ACAUTOCAS-14648:  Validate <ReviewAction> of an application to PDOC stage from Rejected Application Grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    When User is on Rejected application grid
    And user search application on rejected application
    And user makes action to confirm "<ReviewAction>" the application on "<Grid>" application
    Then application is "<Grid>" based on the action taken on Review application
    Examples:
      | Grid     | ReviewAction | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | Rejected | Send Back    | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | Rejected | Cancellation | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 2                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-19_CAS-189513
#ST-45_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14649:  Validate send back of an application to some other stage from Rejected Application Grid at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    And user clicks on more action button
    And user click on Reject Application
    And User reject an application from Post Approval Stage
    When User is on Rejected application grid
    And user search application on rejected application
    Then application can not be send back to some other stage
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-20_CAS-189513
#ST-46_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14650:  validate repayment schedule gets redrawn at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user clicks on view repayment schedule on Finance details tab
    Then repayment schedule gets redrawn on the basis of total executed amount
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |


#PQM-21_CAS-189513
#ST-47_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14651:  validate impact on <FieldName> repayment instrument tab at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When user is on Repayment instrument tab
    And user checks the field dependent on instrument
    And user saves the "<FieldName>" of repayment instrument details
    And user open repayment instrument report
    And user saves the "<FieldName>" of Repayment instrument details
    Then "<FieldName>" dependent on repayment schedule gets automatically updated
    Examples:
      | FieldName       | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | Instrument Type | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | Applicant Type  | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |
      | Applicant Name  | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-22_CAS-189513
#ST-48_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14652:  Validating amount financed at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    When User checks Repayment Parameters on Loan details tab
    And user checks the amount financed field on repayment page
    When user clicks on view repayment schedule
    Then amount financed gets updated with total executed amount
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage    | ApplicantType | Category | Key             |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | POST APPROVAL | indiv         | shares   | ispost approval |

#PQM-23_CAS-189513
#ST-49_CAS-189513
#FeatureID-ACAUTOCAS-11318
  Scenario Outline: ACAUTOCAS-14653:  validate repayment schedule at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<ShareDetailsWB>" under sheet "<ShareDetails_sharePurchase>" and row <ShareDetails_sharePurchase_rowNum>
    Then repayment schedule is redrawn on disbursal stage
    Examples:
      | ProductType   | ApplicationStage   | ShareDetailsWB     | ShareDetails_sharePurchase | ShareDetails_sharePurchase_rowNum | FinalStage | ApplicantType | Category | Key         |
      | <ProductType> | <ApplicationStage> | sharepurchase.xlsx | share_purchase             | 0                                 | DISBURSAL  | indiv         | shares   | isDisbursal |
