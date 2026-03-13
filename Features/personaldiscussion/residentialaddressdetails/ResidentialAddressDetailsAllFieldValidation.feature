@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Release2
@ImplementedBy-aman.nagarkoti
@ReviewedByDEV
#FeatureID-ACAUTOCAS-285
Feature:Residential Address Details All Field Validation In Personal Discussion Sales Page

  Scenario Outline: ACAUTOCAS-1979:  Entering <Validity> <Field_Name> <Validity_Reason> in residential address details in Personal Discussion Page
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
    When user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in residential address details in personal discussion page
    Then application "<Throws_notThrows>" at "<Field_Name>" in residential address details in personal discussion

    Examples:
      | Validity | Field_Name                   | Validity_Reason     | Throws_notThrows                 | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalDiscussionWB     | PersonalDiscussion_residentaddress | PersonalDiscussion_rowNum |
      | valid    | Current Residential Address  |                     | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | residential_address                | 0                         |
      | valid    | Current Residential Address  | with maximum length | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | residential_address                | 1                         |
      | valid    | Current Residence Landmark   |                     | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | residential_address                | 2                         |
      | valid    | Current Residence Landmark   | with maximum length | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | residential_address                | 3                         |
      | valid    | Permanent Address            |                     | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | residential_address                | 4                         |
      | valid    | Permanent Address            | with maximum length | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | residential_address                | 5                         |
      | valid    | Permanent Residence Landmark |                     | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | residential_address                | 6                         |
      | valid    | Permanent Residence Landmark | with maximum length | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 15                          | personal_information.xlsx | home              | 0                        | personal_discussion.xlsx | residential_address                | 7                         |
