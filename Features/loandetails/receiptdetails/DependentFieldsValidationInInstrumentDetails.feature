@Epic-Loan_Application_Details
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ImplementedBy-ayush.garg
@Release2

#FeatureID-ACAUTOCAS-203
Feature: Dependent fields validation in instrument details

  Scenario Outline:ACAUTOCAS-5800: <Var> MICR code
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<LoanDetails_sourcingWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<LoanDetails_receiptWB>" under sheet "<LoanDetails_receipt>" and row <LoanDetails_receipt_rowNum>
    When user fills instrument details with MICR code
    Then MICR code should become "<BehaviourOfField>"
    Examples:
      | Loan_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetails_receiptWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | LoanDetails_sourcingWB | LoanDetails_sourcing_rowNum | LoanDetails_sourcing | BehaviourOfField |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | 33                          | home                 | mandatory        |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | 33                          | home                 | editable         |

  Scenario Outline:ACAUTOCAS-5801: Validate <Dependent_Field> without MICR code
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<LoanDetails_sourcingWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<LoanDetails_receiptWB>" under sheet "<LoanDetails_receipt>" and row <LoanDetails_receipt_rowNum>
    When user fill instrument details without MICR code
    Then "<Dependent_Field>" should become "<BehaviourOfField>" field

    Examples:
      | Loan_Type | SourceDataFile       | SheetName | RowNumber | LoanDetails_receiptWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetails_sourcingWB | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | Dependent_Field | BehaviourOfField |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx  | home                 | 33                          | MICR Code       | not editable     |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx  | home                 | 33                          | Bank            | mandatory        |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx  | home                 | 33                          | Bank Branch     | mandatory        |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | receipt_details.xlsx  | home                | 29                         | personal_information.xlsx | home              | 0                        | sourcing_details.xlsx  | home                 | 33                          | Bank Location   | mandatory        |

  Scenario Outline:ACAUTOCAS-5802: Bank location auto filled based on bank branch
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<LoanDetails_sourcingWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<LoanDetails_receiptWB>" under sheet "<LoanDetails_receipt>" and row <LoanDetails_receipt_rowNum>
    When user fills bank name in instrument details
    Then bank location should be auto populated based on bank branch
    Examples:
      | Loan_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetails_receiptWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | LoanDetails_sourcingWB | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | home                 | 33                          |

  Scenario Outline: ACAUTOCAS-5803: Add MICR code <InputType> in instrument details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<LoanDetails_sourcingWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<LoanDetails_receiptWB>" under sheet "<LoanDetails_receipt>" and row <LoanDetails_receipt_rowNum>
    When user fills MICR code "<InputType>" in instrument details
    Then MICR code should "<SaveOrNotSave>"
    Examples:
      | Loan_Type | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | LoanDetails_receiptWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | LoanDetails_sourcingWB | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | InputType                               | SaveOrNotSave         |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 29                         | sourcing_details.xlsx  | home                 | 33                          | in correct format                       | be saved successfully |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 30                         | sourcing_details.xlsx  | home                 | 33                          | as character                            | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 31                         | sourcing_details.xlsx  | home                 | 33                          | as special character                    | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 32                         | sourcing_details.xlsx  | home                 | 33                          | as combination of character and digits  | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 33                         | sourcing_details.xlsx  | home                 | 33                          | as a combination of character and space | not be saved          |
      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | receipt_details.xlsx  | home                | 34                         | sourcing_details.xlsx  | home                 | 33                          | as more than max limit                  | not be saved          |

