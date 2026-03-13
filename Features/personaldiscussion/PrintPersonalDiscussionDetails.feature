@Epic-Loan_Application_Details
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Perishable
@ImplementedBy-akash.bansal
@ReleaseLoanAppM5
@Release3
#FeatureID-ACAUTOCAS-285
Feature:Print Personal Discussion Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#${ProductType:["MAL","CV","CEQ","FE"]}
# ${ApplicationStage:["DDE","Recommendation","Reconsideration"]}
  Scenario Outline: ACAUTOCAS-1977: Validating print button of personal discussion page
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "customers_detail" and row 0
    And user fills the customer details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "office_address_details" and row 0
    And user fills the office address details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "customers_officebusinessdetails" and row 82
    And user fills the customers office business details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "residential_address" and row 0
    And user fills the residential address details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "current_loan_requirement" and row 0
    And user fills the current loan requirement details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "parent_contractor_details" and row 0
    And user fills the parent contractor details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "other_business_details" and row 0
    And user fills the other business details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "interviewer_comments" and row 0
    And user fills the interviewers comments in personal discussion sales page
    And user saves personal discussion details
    When user print personal discussion details
    Then printing detail page should be displayed
    Examples:
      | ProductType   | ApplicationStage   | Category | key | ApplicantType | PersonalDiscussionWB     |
      | <ProductType> | <ApplicationStage> |          |     | indiv         | personal_discussion.xlsx |

#${ProductType:["MAL","CV","CEQ","FE"]}
# ${ApplicationStage:["DDE","Recommendation","Reconsideration"]}
  Scenario Outline: ACAUTOCAS-1978: Validating <Details> on printing personal discussion details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "customers_detail" and row 0
    And user fills the customer details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "office_address_details" and row 0
    And user fills the office address details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "customers_officebusinessdetails" and row 82
    And user fills the customers office business details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "residential_address" and row 0
    And user fills the residential address details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "current_loan_requirement" and row 0
    And user fills the current loan requirement details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "parent_contractor_details" and row 0
    And user fills the parent contractor details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "other_business_details" and row 0
    And user fills the other business details in personal discussion sales page
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "interviewer_comments" and row 0
    And user fills the interviewers comments in personal discussion sales page
    And user saves personal discussion details
    When user print personal discussion details
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_sheet>" and row <PersonalDiscussion_rowNum>
    Then "<Details>" should come as per personal discussion details
    Examples:
      | Details                           | PersonalDiscussionWB     | PersonalDiscussion_sheet        | PersonalDiscussion_rowNum | ApplicantType | ProductType   | ApplicationStage   | Category | key |
      | Customers Detail                  | personal_discussion.xlsx | customers_detail                | 0                         | indiv         | <ProductType> | <ApplicationStage> |          |     |
      | Office Address Details            | personal_discussion.xlsx | office_address_details          | 0                         | indiv         | <ProductType> | <ApplicationStage> |          |     |
      | Customers Office Business Details | personal_discussion.xlsx | customers_officebusinessdetails | 82                        | indiv         | <ProductType> | <ApplicationStage> |          |     |
      | Residential Address Details       | personal_discussion.xlsx | residential_address             | 0                         | indiv         | <ProductType> | <ApplicationStage> |          |     |
      | Current Loan Requirement Details  | personal_discussion.xlsx | current_loan_requirement        | 0                         | indiv         | <ProductType> | <ApplicationStage> |          |     |
      | Parent Contractor Details         | personal_discussion.xlsx | parent_contractor_details       | 0                         | indiv         | <ProductType> | <ApplicationStage> |          |     |
      | Interviewer Comments              | personal_discussion.xlsx | interviewer_comments            | 0                         | indiv         | <ProductType> | <ApplicationStage> |          |     |
      | Application Id                    | personal_discussion.xlsx | customers_detail                | 0                         | indiv         | <ProductType> | <ApplicationStage> |          |     |

