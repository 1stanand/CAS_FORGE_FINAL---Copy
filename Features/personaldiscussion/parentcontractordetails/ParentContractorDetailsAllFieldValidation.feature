@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Release2
@ImplementedBy-aman.nagarkoti
@ReviewedByDEV
 #FeatureID-ACAUTOCAS-285
Feature:All Field Validation Of Parent Contractor Details In Personal Discussion Page

  Scenario Outline: ACAUTOCAS-1972:  Entering <Validity> <Field_Name> <Validity_Reason> in parent contractor details in Personal Discussion Page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application of personal loan for individual
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fill sourcing details with "all" fields
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_parent_contractor_details>" and row <PersonalDiscussion_rowNum>
    When user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in parent contractor in personal discussion page
    Then application "<Throws_notThrows>" at "<Field_Name>" in parent contractor in personal discussion page

    Examples:
      | Validity | Field_Name     | Validity_Reason                        | Throws_notThrows                 | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PersonalDiscussionWB     | PersonalDiscussion_parent_contractor_details | PersonalDiscussion_rowNum |
      | valid    | Client Name    |                                        | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | parent_contractor_details                    | 0                         |
      | valid    | Client Name    | with space                             | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | parent_contractor_details                    | 1                         |
      | valid    | Annual Billing |                                        | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | parent_contractor_details                    | 2                         |
      | invalid  | Annual Billing | with more than 18 digit before decimal | throws a proper error message    | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | parent_contractor_details                    | 3                         |
      | invalid  | Annual Billing | with characters                        | throws a proper error message    | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | parent_contractor_details                    | 4                         |
      | invalid  | Annual Billing | with special characters                | throws a proper error message    | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | parent_contractor_details                    | 5                         |
      | invalid  | Annual Billing | with alphanumeric characters           | throws a proper error message    | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | parent_contractor_details                    | 6                         |
      | invalid  | Annual Billing | with space                             | throws a proper error message    | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | parent_contractor_details                    | 7                         |

    @LoggedBug
    Examples:
      | Validity | Field_Name  | Validity_Reason              | Throws_notThrows        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PersonalDiscussionWB     | PersonalDiscussion_parent_contractor_details | PersonalDiscussion_rowNum |
      | invalid  | client Name | with special character       | throws an error message | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | parent_contractor_details                    | 8                         |
      | invalid  | client Name | with alphanumeric characters | throws an error message | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | parent_contractor_details                    | 9                         |
      | invalid  | client Name | with only digits             | throws an error message | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | parent_contractor_details                    | 10                        |

