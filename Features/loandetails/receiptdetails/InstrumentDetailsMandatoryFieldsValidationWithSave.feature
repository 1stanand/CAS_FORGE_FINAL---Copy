@Epic-Loan_Application_Details
@AuthoredBy-ayush.garg
@ReviewedBy-None
@ImplementedBy-ayush.garg
@Release1
@ReviewedByDEV
@Conventional
@Islamic
Feature: Instrument mandatory field validation with save in loan detail page

  Scenario Outline: ACAUTOCAS-5799:  Fill instrument details in receipt details without <Field_Name>

    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<LoanDetails_receiptWB>" under sheet "<LoanDetails_receipt>" and row <LoanDetails_receipt_rowNum>
    When user fills instrument details without "<Field_Name>"
    Then instrument details should not be saved
    Examples:
      | Loan_Type | Field_Name        | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetails_receiptWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Home Loan | Payment Mode      | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 1                          | sourcing_details.xlsx | home                 | 33                          |
      | Home Loan | Received From     | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 2                          | sourcing_details.xlsx | home                 | 33                          |
      | Home Loan | Receipt Date      | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 3                          | sourcing_details.xlsx | home                 | 33                          |
      | Home Loan | Receipt Amount    | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 4                          | sourcing_details.xlsx | home                 | 33                          |
      | Home Loan | Instrument Number | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 5                          | sourcing_details.xlsx | home                 | 33                          |
      | Home Loan | Instrument Date   | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 6                          | sourcing_details.xlsx | home                 | 33                          |
      | Home Loan | Bank Name         | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 7                          | sourcing_details.xlsx | home                 | 33                          |

