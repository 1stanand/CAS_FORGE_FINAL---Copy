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
Feature:Office Address Details All Field Validation In Personal Discussion Sales Page

  Scenario Outline: ACAUTOCAS-1968:  Entering <Validity> <Field_Name> <Validity_Reason> in office address details in Personal Discussion Page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application of personal loan for individual
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on loan details tab
    And user fill sourcing details with "all" fields
    And user opens personal discussion tab
    And user reads data from the excel file "<PersonalDiscussionWB>" under sheet "<PersonalDiscussion_officeaddress>" and row <PersonalDiscussion_rowNum>
    When user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in office address in personal discussion page
    Then application "<Throws_notThrows>" at "<Field_Name>" in office address details in personal discussion

    Examples:
      | Validity | Field_Name                               | Validity_Reason     | Throws_notThrows                 | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PersonalDiscussionWB     | PersonalDiscussion_officeaddress | PersonalDiscussion_rowNum |
      | valid    | Office Address Where Customer is Visited |                     | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | office_address_details           | 0                         |
      | valid    | Office Address Where Customer is Visited | with maximum length | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | office_address_details           | 1                         |
      | valid    | Landmark                                 |                     | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | office_address_details           | 2                         |
      | valid    | Landmark                                 | with maximum length | does not throw any error message | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx | home                 | 15                          | personal_discussion.xlsx | office_address_details           | 3                         |
