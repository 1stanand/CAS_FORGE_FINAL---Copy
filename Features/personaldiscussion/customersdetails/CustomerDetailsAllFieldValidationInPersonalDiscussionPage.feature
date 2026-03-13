@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Release2
@ImplementedBy-aman.nagarkoti
@ReviewedByDev
@Conventional

#FeatureID-ACAUTOCAS-285
Feature:All Field Validation Of Customer Details In Personal Discussion Page

  Scenario Outline: ACAUTOCAS-1961:  Entering <Validity> <Field_Name> <Validity_Reason> in customer details in Personal Discussion Page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application of personal loan for individual
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fill sourcing details with "all" fields
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_home>" and row <PersonalDiscussion_rowNum>
    When user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in customers details in personal discussion page
    Then application "<Throws_notThrows>" at "<Field_Name>" in customer details in personal discussion

    Examples:
      | Validity | Field_Name     | Validity_Reason     | Throws_notThrows                 | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PersonalDiscussionWB     | PersonalDiscussion_home | PersonalDiscussion_rowNum |
      | valid    | Applicant Name |                     | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | customers_detail        | 0                         |
      | valid    | Applicant Name | with maximum length | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | customers_detail        | 1                         |
      | valid    | Applicant Name | with space          | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | customers_detail        | 5                         |
      | valid    | Location       |                     | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | customers_detail        | 6                         |
      | valid    | Location       | with maximum length | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | customers_detail        | 7                         |
      | valid    | Business Name  |                     | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | customers_detail        | 8                         |
      | valid    | Business Name  | with maximum length | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | customers_detail        | 9                         |

    @LoggedBug
    Examples:
      | Validity | Field_Name     | Validity_Reason              | Throws_notThrows        | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PersonalDiscussionWB     | PersonalDiscussion_home | PersonalDiscussion_rowNum |
      | invalid  | Applicant Name | with special character       | throws an error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | customers_detail        | 2                         |
      | invalid  | Applicant Name | with numbers                 | throws an error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | customers_detail        | 3                         |
      | invalid  | Applicant Name | with alphanumeric characters | throws an error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | customers_detail        | 4                         |
