@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Release2
@ImplementedBy-aman.nagarkoti
@ReviewedByDEV
#FeatureID-ACAUTOCAS-285
Feature:Other Business Details Validation In Personal Discussion Sales Page

  Scenario Outline: ACAUTOCAS-1971: Fill all Other Business details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application of personal loan for individual
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fill sourcing details with "all" fields
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_otherbusiness>" and row <PersonalDiscussion_rowNum>
    When user fills the other business details in personal discussion sales page
    Then Other business details should be saved successfully

    Examples:
      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalDiscussionWB     | PersonalDiscussion_otherbusiness | PersonalDiscussion_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | other_business_details           | 0                         | sourcing_details.xlsx | home                 | 15                          |
