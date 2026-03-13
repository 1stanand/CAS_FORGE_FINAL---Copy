@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Release2
@ImplementedBy-aman.nagarkoti
@ReviewedByDev
@Conventional

  #FeatureID-ACAUTOCAS-285
Feature:Customer Details Validation In Personal Discussion Sales Page

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

    @Sanity
  Scenario Outline: ACAUTOCAS-1962: Fill all customer details
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_home>" and row <PersonalDiscussion_rowNum>
    When user fills the customer details in personal discussion sales page
    Then customer details should be saved successfully
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_home | PersonalDiscussion_rowNum |
      | personal_discussion.xlsx | customers_detail        | 0                         |

  Scenario Outline: ACAUTOCAS-1963: Add multiple customer details
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_home>" and row <PersonalDiscussion_rowNum>
    When user fills the customer details in personal discussion sales page <var> times
    Then customer details should be saved successfully
    Examples:
      | PersonalDiscussionWB     | PersonalDiscussion_home | PersonalDiscussion_rowNum | var |
      | personal_discussion.xlsx | customers_detail        | 0                         | 2   |
