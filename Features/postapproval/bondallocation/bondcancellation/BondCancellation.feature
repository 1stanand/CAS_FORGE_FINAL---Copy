@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-deep.maurya
@TechReviewedBy-
@Islamic @Bonds
@ImplementedBy-yash.sharma


# ${ProductType:["IPF"]}
Feature:Validation of Bond Cancellation Service and Display of Unit Price

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #PMG-CAS-186539_1
  #PQM-CAS-186539_15,CAS-186539_16,CAS-186539_17,CAS-186539_18
  @ReleaseIslamicM4
@Release

  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16062:Validate Unit Price in yellow ribbon on <GridName> for <ProductType> application
    And user reads data from the excel file "rcu_initiation.xlsx" under sheet "home" and row 170
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    When user navigates to "<GridName>" grid
    And user open first application from "<GridName>" grid
    Then Unit Price Should be visible in yellow ribbon
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Category | Key | GridName           |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Application Grid   |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Cancel Application |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Enquiry            |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Deviation Approval |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Committee Approval |
    @Perishable
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Category   | Key | GridName |
      | IPF         | RCU              | indiv         | Bonds&Docs |     | RCU      |


  @ReleaseIslamicM4
@Release

    #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16371:Validate Unit Price in yellow ribbon on Response Query for <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens more actions list
    And user clicks on Raise Query window
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user enters all details of raise query
    And user click on raise query on recommendation
    And user logout from CAS
    And user logged in "CAS" with username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to response query page
    And user searches application in response query grid
    When  user clicks on recommendation stage hyperlink at response query screen
    Then Unit Price Should be visible in yellow ribbon
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Category | Key | GridName       |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Response Query |

    #PMG-CAS-186539_2,CAS-186539_6
  @Perishable
    @ReleaseIslamicM4
@Release

  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16063:Validate Unit Price in white ribbon on <ApplicationStage> for <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then Unit Price Should be visible in white ribbon
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Category | Key |
      | IPF         | Disbursal Author | indiv         | Bonds    |     |
      | IPF         | Credit Approval  | indiv         | Bonds    |     |
      | IPF         | Disbursal        | indiv         | Bonds    |     |


     #PQM-CAS-186539_9,CAS-186539_8,CAS-186539_7,CAS-186539_5,CAS-186539_11,CAS-186539_14,CAS-186539_13
  @ReleaseIslamicM4
@Release

  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16064: Validate Unit Price in header at <ApplicationStage> in yellow Ribbon
    When user opens an application of "<productType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "" from application grid
    Then Unit Price Should be visible in yellow ribbon
    Examples:
      | ApplicationStage | productType | applicantType | category |
      | Reconsideration  | IPF         | indiv         | bonds    |
      | DDE              | IPF         | indiv         | bonds    |
      | Login Acceptance | IPF         | indiv         | bonds    |
      | Sourcing         | IPF         | indiv         | bonds    |



    #PQM-CAS-186539_1
  @ReleaseIslamicM4
@Release

  #FeatureID-ACAUTOCAS-15337
  Scenario: ACAUTOCAS-16065: Validate Unit Price in Yellow Ribbon before filling Sourcing Details
    And user create new application for "Home Finance"
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 168
    When user fills home page of personal information
    Then Unit Price field should not be visible in header

    #PQM-CAS-186539_50
  @ReleaseIslamicM4
@Release

  #FeatureID-ACAUTOCAS-15337
  Scenario: ACAUTOCAS-16066: Take impact of above master record in transaction
    And user create new application for "Personal Finance"
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 168
    And user fills home page of personal information
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 285
    When user fills sourcing details
    Then Unit Price field should not be visible in header

     #PQM-CAS-186539_4
  @ReleaseIslamicM4
