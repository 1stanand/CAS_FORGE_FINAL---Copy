@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Release2
@ImplementedBy-aman.nagarkoti
@ReviewedByDEV
#FeatureID-ACAUTOCAS-285
Feature:Parent Contractor Details Validation In Personal Discussion Sales Page
#compelete tab name- comments/major clients/parent contractor details
  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user create new application of personal loan for individual
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 0
    And user fills home page of personal information
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 15
    And user clicks on loan details tab
    And user fill sourcing details with "all" fields
    And user opens personal discussion tab

  Scenario Outline: ACAUTOCAS-1973: Fill all parent contractor details
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_parent_contractor_details>" and row <PersonalDiscussion_rowNum>
    When user fills the parent contractor details in personal discussion sales page
    Then parent contractor details should save successfully
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_parent_contractor_details | PersonalDiscussion_rowNum |
      | personal_discussion.xlsx | parent_contractor_details                    | 0                         |

  Scenario Outline: ACAUTOCAS-1974: Add multiple parent contractor details
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_parent_contractor_details>" and row <PersonalDiscussion_rowNum>
    When user fills the parent contractor details in personal discussion sales page <var> times
    Then parent contractor details should save successfully
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_parent_contractor_details | PersonalDiscussion_rowNum | var |
      | personal_discussion.xlsx | parent_contractor_details                    | 0                         | 2   |

  Scenario Outline: ACAUTOCAS-1975: Delete parent contractor details
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_parent_contractor_details>" and row <PersonalDiscussion_rowNum>
    When user fills the parent contractor details in personal discussion sales page
    And user deletes first parent contractor details
    Then parent contractor details are deleted successfully
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_parent_contractor_details | PersonalDiscussion_rowNum |
      | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
