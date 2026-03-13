@Epic-Notification
@PQMStory
@AuthoredBy-ayush.garg
@Islamic

Feature: Notification Resend

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#PQM-1_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16138:  Notification should be created successfully for single manual type attachment
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <RowNum>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification
    And user makes Attachment Option button as On
    When user create notification for single manual type attachment
    And user click on save and request approval
    And maker logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Notification Master Grid
    And user searches the created notification
    Then Notification should be created successfully
    Examples:
      | RowNum |
      | 1      |

#PQM-2_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16139:  Notification should be created successfully for single upload type attachment
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <RowNum>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification
    And user makes Attachment Option button as On
    When user create notification for single upload type attachment
    And user click on save and request approval
    And maker logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Notification Master Grid
    And user searches the created notification
    Then Notification should be created successfully
    Examples:
      | RowNum |
      | 1      |

#PQM-3_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16140:  Notification should be created successfully for single document type attachment
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <RowNum>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification
    And user makes Attachment Option button as On
    When user create notification for single document type attachment
    And user click on save and request approval
    And maker logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Notification Master Grid
    And user searches the created notification
    Then Notification should be created successfully
    Examples:
      | RowNum |
      | 1      |

#PQM-4_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16141:  Notification should be created successfully multiple manual type attachment
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <RowNum>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification
    And user makes Attachment Option button as On
    When user create notification for multiple manual type attachment
    And user click on save and request approval
    And maker logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Notification Master Grid
    And user searches the created notification
    Then Notification should be created successfully
    Examples:
      | RowNum |
      | 1      |

#PQM-5_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16142:  Notification should be created successfully multiple document type attachment
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <RowNum>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification
    And user makes Attachment Option button as On
    When user create notification for multiple document type attachment
    And user click on save and request approval
    And maker logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Notification Master Grid
    And user searches the created notification
    Then Notification should be created successfully
    Examples:
      | RowNum |
      | 1      |

#PQM-6_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16143:  Notification should be created successfully multiple upload type attachment
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <RowNum>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification
    And user makes Attachment Option button as On
    When user create notification for multiple upload type attachment
    And user click on save and request approval
    And maker logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Notification Master Grid
    And user searches the created notification
    Then Notification should be created successfully
    Examples:
      | RowNum |
      | 1      |

#PQM-7_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16144:  Notification should be created successfully multiple manual type attachment with upload type attachment
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <RowNum>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification
    And user makes Attachment Option button as On
    When user create notification for multiple manual type attachment with upload type attachment
    And user click on save and request approval
    And maker logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Notification Master Grid
    And user searches the created notification
    Then Notification should be created successfully
    Examples:
      | RowNum |
      | 1      |

#PQM-8_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16145:  Notification should be created successfully for multiple upload type attachment with document type attachment
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <RowNum>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification
    And user makes Attachment Option button as On
    When user create notification for multiple upload type attachment with document type attachment
    And user click on save and request approval
    And maker logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Notification Master Grid
    And user searches the created notification
    Then Notification should be created successfully
    Examples:
      | RowNum |
      | 1      |

#PQM-9_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16146:  Notification should be created successfully for multiple document type attachment with manual type attachment
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <RowNum>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification
    And user makes Attachment Option button as On
    When user create notification for multiple document type attachment with manual type attachment
    And user click on save and request approval
    And maker logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Notification Master Grid
    And user searches the created notification
    Then Notification should be created successfully
    Examples:
      | RowNum |
      | 1      |

#PQM-10_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16147:  Notification should be created successfully for multiple document type attachment manual type attachment with upload type attachment
    And user reads data from the excel file "Notification.xlsx" under sheet "notification_master" and row <RowNum>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user creates a new notification
    And user makes Attachment Option button as On
    When user create notification for multiple document type attachment manual type attachment with upload type attachment
    And user click on save and request approval
    And maker logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user navigates to Notification Master Grid
    And user searches the created notification
    Then Notification should be created successfully
    Examples:
      | RowNum |
      | 1      |

#PQM-12_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16148:  Sourcing details should be save successfully
    When user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    Then sourcing details should be saved successfully
    Examples:
      | Loan_Type        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Personal Finance | sourcing_details.xlsx | home                 | 33                          |

#PQM-13_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16149:  All notification which are mapped in sourcing save event should be visible in communication history with correct file name
    When user creates new application for "<Loan_Type>"
    And user opens communication tab
    Then all notification which are mapped in sourcing save event should be visible in communication history with correct file name
    Examples:
      | Loan_Type        |
      | Personal Finance |

#PQM-14_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16150:  New column Action should be present
    When user creates new application for "<Loan_Type>"
    And user opens communication tab
    Then new column Action should be present
    Examples:
      | Loan_Type        |
      | Personal Finance |


#PQM-15_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16225:  Resend button should be visible in action column
    When user creates new application for "<Loan_Type>"
    And user opens communication tab
    And user open communication tab and user has authority 'CAS_ADMIN' and 'APPLN_ADMIN'
    Then Resend button should be visible in action column
    Examples:
      | Loan_Type        |
      | Personal Finance |

#PQM-16_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16151:  Second column name should be Notification
    When user creates new application for "<Loan_Type>"
    And user opens communication tab
    Then second column name should be Notification
    Examples:
      | Loan_Type        |
      | Personal Finance |

#PQM-17_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16152:  Third column name should be Description Messages
    When user creates new application for "<Loan_Type>"
    And user opens communication tab
    Then third column name should be Description Messages
    Examples:
      | Loan_Type        |
      | Personal Finance |

