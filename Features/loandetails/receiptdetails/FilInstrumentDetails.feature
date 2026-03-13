@Epic-Loan_Application_Details
@AuthoredBy-ayush.garg
@ReviewedBy-None
@ImplementedBy-ayush.garg
@ReviewedByDEV
@Conventional
@Islamic
Feature: Fill instrument details in receipt details
@Sanity
  Scenario Outline: ACAUTOCAS-5798: Save instrument details in receipt details with <Mandatory_NonMandatory_Fields>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<LoanDetails_sourcingWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<LoanDetails_receiptWB>" under sheet "<LoanDetails_receipt>" and row <LoanDetails_receipt_rowNum>
    When user fills instrument details with "<Mandatory_NonMandatory_Fields>"
    Then instrument details should be saved successfully
    Examples:
      | Loan_Type | Mandatory_NonMandatory_Fields | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetails_sourcingWB | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | LoanDetails_receiptWB | LoanDetails_receipt | LoanDetails_receipt_rowNum |
      | Home Loan | mandatory fields only         | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx  | home                 | 33                          | receipt_details.xlsx  | home                | 29                         |
      | Home Loan | all fields                    | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx  | home                 | 33                          | receipt_details.xlsx  | home                | 29                         |
