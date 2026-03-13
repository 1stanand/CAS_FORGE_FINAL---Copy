@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Release2
@ImplementedBy-aman.nagarkoti
@ReviewedByDEV
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-285
Feature:All Field Validation Of Interviewer Comments In Personal Discussion Page

  Scenario Outline: ACAUTOCAS-1966:  Entering <Validity> <Field_Name> <Validity_Reason> in interviewer comments in Personal Discussion Page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application of personal loan for individual
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fill sourcing details with "all" fields
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_interviewercomments>" and row <PersonalDiscussion_rowNum>
    When user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in interviewer comments in personal discussion page
    Then application "<Throws_notThrows>" at "<Field_Name>" in interviewer comments in personal discussion

    Examples:
      | Validity | Field_Name   | Validity_Reason             | Throws_notThrows                 | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalDiscussionWB     | PersonalDiscussion_interviewercomments | PersonalDiscussion_rowNum |
      | valid    | Interviewer  |                             | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | interviewer_comments                   | 0                         |
      | valid    | Employee No. |                             | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | interviewer_comments                   | 1                         |
      | valid    | Signature    |                             | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | interviewer_comments                   | 2                         |
      | valid    | Date         |                             | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | interviewer_comments                   | 3                         |
      | invalid  | Date         | with more than current date | throws a proper error message    | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | interviewer_comments                   | 4                         |
      | invalid  | Date         | with year less than 1942    | throws a proper error message    | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | interviewer_comments                   | 5                         |
