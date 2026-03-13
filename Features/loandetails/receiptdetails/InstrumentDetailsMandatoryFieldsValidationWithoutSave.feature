@Epic-Loan_Application_Details
@AuthoredBy-ayush.garg
@ReviewedBy-None
@ImplementedBy-ayush.garg
@Release2
@ReviewedByDEV
@Conventional
@Islamic
Feature: Instrument details field validation without save in loan detail page

  Scenario Outline: ACAUTOCAS-5684: Add receipt number <InputType> in instrument details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<LoanDetails_sourcingWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<LoanDetails_receiptWB>" under sheet "<LoanDetails_receipt>" and row <LoanDetails_receipt_rowNum>
    When user adds receipt number "<InputType>"
    Then instrument details should "<Result>"
    Examples:
      | Loan_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetails_receiptWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | LoanDetails_sourcingWB | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | InputType                                 | Result                |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 8                          | sourcing_details.xlsx  | home                 | 33                          | in correct format                         | be saved successfully |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 9                          | sourcing_details.xlsx  | home                 | 33                          | with characters                           | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 10                         | sourcing_details.xlsx  | home                 | 33                          | with special characters                   | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 11                         | sourcing_details.xlsx  | home                 | 33                          | with combination of characters and digits | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 12                         | sourcing_details.xlsx  | home                 | 33                          | with white space                          | not be saved          |

  Scenario Outline: ACAUTOCAS-5685: Add instrument Number <InputType> in instrument details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<LoanDetails_sourcingWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<LoanDetails_receiptWB>" under sheet "<LoanDetails_receipt>" and row <LoanDetails_receipt_rowNum>
    When user adds instrument number "<InputType>"
    Then instrument details should "<Result>"
    Examples:
      | Loan_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetails_receiptWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | LoanDetails_sourcingWB | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | InputType                                 | Result                |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 13                         | sourcing_details.xlsx  | home                 | 33                          | in correct format                         | be saved successfully |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 14                         | sourcing_details.xlsx  | home                 | 33                          | with characters                           | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 15                         | sourcing_details.xlsx  | home                 | 33                          | with special characters                   | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 16                         | sourcing_details.xlsx  | home                 | 33                          | with combination of characters and digits | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 17                         | sourcing_details.xlsx  | home                 | 33                          | with white space                          | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 18                         | sourcing_details.xlsx  | home                 | 33                          | with more than max allowed size           | not be saved          |

  Scenario Outline: ACAUTOCAS-5686: Add receipt date <InputType> in instrument details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<LoanDetails_sourcingWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<LoanDetails_receiptWB>" under sheet "<LoanDetails_receipt>" and row <LoanDetails_receipt_rowNum>
    When user adds receipt date "<InputType>"
    Then instrument details should "<Result>"
    Examples:
      | Loan_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetails_receiptWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | LoanDetails_sourcingWB | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | InputType                                | Result                |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 19                         | sourcing_details.xlsx  | home                 | 33                          | in correct format                        | be saved successfully |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 20                         | sourcing_details.xlsx  | home                 | 33                          | with character                           | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 21                         | sourcing_details.xlsx  | home                 | 33                          | with special character                   | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 22                         | sourcing_details.xlsx  | home                 | 33                          | with combination of character and digits | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 23                         | sourcing_details.xlsx  | home                 | 33                          | with space                               | not be saved          |

  Scenario Outline: ACAUTOCAS-5687: Add instrument date <InputType> in instrument details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<LoanDetails_sourcingWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<LoanDetails_receiptWB>" under sheet "<LoanDetails_receipt>" and row <LoanDetails_receipt_rowNum>
    When user adds instrument date "<InputType>"
    Then instrument details should "<Result>"
    Examples:
      | Loan_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetails_receiptWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | LoanDetails_sourcingWB | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | InputType                                | Result                |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 24                         | sourcing_details.xlsx  | home                 | 33                          | in correct format                        | be saved successfully |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 25                         | sourcing_details.xlsx  | home                 | 33                          | with character                           | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 26                         | sourcing_details.xlsx  | home                 | 33                          | with special character                   | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 27                         | sourcing_details.xlsx  | home                 | 33                          | with combination of character and digits | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 28                         | sourcing_details.xlsx  | home                 | 33                          | with space                               | not be saved          |