@Release

  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16067: Unit Price field in yellow ribbon should not be visible if any other Lino Of Business is selected other than Personal Loan
    And user create new application for "<loanType>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    When user fills sourcing details
    Then Unit Price field should not be visible in header
    Examples:
      | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | loanType     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | personal_information.xlsx | home              | 168                      | Home Finance | sourcing_details.xlsx | home                 | 284                         |

  @Perishable
    #PMG-CAS-186539_3
    @ReleaseIslamicM4
@Release

  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16068:Validate Bond Expiry Date field present in <Section> section while transfer service flow is configured at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then Bond Expiry date field should be present "<Section>" section
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | Section       |
      | IPF         | indiv         | Post Approval    | Bonds    |     | Bond Purchase |
      | IPF         | indiv         | Post Approval    | Bonds    |     | Bond Transfer |

  @ReleaseIslamicBulkPurchaseON
     #PMG-CAS-186539_4
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16252:Validate Bond Expiry Date field present in <Section> section while bulk purchase service  is configured at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then Bond Expiry date field should be present "<Section>" section
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | Section       |
      | IPF         | indiv         | Post Approval    | Bonds    |     | Bond Transfer |

  @ReleaseBondManualConfig
     #PMG-CAS-186539_5
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16069:Validate Bond Expiry Date field present in <Section> section while manual config flow  is configured at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then Bond Expiry date field should be present "<Section>" section
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | Section       |
      | IPF         | indiv         | Post Approval    | Bonds    |     | Bond Purchase |
      | IPF         | indiv         | Post Approval    | Bonds    |     | Bond Transfer |

  @Perishable
    @ReleaseIslamicM4
@Release

   #PMG-CAS-186539_6
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16070:Validate Documents section present in <Section> section while transfer service flow is configured at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then Documents section should be available in "<Section>" section
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | Section       |
      | IPF         | indiv         | Post Approval    | Bonds    |     | Bond Purchase |
      | IPF         | indiv         | Post Approval    | Bonds    |     | Bond Transfer |

  @ReleaseIslamicBulkPurchaseON
    #PMG-CAS-186539_7
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16253:Validate Documents section present in <Section> section while bulk purchase service flow is configured at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then Documents section should be available in "<Section>" section
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | Section       |
      | IPF         | indiv         | Post Approval    | Bonds    |     | Bond Transfer |

  @ReleaseBondManualConfig
    #PMG-CAS-186539_8
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16071:Validate Documents section present in <Section> section while manual config flow is configured at <ApplicationStage> for a <ProductType> application
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    Then Documents section should be available in "<Section>" section
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | Section       |
      | IPF         | indiv         | Post Approval    | Bonds    |     | Bond Purchase |
      | IPF         | indiv         | Post Approval    | Bonds    |     | Bond Transfer |

  @LoggedBug
    @ReleaseBondManualConfig
    #PMG-CAS-186539_9
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16072: Validate not saving documents in case of manual upload
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user uploads Document under Bond Purchase Section
    And user uploads Document under Bond Transfer Section
    When user clicks on Document Tab on Post Approval Stage
    Then Change tab validation should come
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  @Perishable
    @ReleaseIslamicM4
@Release

 #PMG-CAS-186539_16
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16073:Validate Response Field should not be present while transfer service flow is configured at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    When user click on initiate bond transfer
    And user reads data from the excel file "post_approval.xlsx" under sheet "bondAllocation" and row 0
    Then API success message should populate in Pnotify and get logged in Activity
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  @Perishable
    @ReleaseIslamicM4
@Release

  #PMG-CAS-186539_10,CAS-186539_13
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16074: Validate "<fieldName>" with the behaviour as "<behaviour>" in "<section>" while transfer service flow is configured at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then "<fieldName>" should be "<behaviour>" under "<section>"
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Category | Key | section       | fieldName | behaviour    |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Bond Purchase | Quantity  | present      |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Bond Transfer | Quantity  | non editable |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Bond Purchase | Amount    | present      |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Bond Transfer | Amount    | non editable |

  @ReleaseIslamicBulkPurchaseON
    #PMG-CAS-186539_11,CAS-186539_14
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16254: Validate "<fieldName>" with the behaviour as "<behaviour>" in "<section>" while Bulk purchase service flow is configured at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then "<fieldName>" should be "<behaviour>" under "<section>"
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Category | Key | section       | fieldName | behaviour    |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Bond Transfer | Quantity  | non editable |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Bond Transfer | Amount    | non editable |

  @ReleaseBondManualConfig
    #PMG-CAS-186539_12,CAS-186539_15
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16075: Validate "<fieldName>" with the behaviour as "<behaviour>" in "<section>" while manual Config flow is configured at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then "<fieldName>" should be "<behaviour>" under "<section>"
    Examples:
      | ProductType | ApplicationStage | ApplicantType | Category | Key | section       | fieldName | behaviour    |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Bond Purchase | Quantity  | present      |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Bond Transfer | Quantity  | non editable |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Bond Purchase | Amount    | present      |
      | IPF         | Post Approval    | indiv         | Bonds    |     | Bond Transfer | Amount    | non editable |

  @Perishable
    @ReleaseIslamicM4
@Release

    #PMG-CAS-186539_19,CAS-186539_33
  #FeatureID-ACAUTOCAS-15337
    @31MarFix
  Scenario Outline: ACAUTOCAS-16076: Validate bond cancel button in case of send back
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    When user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    And user fills credit approval stage
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on Move to Next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And user clicks on Move to Next stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    And user opens bond allocation tab
    Then Bond Cancel Button Should be present
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |


  @Perishable
    @ReleaseIslamicM4
@Release

    #PMG-CAS-186539_20
  #FeatureID-ACAUTOCAS-15337
    @31MarFix
  Scenario Outline: ACAUTOCAS-16077: Validate invocation of bond cancellation API by clicking bond cancel button
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    And user fills credit approval stage
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on Move to Next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And user clicks on Move to Next stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    When Click Bond Cancel Button
    And user reads data from the excel file "post_approval.xlsx" under sheet "bondAllocation" and row 6
    Then Bond Cancel API should successfully get invoked and Success message should populate in Pnotify and get logged in Activity
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  @Perishable
    @ReleaseIslamicM4
@Release

  #PMG-CAS-186539_20
  #FeatureID-ACAUTOCAS-15337
    @31MarFix
  Scenario Outline: ACAUTOCAS-16078: Validate Cancel Bond Button after invocation of bond cancellation API
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    And user fills credit approval stage
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on Move to Next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And user clicks on Move to Next stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    When Click Bond Cancel Button
    Then Bond Cancel Button will be hidden
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  @Perishable
    @ReleaseIslamicM4
@Release

    #PMG-CAS-186539_20
  #FeatureID-ACAUTOCAS-15337
    @31MarFix
  Scenario Outline: ACAUTOCAS-16079: Validate Previous captured bond purchase and Transfer data
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    And user fills credit approval stage
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on Move to Next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And user clicks on Move to Next stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    When Click Bond Cancel Button
    Then previous captured bond purchase & transfer data will be removed
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  @BondExpired
    @ReleaseIslamicM4
@Release

    @Perishable
    #PMG-CAS-186539_22,CAS-186539_23
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16080: Validate bond cancel button in case bond expired after bond purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then Bond Cancel Button Should be present
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key    |
      | IPF         | indiv         | Post Approval    | Bonds    | Expire |

  @BondExpired
    @ReleaseIslamicM4
@Release

    @Perishable
    #PMG-CAS-186539_24
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16081: Validate performing Move to Next Stage without bond cancel
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When click on move to next stage
    Then Proper Validation should come for bond expired
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key    |
      | IPF         | indiv         | Post Approval    | Bonds    | Expire |

  @Perishable
    @ReleaseIslamicM4
@Release

      #PMG-CAS-186539_25,CAS-186539_35
  #FeatureID-ACAUTOCAS-15337
    @31MarFix
  Scenario Outline: ACAUTOCAS-16082: Validate bond cancellation button when application is sent back from rejection grid
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    When user rejects application
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    And user fills credit approval stage
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on Move to Next stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    Then Bond Cancel Button Should be present
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  @Perishable
    @ReleaseIslamicM4
@Release

    #PMG-CAS-186539_26
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16083: Validate bond cancellation API invocation on confirm application cancel
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user reads data from the excel file "cancel_application.xlsx" under sheet "cancel_application" and row 1
    When user searches application at "<ApplicationStage>" from Cancel Application option in Menu
    And user initiates cancellation for the searched application at "<ApplicationStage>"
    And user searches cancelled application for approval
    And user confirms the cancellation
    And user navigates to Applications manager
    And user search application in Application Manager
    And user reads data from the excel file "post_approval.xlsx" under sheet "bondAllocation" and row 1
    Then API success message should populate in Pnotify and get logged in Activity for Bond Cancellation Service
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  @Perishable
    @ReleaseBondManualConfig
    #PMG-CAS-186539_27
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16084: Validate bond cancellation in manual mode
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "post_approval.xlsx" under sheet "bondAllocation" and row 13
    And user fills all data in bond allocation
    And user saves the bond allocation details
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    When user fills credit approval stage with new Sanction Amount
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on Move to Next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And user clicks on Move to Next stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "post_approval.xlsx" under sheet "bondAllocation" and row 7
    Then Proper Validation should come at Bond Allocation Tab
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  @Perishable
    @ReleaseIslamicM4
@Release

    #PMG-CAS-186539_24,CAS-186539_27,CAS-186539-32
    #PMG-CAS-186539_29
  #FeatureID-ACAUTOCAS-15337
    @31MarFix
  Scenario Outline: ACAUTOCAS-16085: Validate Amount field data update after bond cancellation
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And save Amount from bond purchase and transfer section
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    When user fills credit approval stage with new Sanction Amount
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on Move to Next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And user clicks on Move to Next stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    And user opens bond allocation tab
    And Click Bond Cancel Button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then Bond Cancel Button will be visible with new Value in amount
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  @Perishable
    @ReleaseIslamicM4
@Release

    #PMG-CAS-186539_28
  #FeatureID-ACAUTOCAS-15337
    @31MarFix
  Scenario Outline: ACAUTOCAS-16086: Validate Amount field data update before bond cancellation
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And save Amount from bond purchase and transfer section
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    When user fills credit approval stage with new Sanction Amount
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on Move to Next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And user clicks on Move to Next stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    Then Bond Cancellation Button is visible along with previous data
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  @Perishable
    @ReleaseBondManualConfig
    #PMG-CAS-186539_30
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16087: Validate Amount field data update on re-save of bond allocation data
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user reads data from the excel file "post_approval.xlsx" under sheet "bondAllocation" and row 13
    And user fills all data in bond allocation
    And user saves the bond allocation details
    And save Amount from bond purchase and transfer section
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    When user fills credit approval stage with new Sanction Amount
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on Move to Next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And user clicks on Move to Next stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    And user opens bond allocation tab
    And user saves the bond allocation details
    Then Bond Cancel Button will be visible with new Value in amount
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  @BondExpired
    @Perishable
    @Deferred
    #PMG-CAS-186539_31
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16088: Validate bond cancel button when bond are expired on Disbursal
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 13
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user send back above application to "Post Approval" stage
    And user opens an application of "Post Approval" stage present in context from application grid
    When user opens bond allocation tab
    Then Bond Cancel Button Should be present
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key    |
      | IPF         | indiv         | Disbursal        | Bonds    | Expire |

  @Perishable
    @ReleaseIslamicM4
@Release

      #PQM-CAS-186539_21,CAS-186539_20,CAS-186539_29
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16089: Validate <fieldName> at Post Approval
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then "<fieldName>" Field should populate as per sanction amount in "<section>"
    Examples:
      | fieldName  | section       | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | Quantity   | Bond Purchase | IPF         | indiv         | Post Approval    | Bonds    |     |
      | Amount     | Bond Purchase | IPF         | indiv         | Post Approval    | Bonds    |     |
      | Unit Price | Bond Purchase | IPF         | indiv         | Post Approval    | Bonds    |     |
      | Quantity   | Bond Transfer | IPF         | indiv         | Post Approval    | Bonds    |     |
      | Amount     | Bond Transfer | IPF         | indiv         | Post Approval    | Bonds    |     |

  @Perishable
    @ReleaseIslamicM4
@Release

      #PQM-CAS-186539_24
  #FeatureID-ACAUTOCAS-15337
    @31MarFix
  Scenario Outline: ACAUTOCAS-16090: Validate Quantity after changing the data
    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 9
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And save Quantity from bond purchase and transfer section
    And user send back above application to "Credit Approval" stage
    And user opens an application from "Credit Approval" from its respective grid
    And user change Applicant Information details
    And user reads data from the excel file "credit_approval.xlsx" under sheet "kyc_details" and row 8
    And user navigates to view details
    And user fills kyc details at Credit Approval Stage
    When user fills credit approval stage with new Sanction Amount
    And user selects document tab
    And user submit the documents with wait
    And user switch and close next tab
    And user clicks on Move to Next stage
    And user verify application at "Reconsideration"
    And user opens an application of "Reconsideration" stage present in context from application grid
    And user clicks on Move to Next stage
    And user verify application at "Post Approval"
    And user opens an application of "Post Approval" stage present in context from application grid
    And Click Bond Cancel Button
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then Bond Cancel Button will be visible with new Value in Quantity
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  #PQM-CAS-186539_33
  @ReleaseIslamicM4
@Release

  #FeatureID-ACAUTOCAS-15337
  Scenario: ACAUTOCAS-16091: Bond Cancellation Button Authority
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to role master
    And user opens Role Master
    And user reads data from the excel file "commodity_master.xlsx" under sheet "home" and row 1
    And user fills mandatory fields in Role Master
    When user assign "CANCEL_BONDS" to user
    Then Role should be created with proper Message

   #PQM-CAS-186539_51
  @ReleaseIslamicM4
@Release

  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16092: Add Bond Allocation tab at Disbursal Stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then Bond Allocation tab should be visible
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  @BondExpired
    @ReleaseIslamicM4
@Release

    @Perishable
   #PQM-CAS-186539_52
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16093: Handle Bond Expiration and Cancellation at Disbursal
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then Bond Cancel Button Should be present
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key    |
      | IPF         | indiv         | Disbursal        | Bonds    | Expire |

  @Perishable
    @ReleaseIslamicM4
@Release

    #PQM-CAS-186539_53
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16094: Add service task at disbursal to initiate Bond Purchase and Transfer automatically
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user reads data from the excel file "post_approval.xlsx" under sheet "bondAllocation" and row 0
    Then API success message should populate in Pnotify and get logged in Activity
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key |
      | IPF         | indiv         | Post Approval    | Bonds    |     |

  @BondExpired
    @ReleaseIslamicM4
@Release

    @Perishable
   #PQM-CAS-186539_47
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16095: Verify application of Bonds for which cancel button is visible from Hold Grid
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user exits the Applicant Details
    And user holds the application from exit option
    And user opens hold pool
    And user search application in the hold application grid using context
    And user opens bond allocation tab
    Then Cancel button should not be visible from "<GridName>" Grid
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key    | GridName |
      | IPF         | indiv         | Post Approval    | Bonds    | Expire | Hold     |

  @BondExpired
    @ReleaseIslamicM4
@Release

    @Perishable
  #FeatureID-ACAUTOCAS-15337
  Scenario Outline: ACAUTOCAS-16096: Verify application of Bonds for which cancel button is visible from Enquiry Grid
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    When user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    And user opens bond allocation tab for Enquiry Grid
    Then Cancel button should not be visible from "<GridName>" Grid
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key    | GridName |
      | IPF         | indiv         | Disbursal        | Bonds    | Expire | Enquiry  |