#PQM-18_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16153:  NotificationDescription should be visible if it is maintained in master
    When user creates new application for "<Loan_Type>"
    And user opens communication tab
    Then notification Description should be visible
    Examples:
      | Loan_Type        |
      | Personal Finance |

#PQM-19_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16226:  In communication history notification should be visible
    Given Mapped notification at credit approval save decision event and approve it
    And user is on credit approval screen
    When User save decision of credit approval
    Then in communication history notification should be visible
    Examples:
      | Loan_Type        |
      | Personal Finance |

#PQM-20_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16227:  In communication history view more option should not be present
    Given user is on credit approval screen
    When User is not click on resend button
    Then In communication history view more option should not be present
    Examples:
      | Loan_Type        |
      | Personal Finance |

#PQM-22_CAS-206848
#FeatureID-ACAUTOCAS-15339
Scenario Outline:  Proper validation should come that Notification is already resent retry after next available time
    Given user is on credit approval screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When User is click on resend button again before resend time completion
    Then Proper validation should come that  "Notification is already resent, retry after {next available time}"

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#PQM-23_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16228:  Notification should again resend successfully
    Given user is on credit approval screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When User is click on resend button again after resend time completion
    Then Notification should again resend successfully

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#PQM-24_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16229:  In communication history view more option should  be present
    Given user is on credit approval screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When Notification is resend
    Then In communication history view more option should  be present

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Credit Approval"]}
#${ApplicantType:["indiv"]}
#PQM-25_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16230:  In communication history mode should be visible
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    Then in communication history mode should be visible

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Credit Approval"]}
#${ApplicantType:["indiv"]}
#PQM-26_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16231:  Resend button should not be visible in action column for resend notification
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    Then resend button should not be visible in action column for resend notification

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Credit Approval"]}
#${ApplicantType:["indiv"]}
#PQM-27_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16232:  view option should not be visible for resend notification
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    Then view option should not be visible for resend notification

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#PQM-28_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16233:  A list on communication trail should get opened
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    And click on view more
    Then A list on communication trail should get opened

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#PQM-29_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16234:  view more should change to show less
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "Credit Approval" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    And check history of orginal resent notification
    And A list on communication trail  get opened
    Then view more should change to show less

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#PQM-30_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16235:  A list on communication trail should get hidden
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "Credit Approval" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    When check history of orginal resent notification
    And Click on view more than click on show less
    Then A list on communication trail should get hidden

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#PQM-32_CAS-206848
#FeatureID-ACAUTOCAS-15339
Scenario Outline:  Proper validation should come that Notification is already resent retry after the time which is updated in data base
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "Credit Approval" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    When user click on resend button
    And notification is resend successfully than again click on resend button
    Then Proper validation should come that  "Notification is already resent, retry after the time which is updated in data base}"

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#PQM-36_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16236:  Notification should be present
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "Credit Approval" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    When user deletes notification which is already maintained in communication history
    And check in communication history
    Then Notification should be present

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#PQM-37_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16237:  Notification should be resend successfully
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "Credit Approval" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    When user click on resend button
    Then Notification should be resend successfully

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#PQM-38_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16238:  Notification history should be visible
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "Credit Approval" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    When user click on view more option
    Then Notification history should be visible

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


#${ProductType:["IPF"]}
#${ApplicationStage:["Credit Approval"]}
#${ApplicantType:["indiv"]}
#PQM-40_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16239:  Documents should be open successfully in email also
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user open document
    Then documents should be open successfully

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#PQM-41_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16236:  Notification should be present
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "Credit Approval" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    When user inactive notification which is already maintained in communication history
    And check in communication history
    Then Notification should be present
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#PQM-43_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16238:  Notification history should be visible
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "Credit Approval" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    When user click on view more option
    Then Notification history should be visible

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#PQM-46_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16240:   notification should not send
    Given user is on credit approval screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When User save decision of credit approval
    Then  notification should not send

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#${ProductType:["IPF"]}
#${ApplicationStage:["Credit Approval"]}
#${ApplicantType:["indiv"]}
#PQM-47_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @ReleaseIslamicM4
@Release

  @Perishable
    @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-16154:  In communication history notification should not be visible
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    Then in communication history notification should not be visible

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   |     |

#PQM-49_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16240:   notification should not send
    Given user is on credit approval screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When User save decision of credit approval
    Then  notification should not send

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#PQM-52_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16241:  password protected message should popup
    Given user is credit approval screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user try to open password protected documents
    Then password protected message should popup

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#PQM-53_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16242:  communication history should be in proper Order
    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "Credit Approval" for "<Category>" with "<Key>" from application grid
    And user opens communication tab
    Then communication history should be in proper Order

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#PQM-54_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16243:  Resend button should not be visible in action column
    Given user is credit approval screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user check resend button for already present notification in communication history
    Then Resend button should not be visible in action column

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#PQM-55_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16243:  Resend button should not be visible in action column
    Given user is credit approval screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user check resend button for sms notification in communication history
    Then Resend button should not be visible in action column

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#PQM-57_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16225:  Resend button should be visible in action column
    Given user is credit approval screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user checks resend button for added email type notification from add communication details
    Then Resend button should be visible in action column

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#PQM-58_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16244:  Notification should be added in communication history
    Given user is credit approval screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user click on add communication details button
    And and add sms type notification and submit all the details
    Then Notification should be added in communication history
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#PQM-59_CAS-206848
#FeatureID-ACAUTOCAS-15339
  Scenario Outline: ACAUTOCAS-16243:  Resend button should not be visible in action column
    Given user is credit approval screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user checks resend button for added sms type notification from add communication details
    Then Resend button should not be visible in action column
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

