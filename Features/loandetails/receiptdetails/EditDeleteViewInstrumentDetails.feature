@Epic-Loan_Application_Details
@AuthoredBy-ayush.garg
@ReviewedBy-None
@ImplementedBy-ayush.garg
@Release2
@ReviewedByDEV
@Conventional
@Islamic

Feature: Delete instrument details in receipt details


  Scenario Outline:ACAUTOCAS-5804: <Var> instrument details in receipt details with <Mandatory_NonMandatory_Fields>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<LoanDetails_sourcingWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<LoanDetails_receiptWB>" under sheet "<LoanDetails_receipt>" and row <LoanDetails_receipt_rowNum>
    And user fills "<Mandatory_NonMandatory_Fields>" in instrument details
    When user "<Action>" instrument details
    Then instrument details should be "<Result>" successfully
    Examples:
      | Loan_Type | Mandatory_NonMandatory_Fields | Action  | Result    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | SourceDataFile       | SheetName | RowNumber | LoanDetails_receiptWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | LoanDetails_sourcingWB | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Home Loan | all fields                    | deletes | deleted   | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | home                 | 33                          |
      | Home Loan | mandatory fields only         | deletes | deleted   | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | home                 | 33                          |
      | Home Loan | mandatory fields only         | views   | displayed | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | home                 | 33                          |
      | Home Loan | all fields                    | views   | displayed | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | home                 | 33                          |


  Scenario Outline:ACAUTOCAS-5805: <Var> in instrument details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<LoanDetails_sourcingWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<LoanDetails_receiptWB>" under sheet "<LoanDetails_receipt>" and row <LoanDetails_receipt_rowNum>
    And user fills instrument details with all fields
    When user edits "<Action>" instrument details
    Then "<Action>" instrument details should be updated successfully
    Examples:
      | Loan_Type | Mandatory_NonMandatory_Fields | Action               | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | SourceDataFile       | SheetName | RowNumber | LoanDetails_receiptWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | LoanDetails_sourcingWB | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Home Loan | all fields                    | receipt number in    | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | home                 | 33                          |
      | Home Loan | all fields                    | receipt date in      | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | home                 | 33                          |
      | Home Loan | all fields                    | receipt amount in    | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | home                 | 33                          |
      | Home Loan | all fields                    | instrument number in | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | home                 | 33                          |
      | Home Loan | all fields                    | instrument date in   | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | home                 | 33                          |
      | Home Loan | all fields                    | description in       | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | home                 | 33                          |
      | Home Loan | all fields                    | payment mode in      | personal_information.xlsx | home              | 0                        | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | home                 | 33                          |
