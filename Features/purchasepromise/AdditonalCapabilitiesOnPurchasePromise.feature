@Epic-PF_Share_Base
@PQMStory
@GWTReviewedBy-vipin.kishor
@ReviewedBy-nimisha.kulshrestha
@AuthoredBy-yash.sharma
@TechReviewdBy-harshprit.kumar
@ImplementedBy-yash.sharma
@Shares
@Islamic
#Story-CAS-186309
Feature:Additional Capabilities On Purchase Promise Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-47_CAS-186309,34_CAS-186309
  #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release
    @ReleaseIslamic
  Scenario Outline: ACAUTOCAS-14709:  Verify search application in Pool Applications grid at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user throw the application to the pool application grid
    When user search for an application present of "<ProductType>" application at "Purchase Promise" stage
    Then user should be able to search the application in the Application grid
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-49_CAS-186309
  #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release
    @ReleaseIslamic
  Scenario Outline: ACAUTOCAS-14710:  Search Application through the stage name at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user search for an application present of "<ProductType>" application at "Purchase Promise" stage
    Then User search the application at "<targetStage>" stage through stage name
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | targetStage      | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise | Purchase Promise |


  @Perishable
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-53_CAS-186309
  #FeatureID-ACAUTOCAS-11319
    @ReleaseIslamicM3
    @Release
    @ReleaseIslamic
  Scenario Outline: ACAUTOCAS-14711:  Send Back Purchase Promise Application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sheetName>" and row <MoreActions_sheetName_rowNum>
    When user send back above application to "<targetStage>" stage
    Then above application is on "<targetStage>" stage
    Examples:
      | ProductType   | ApplicationStage   | targetStage     | ApplicantType   | Category | Key                | MoreActionsWB     | MoreActions_sheetName | MoreActions_sheetName_rowNum |
      | <ProductType> | <ApplicationStage> | CREDIT APPROVAL | <ApplicantType> | shares   | ispurchase promise | more_actions.xlsx | send_back             | 9                            |


    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #PQM-32_CAS-186309
    #PMG-18_CAS-186309
    #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release
    @ReleaseIslamic
  Scenario Outline: ACAUTOCAS-14712:  Raise Query at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user navigates to raise query
    When user raises a query
    Then user should be able to raise Query for selected application
    Examples:
      | ProductType   | ApplicationStage   | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | more_actions.xlsx | raise_query      | 0                       | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #PQM-36_CAS-186309
    #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release
    @ReleaseIslamic
  Scenario Outline: ACAUTOCAS-14713:  Validate Workflow History at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigates to workflow
    Then Current as well as previous action record should be present
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |




   # ${ProductType:["IPF"]}
   # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
   #PQM-37_CAS-186309,38_CAS-186309,39_CAS-186309
   #FeatureID-ACAUTOCAS-11319
  @Perishable
    @ReleaseIslamicM3
    @Release
    @ReleaseIslamic
  Scenario Outline: ACAUTOCAS-14714:  Verify search application in Hold Applications grid at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user throw the application to the hold application grid
    And user switches to the hold grid for application search
    When user search for an application present of "<ProductType>" application at "<ApplicationStage>" stage
    And user search application of Purchase Promise in the hold application grid
    Then user verifies application in Hold application grid
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #PQM-40_CAS-186309
    #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release
    @ReleaseIslamic
  Scenario Outline: ACAUTOCAS-14715:  Copy a Application of <FinalStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user searches application using "Application Number" in copy application screen
    And user reads data from the excel file "copy_application.xlsx" under sheet "auto" and row 25
    And user copy the application
    Then generated application number should be available in application grid
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #PQM-41_CAS-186309
    #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14716:  Generate Sanction Letter at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user navigates to Generate Sanction Letter
    Then Sanction letter should be generate successfully at "<ApplicationStage>"
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
  #PQM-42_CAS-186309
  #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14717:  Validate save without adding any investor details record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user delete all investor details
    When user clicks on Move to Next stage
    Then Proper validation should come in investor details

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-43_CAS-186309
  #FeatureID-ACAUTOCAS-11319
  @Perishable
    @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14718:  Cancel application from cancelled application screen at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 35
    And user cancel the application present in context of "Purchase Promise" stage
    And user opens an application from cancelled application grid
    When user confirms cancellation from review cancelled application screen
    Then application is cancelled successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
  #PQM-10_CAS-186309
  #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14719: Validate Additional Capabilities Available at <FinalStage> of <ProductType>
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then user should be able to see "<fieldName>" field under Purchase Promise stage
    Examples:
      | ProductType   | ApplicationStage   | fieldName                      | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Application TAT                | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Move to Next Stage             | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | More Actions                   | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Exit                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Workflow Icon                  | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Customer Communication History | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Activity                       | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | CAM Report                     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |



  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
  #PQM-13_CAS-186309
  #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release
    @31MarFix
  Scenario Outline: ACAUTOCAS-14720:  Upload Documents at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "document.xlsx" under sheet "home" and row 342
    And user switch to Documents Tab
    And user selects the document
    When user selects document status as "Received"
    And user upload the document
    And user submit the document
    Then documents should be uploaded successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
  #PQM-7_CAS-186309
  #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14721:  <capabilities> should be present in Three Dot Option at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When clicks three dot
    Then "<capabilities>" should be present in the Options.
    Examples:
      | ProductType   | ApplicationStage   | capabilities             | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Cancel Application       | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Hold Application         | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Generate Sanction Letter | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Workflow History Records | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Send Back                | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Raise Query              | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Re-Assign Application    | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


   #${ProductType:["IPF"]}
   # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
   #PQM-8_CAS-186309
   #ST-12_CAS-186309
  #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14722:  <capabilities> should present in Activity Section at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens activity section
    And user opens "<capabilities>" field on activity section
    Then user should be able to verify working of available "<capabilities>" field
    Examples:
      | capabilities          | ApplicationStage   | ProductType   | ApplicantType   | Category | Key                | FinalStage       |
      | Comments              | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | Activity              | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | History               | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | Notes                 | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | Tag                   | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | Rule Execution Result | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | Messages              | <ApplicationStage> | <ProductType> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #PQM-9_CAS-186309
    #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14723:  In Activity Bar User Name should present with User Id at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens activity section
    And user navigates to activity Tab
    Then User Name should present with User Id
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


   # ${ProductType:["IPF"]}
   # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
   #PQM-55_CAS-186309,33_CAS-186309
   #PMG-16_CAS-186309
   #ST-18_CAS-186309
   #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release


  Scenario Outline: ACAUTOCAS-14724:  Bulk Allocation for Purchase Promise Application at <FinalStage> of <ProductType>
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open application manager
    And user navigate to Bulk Allocation
    And user reads data from the excel file "document.xlsx" under sheet "document_approval" and row <rowNum>
    And user search for an Multiple application where document deferral task is already initiated
    When user selects bulk allocation option
    And user reassigns the application to team with user as per application manager capabilities
    Then user should be able to reassign application through application manager
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | rowNum | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 30     | Purchase Promise |


   #${ProductType:["IPF"]}
   # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
   #PMG-15_CAS-186309
   #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14725: Verify Investor screen from Enquiry in view mode at <FinalStage> of <ProductType>
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    And user moves an application from "Reconsideration" Stage to "Purchase Promise" Stage
    When user opens an "<ProductType>" application at "Purchase Promise" stage from enquiry screen
    Then Application should be open in view mode of Purchase Promise stage
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

   #${ProductType:["IPF"]}
   # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
   #PQM-11_CAS-186309
   #PMG-4_CAS-186309
   #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14726:  Validate <tabName> at <FinalStage> of <ProductType>
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then "<tabName>" should present at Purchase Promise Stage
    Examples:
      | ProductType   | ApplicationStage   | tabName          | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Investor Details | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Documents        | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #PQM-34_CAS-186309
    #PMG-17_CAS-186309
    #ST-
    #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14727:  Verify search application in Assigned Applications grid at <FinalStage> of <ProductType>
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to assigned application Grid
    And user searches application in Assigned application Grid
    Then User should be able to search the application in Application grid
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  @ManualConfig
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #PQM-
    #PMG-14_CAS-186309
    #ST-
    #FeatureID-ACAUTOCAS-11319
  Scenario Outline: ACAUTOCAS-14728:  Validate Is Registration Completed flag while switching Tabs at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user fills all fields to add investor details
    And user checks Is Registration Completed flag
    When user switch to Documents Tab
    And user clicks on ok button in the warning popup
    Then Is Registration Completed Flag must be "<flagStatus>"
    Examples:
      | ProductType   | ApplicationStage   | flagStatus | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | unchecked  | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  @ManualConfig
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #PQM-
    #PMG-13_CAS-186309
    #ST-
    #FeatureID-ACAUTOCAS-11319
  Scenario Outline: ACAUTOCAS-14729:  Validate Is Registration Completed Flag while adding a new Record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user checks Is Registration Completed flag
    And user fills all fields to add investor details
    When user clicks on done button in investor details
    Then Is Registration Completed Flag must be "<flagStatus>"
    Examples:
      | ProductType   | ApplicationStage   | flagStatus | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | checked    | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  @ManualConfig
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #PQM-
    #PMG-12_CAS-186309
    #ST-
    #FeatureID-ACAUTOCAS-11319
  Scenario Outline: ACAUTOCAS-14730:  Validate Is Registration Completed Flag while cancelling the Record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user fills all fields to add investor details
    And user checks Is Registration Completed flag
    When user clicks on cancel button in Purchase Promise
    And user clicks on ok button in the warning popup
    Then Is Registration Completed Flag must be "<flagStatus>"
    Examples:
      | ProductType   | ApplicationStage   | flagStatus | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | unchecked  | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  @LoggedBug
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #PQM-15_CAS-186309
    #PMG-
    #ST-
    @Deferred
    #FeatureID-ACAUTOCAS-11319
  Scenario Outline: ACAUTOCAS-14731:  Validate CAM Report without creating Record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    When user opens CAM Report in Purchase Promise
    Then Investor Details should be "<reportType>"
    Examples:
      | ProductType   | ApplicationStage   | reportType | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | empty      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  @LoggedBug
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #PQM-17_CAS-186309
    #PMG-
    #ST-
    @Deferred
    #FeatureID-ACAUTOCAS-11319
  Scenario Outline: ACAUTOCAS-14732:  Validate CAM Report after creating Record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user fills all fields to add investor details
    And user clicks on done button in investor details
    When user opens CAM Report in Purchase Promise
    Then Investor Details should be "<reportType>"
    Examples:
      | ProductType   | ApplicationStage   | reportType | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | filled     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  @LoggedBug
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #PQM-19_CAS-186309
    #PMG-
    #ST-
    #FeatureID-ACAUTOCAS-11319
    @Deferred
  Scenario Outline: ACAUTOCAS-14733:  Validate CAM Report after editing Record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user fills all fields with dynamic form to add investor details
    And user clicks on done button in investor details
    And user clicks on edit button in investor details record grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 1
    When user update "Max Original Cost" of that investor details record
    And user clicks on done button in investor details
    And user opens CAM Report in Purchase Promise
    Then Investor Details should be "<reportType>"
    Examples:
      | ProductType   | ApplicationStage   | reportType | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | edited     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #PQM-2_CAS-186309,56_CAS-186309
    #PMG-
    #ST-
  #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14734:  Check <ApplicationStage> application in Application Manager
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user check application in Application Manager
    Then Application should be present at "Purchase Promise"
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #ST-6_CAS-186309
    #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14735:  Online Help should be visible at <FinalStage> of <ProductType>
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then Online Help should be visible
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
    #ST-13_CAS-186309
    #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14736:  Audit Trail Should be Maintain at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens activity section
    When user navigates to activity Tab
    Then Audit Trail should be maintained
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-45_CAS-186309
  #FeatureID-ACAUTOCAS-11319
  @Perishable
    @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14737:  Validate send back of cancelled application at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 35
    And user cancel the application present in context of "Purchase Promise" stage
    And user opens an application from cancelled application grid
    When user send back that application from review cancelled application screen
    Then Application should get sent back to "Purchase Promise" stage
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

   # ${ProductType:["IPF"]}
   # ${ApplicationStage:["Reconsideration"]}
    # ${ApplicantType:["indiv"]}
   #PQM-
   #FeatureID-ACAUTOCAS-11319
  @ReleaseIslamicM3
    @Release

  Scenario Outline: ACAUTOCAS-14738:  Validate <actions> at Send Back Modal at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to send back application screen
    When user perform "<actions>" in send back modal at Purchase Promise
    Then "<actions>" should work properly at Purchase Promise
    Examples:
      | ProductType   | ApplicationStage   | actions  | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Minimise | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Maximise | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Close    | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Cancel   | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |