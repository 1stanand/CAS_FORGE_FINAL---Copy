@Epic-Notification
@AuthoredBy-deep.maurya
@ImplementedBy-deep.maurya
@PQMStory
@Part-2

# ${ApplicantType:["indiv","nonindiv"]}
#StoryID:CAS-206848
Feature: Notification Resend Part-2

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0



     #FeatureID-ACAUTOCAS-11317,CAS-206848,# PQM-70_CAS-206848
  Scenario Outline: ACAUTOCAS-17444:<FieldName> should be present for Notification in customer communication history Details at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user click on the customer communication history section
    Then user should be able to see customer communication history details "<FieldName>" on "<ApplicationStage>"
    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
    Examples:
      | FieldName            | ProductType   | ApplicationStage   | Category | Key | ApplicantType   | FinalStage         |
      | Reports              | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Attachments          | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Mode                 | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Contacted By         | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Added By             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Added On             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Description/Messages | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Action               | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | History              | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Notification Name    | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
    @Islamic
    @Release
    # ${ProductType:["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | FieldName            | ProductType   | ApplicationStage   | Category   | Key             | ApplicantType   | FinalStage         |
      | Reports              | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Attachments          | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Mode                 | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Contacted By         | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Added By             | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Added On             | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Description/Messages | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Action               | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | History              | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Notification Name    | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Reports              | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Attachments          | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Mode                 | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Contacted By         | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Added By             | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Added On             | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Description/Messages | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Action               | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | History              | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Notification Name    | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Reports              | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Attachments          | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Mode                 | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Contacted By         | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Added By             | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Added On             | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Description/Messages | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Action               | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | History              | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Notification Name    | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
#    Examples:
#      | FieldName            | ProductType   | ApplicationStage   | Category | Key | ApplicantType   | FinalStage         |
#      | Reports              | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Attachments          | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Mode                 | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Contacted By         | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Added By             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Added On             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Description/Messages | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Action               | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | History              | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Notification Name    | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |




   #PQM-19_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @Perishable
  Scenario Outline: ACAUTOCAS-16226:In communication history notification should be visible after saving decision at <FinalStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user click on the customer communication history section
    And user saves customer communication history in context
    And user re-run the deviation policy
    And user is on conditions section in Credit Approval
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions on credit approval stage
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 0
    When user fills approval checklist with saving underwriter decision on credit approval
    And user clicks on close underwriter decision
    And user clicks on customer communication history at credit approval
    Then In communication history notification should be visible with "<FieldName>"
    @Islamic
    @Release
    # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | FieldName            | ProductType   | ApplicationStage   | Category | Key | ApplicantType   | FinalStage         |
      | Reports              | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Attachments          | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Mode                 | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Contacted By         | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Added By             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Added On             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Description/Messages | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Action               | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | History              | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
      | Notification Name    | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
    @Islamic
    @Release
    # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | FieldName            | ProductType   | ApplicationStage   | Category   | Key             | ApplicantType   | FinalStage         |
      | Reports              | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Attachments          | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Mode                 | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Contacted By         | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Added By             | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Added On             | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Description/Messages | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Action               | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | History              | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Notification Name    | <ProductType> | Reconsideration    | shares     | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | Reports              | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Attachments          | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Mode                 | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Contacted By         | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Added By             | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Added On             | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Description/Messages | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Action               | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | History              | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Notification Name    | <ProductType> | Reconsideration    | shares     | isDisbursal     | <ApplicantType> | Disbursal          |
      | Reports              | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Attachments          | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Mode                 | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Contacted By         | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Added By             | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Added On             | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Description/Messages | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Action               | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | History              | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
      | Notification Name    | <ProductType> | <ApplicationStage> | <Category> |                 | <ApplicantType> | <ApplicationStage> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | FieldName            | ProductType   | ApplicationStage   | Category | Key | ApplicantType   | FinalStage         |
#      | Reports              | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Attachments          | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Mode                 | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Contacted By         | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Added By             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Added On             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Description/Messages | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Action               | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | History              | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#      | Notification Name    | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |





    #PQM-20_CAS-206848
#FeatureID-ACAUTOCAS-15339
  @Perishable
  Scenario Outline: ACAUTOCAS-16227:In communication history view more option should not be present at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user re-run the deviation policy
    And user is on conditions section in Credit Approval
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions on credit approval stage
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 0
    When user fills approval checklist with saving underwriter decision on credit approval
    And user clicks on close underwriter decision
    And user click on the customer communication history section
    Then In communication history view more option should not be present
    @Islamic
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
    # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |


#FeatureID-ACAUTOCAS-15339
  @Release
Scenario Outline: ACAUTOCAS-18070:<FieldName> should be present in Notification Master for <Notification_Type>
    And user navigates to Notification Master Grid
    And user clicks on create notification button
    And user reads data from the excel file "<Notification_WB>" under sheet "<Notification_Sheet>" and row <Notification_Sheet_Row_No>
    When user selects Notification Type as "<Notification_Type>"
    Then "<FieldName>" should be present for "<Notification_Type>" in Notification Master
    @Islamic
    
    Examples:
      | Notification_Type | FieldName                         | Notification_WB   | Notification_Sheet  | Notification_Sheet_Row_No |
      | Push Notification | Notification Code                 | Notification.xlsx | notification_master | 10                        |
      | Email             | Notification Code                 | Notification.xlsx | notification_master | 1                         |
      | Sms               | Notification Code                 | Notification.xlsx | notification_master | 0                         |
      | WhatsApp          | Notification Code                 | Notification.xlsx | notification_master | 2                         |
      | Push Notification | Notification Name                 | Notification.xlsx | notification_master | 10                        |
      | Email             | Notification Name                 | Notification.xlsx | notification_master | 1                         |
      | Sms               | Notification Name                 | Notification.xlsx | notification_master | 0                         |
      | WhatsApp          | Notification Name                 | Notification.xlsx | notification_master | 2                         |
      | Push Notification | Notification Description          | Notification.xlsx | notification_master | 10                        |
      | Email             | Notification Description          | Notification.xlsx | notification_master | 1                         |
      | Sms               | Notification Description          | Notification.xlsx | notification_master | 0                         |
      | Push Notification | Customer Communication            | Notification.xlsx | notification_master | 10                        |
      | Email             | Customer Communication            | Notification.xlsx | notification_master | 1                         |
      | Sms               | Customer Communication            | Notification.xlsx | notification_master | 0                         |
      | WhatsApp          | Customer Communication            | Notification.xlsx | notification_master | 2                         |
      | Push Notification | Track Delivery Status             | Notification.xlsx | notification_master | 10                        |
      | Email             | Track Delivery Status             | Notification.xlsx | notification_master | 1                         |
      | Sms               | Track Delivery Status             | Notification.xlsx | notification_master | 0                         |
      | WhatsApp          | Track Delivery Status             | Notification.xlsx | notification_master | 2                         |
      | Push Notification | Track Read Status                 | Notification.xlsx | notification_master | 10                        |
      | Email             | Track Read Status                 | Notification.xlsx | notification_master | 1                         |
      | Sms               | Track Read Status                 | Notification.xlsx | notification_master | 0                         |
      | WhatsApp          | Track Read Status                 | Notification.xlsx | notification_master | 2                         |
      | Email             | Inline Text                       | Notification.xlsx | notification_master | 1                         |
      | Email             | Upload Body                       | Notification.xlsx | notification_master | 1                         |
      | Email             | Subject                           | Notification.xlsx | notification_master | 1                         |
      | Email             | Email Body                        | Notification.xlsx | notification_master | 1                         |
      | Email             | Attachment Option                 | Notification.xlsx | notification_master | 1                         |
      | Push Notification | Text                              | Notification.xlsx | notification_master | 10                        |
      | Sms               | External Template Registration ID | Notification.xlsx | notification_master | 0                         |
      | Warning Message   | Notification Code                 | Notification.xlsx | notification_master | 11                        |
      | Warning Message   | Notification Name                 | Notification.xlsx | notification_master | 11                        |
      | Warning Message   | Notification Description          | Notification.xlsx | notification_master | 11                        |
      | Warning Message   | Text                              | Notification.xlsx | notification_master | 11                        |



   # PQM-69_CAS-206848
  @Perishable
Scenario Outline: ACAUTOCAS-18071:Application should be copy successfully at <FinalStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to copy application screen
    And user searches the particular application in copy application screen
    And user reads data from the excel file "copy_application.xlsx" under sheet "home" and row 32
    When user copy the application
    Then Application should be copy successfully
    @Islamic
    @Release
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   | FinalStage         |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
    @Islamic
    @Release
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key             | ApplicantType   | FinalStage         |
      | <ProductType> | <ApplicationStage> |          | isPost Approval | <ApplicantType> | POST APPROVAL      |
      | <ProductType> | <ApplicationStage> |          | isDisbursal     | <ApplicantType> | Disbursal          |
      | <ProductType> | <ApplicationStage> |          |                 | <ApplicantType> | <ApplicationStage> |
#
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   | FinalStage         |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> | <ApplicationStage> |
#
#

   # PQM-66_CAS-206848
Scenario Outline: ACAUTOCAS-18072:Resend button should not be present at <ApplicationStage> while application will open from enquiry
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens an "<ProductType>" application at "<ApplicationStage>" stage from enquiry screen
    When user click on the customer communication history section
    Then Resend button should not be present in communication history
    @Islamic
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
#
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#



   # PQM-65_CAS-206848
Scenario Outline: ACAUTOCAS-18073:Resend button should not be present while open application form hold screen
    And Hold application from credit approval
    And User is on hold screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When Check resend button communication history
    Then Resend button should not be present
    @Islamic
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |

## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#



   # PQM-63_CAS-206848
Scenario Outline: ACAUTOCAS-18074: Resend button should not be visible in action column
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user open communication tab and user has not authority of 'CAS_ADMIN' and 'APPLN_ADMIN'
    Then Resend button should not be visible in action column
    @Islamic
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Sourcing"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |

## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Sourcing"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |




   # PQM-67_CAS-206848
Scenario Outline: ACAUTOCAS-18075: Resend button should be clickable
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When Check resend button communication history
    Then Resend button should be clickable
    @Islamic
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sent to ops"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
#  ${ApplicationStage:["Sent to ops"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
##  ${ApplicationStage:["Sent to ops"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#


   # PQM-62_CAS-206848
Scenario Outline: ACAUTOCAS-18076:Single notification should send
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When User double click on resemd button
    Then Single notification should send
    @Islamic
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#


   # PQM-61_CAS-206848
Scenario Outline: ACAUTOCAS-18077: searching sorting should work in communication history;
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When User checks searching sorting in communication history
    Then searching sorting "<Action>" work in communication history for "<FieldName>"
    @Islamic
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
    Examples:
      | FieldName            | Action     | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | Reports              | Should not | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
      | Attachments          | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
      | Mode                 | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
      | Contacted By         | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
      | Added By             | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
      | Added On             | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
      | Description/Messages | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
      | Action               | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
      | History              | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
      | Notification Name    | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
    # ${ProductType:["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | FieldName            | Action     | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | Reports              | Should not | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
      | Attachments          | Should     | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
      | Mode                 | Should     | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
      | Contacted By         | Should     | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
      | Added By             | Should     | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
      | Added On             | Should     | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
      | Description/Messages | Should     | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
      | Action               | Should     | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
      | History              | Should     | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
      | Notification Name    | Should     | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","POST APPROVAL","Disbursal"]}
#    Examples:
#      | FieldName            | Action     | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | Reports              | Should not | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#      | Attachments          | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#      | Mode                 | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#      | Contacted By         | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#      | Added By             | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#      | Added On             | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#      | Description/Messages | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#      | Action               | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#      | History              | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#      | Notification Name    | Should     | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#


   # PQM-59_CAS-206848
Scenario Outline: ACAUTOCAS-18074: Resend button should not be visible in action column
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user checks resend button for added sms type notification from add communication details
    Then Resend button should not be visible in action column
    @Islamic
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#


   # PQM-58_CAS-206848,# PQM-56_CAS-206848
Scenario Outline: ACAUTOCAS-18078: Notification should be added in communication history
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user click on add communication details button
    And and add "<Notification_Type>" and submit all the details
    Then Notification should be added in communication history
    @Islamic
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | Notification_Type | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | Sms               | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
      | Email             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | Notification_Type | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | Sms               | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
      | Email             | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | Notification_Type | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | Sms               | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#      | Email             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |



   # PQM-55_CAS-206848
Scenario Outline: ACAUTOCAS-18074: Resend button should not be visible in action column
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user check resend button for "<Notification_Type>" in communication history
    Then Resend button should not be visible in action column
    @Islamic
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | Notification_Type | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | Sms               | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
      | Email             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | Notification_Type | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | Sms               | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
      | Email             | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | Notification_Type | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | Sms               | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#      | Email             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |

     # PQM-57_CAS-206848
Scenario Outline: ACAUTOCAS-18074: Resend button should not be visible in action column
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user checks resend button for added email type notification from add communication details
    Then Resend button should be visible in action column
    @Islamic
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | Notification_Type | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | Sms               | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
      | Email             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | Notification_Type | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | Sms               | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
      | Email             | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | Notification_Type | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | Sms               | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#      | Email             | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |






   # PQM-53_CAS-206848
Scenario Outline: ACAUTOCAS-18079: communication history should be in proper Order
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user check order of resend notification in communication history
    Then communication history should be in proper Order
    @Islamic
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#


   # PQM-52_CAS-206848
Scenario Outline: ACAUTOCAS-18080:password protected message should popup
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user try to open password protected documents
    Then password protected message should popup
    @Islamic
  # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#


   # PQM-50_CAS-206848, # PQM-47_CAS-206848
  @NotImplemented
Scenario Outline: ACAUTOCAS-18081: In communication history notification should not be visible
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When User open communication history
    Then In communication history notification should not be visible
  @Islamic
 # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#



    #Duplicate
   # PQM-43_CAS-206848, # PQM-38_CAS-206848
  @NotImplemented
Scenario Outline: ACAUTOCAS-18082: Notification history should be visible
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user click on view more option
    Then Notification history should be visible
  @Islamic
 # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |





    #Dulplicate
   # PQM-42_CAS-206848,# PQM-37_CAS-206848
  @NotImplemented
Scenario Outline: ACAUTOCAS-18083: Notification should be resend successfully
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user click on resend button
    Then Notification should be resend successfully
  @Islamic
# ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |



   # PQM-32_CAS-206848,# PQM-22_CAS-206848,# PQM-23_CAS-206848
  @NotImplemented
  Scenario Outline: Proper validation should come that "Notification is already resent, retry after the time which is updated in data base}"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user click on resend button
    And notification is resend successfully than again click on resend button
    Then Proper validation should come that "Notification is already resent, retry after the time which is updated in data base}"
    @Islamic
# ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#


   # PQM-30_CAS-206848
  @NotImplemented
Scenario Outline: ACAUTOCAS-18084: A list on communication trail should get hidden
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user re-run the deviation policy
    And user is on conditions section in Credit Approval
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions on credit approval stage
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 0
    And user fills approval checklist with saving underwriter decision on credit approval
    And user click on the customer communication history section
    And User clicks on resend button
    And user clicks on View More in History column
    And user saves customer communication history in context
    When user clicks on show less in communication history
    Then A list on communication trail should get hidden
  @Islamic
   # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#


   # PQM-29_CAS-206848
  @NotImplemented
Scenario Outline: ACAUTOCAS-18085: view more should change to show less
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user re-run the deviation policy
    And user is on conditions section in Credit Approval
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions on credit approval stage
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 0
    And user fills approval checklist with saving underwriter decision on credit approval
    And user click on the customer communication history section
    And User clicks on resend button
    When user clicks on View More in History column
    Then view more should change to show less
  @Islamic
 # ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#


   # PQM-27_CAS-206848
  @NotImplemented
Scenario Outline: ACAUTOCAS-18086:View option should not be visible for resend notification
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user re-run the deviation policy
    And user is on conditions section in Credit Approval
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions on credit approval stage
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 0
    And user fills approval checklist with saving underwriter decision on credit approval
    When user click on the customer communication history section
    Then view option should not be visible for resend notification
  @Islamic
# ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#
#


   # PQM-26_CAS-206848
  @NotImplemented
Scenario Outline: ACAUTOCAS-18087:Resend button should not be visible in action column for resend notification
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user re-run the deviation policy
    And user is on conditions section in Credit Approval
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions on credit approval stage
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 0
    And user fills approval checklist with saving underwriter decision on credit approval
    When user click on the customer communication history section
    Then Resend button should not be visible in action column
  @Islamic
# ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |


   # PQM-21_CAS-206848,# PQM-37_CAS-206848
  @NotImplemented
Scenario Outline: ACAUTOCAS-18088:Notification resend on credit approval
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user re-run the deviation policy
    And user is on conditions section in Credit Approval
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions on credit approval stage
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 0
    And user fills approval checklist with saving underwriter decision on credit approval
    And user click on the customer communication history section
    When User clicks on resend button
    Then Notification should be resend successfully
    @Islamic
# ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |



   # PQM-24_CAS-206848
  @NotImplemented
Scenario Outline: ACAUTOCAS-18089: In communication history view more option should be present
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user re-run the deviation policy
    And user is on conditions section in Credit Approval
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions on credit approval stage
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 0
    And user fills approval checklist with saving underwriter decision on credit approval
    And user click on the customer communication history section
    When User clicks on resend button
    Then In communication history view more option should not be present
    @Islamic
# ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |



   # PQM-20_CAS-206848
  @NotImplemented
Scenario Outline: ACAUTOCAS-18090: In communication history view more option should not be present
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user re-run the deviation policy
    And user is on conditions section in Credit Approval
    And user reads data from the excel file "conditions.xlsx" under sheet "security_conditions" and row 0
    And user fills all mandatory fields required for security conditions on credit approval stage
    And user reads data from the excel file "credit_approval_end_flow.xlsx" under sheet "underwriter_decision" and row 0
    And user fills approval checklist with saving underwriter decision on credit approval
    When user click on the customer communication history section
    Then In communication history view more option should not be present
    @Islamic
# ${ProductType:["IAF","IHF"]}
# ${ApplicationStage:["Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Islamic
     # ${ProductType:["IPF"]}
# ${ApplicationStage:["Credit Approval"]}
# ${Category:["bonds","metals","shares"]}
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> | <Category> |     | <ApplicantType> |
    
## ${ProductType : ["PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Credit Approval"]}
#    Examples:
#      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
#      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
#














