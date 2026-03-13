@Epic-Loan_Application_Details
@ReviewedBy-None
@ImplementedBy-aditya.tomar
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Release3
#FeatureID-ACAUTOCAS-285
Feature:Personal Discussion Details Validation In Personal Discussion Sales Page

  Scenario Outline: ACAUTOCAS-1976: Fill all personal discussion details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application of personal loan for individual
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fill sourcing details with "all" fields
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_residentaddress>" and row <PersonalDiscussion_rowNum>
    When user fills the current loan requirement details in personal discussion sales page
    Then current loan requirement details should save successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PersonalDiscussionWB     | PersonalDiscussion_residentaddress | PersonalDiscussion_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | current_loan_requirement           | 0                         |

