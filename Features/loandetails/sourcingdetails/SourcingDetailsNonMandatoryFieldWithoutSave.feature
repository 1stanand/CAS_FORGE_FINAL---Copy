@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ImplementedBy-akash.bansal
@Conventional
@Islamic
@ReviewedBy-None
@Release2
Feature: Sourcing Detail Non Mandatory Field Validation Before Save

  Scenario Outline: ACAUTOCAS-14117:  Validating date of receipt field in sourcing Details page with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    When user fills date of receipt with "<var>"
    Then date of receipt "<Throws_notThrows>" "<With_Error_Message>"

    Examples:
      | Loan_Type     | var                        | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | Throws_notThrows                   | With_Error_Message                       |
      | Personal Loan | valid value                | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 41                          | does not throw any error           |                                          |
      | Personal Loan | both digits and characters | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 43                          | throws an error with error message | Please enter a valid date                |
      | Personal Loan | special characters         | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 44                          | throws an error with error message | Please enter a valid date                |
      | Personal Loan | space                      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 45                          | throws an error with error message | Please enter a valid date                |
      | Personal Loan | year less than 1942        | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 46                          | throws an error with error message | Year Of Date should be greater than 1942 |

    @LoggedBug
    Examples:
      | Loan_Type     | var                    | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | Throws_notThrows                   | With_Error_Message        |
      | Personal Loan | more than current date | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 42                          | throws an error with error message | Please enter a valid date |


  Scenario Outline: ACAUTOCAS-14118:  Validating distance from sourcing branch in sourcing Details page with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    When user fills distance from sourcing branch with "<var>"
    Then distance from sourcing branch "<Throws_notThrows>" "<With_Error_Message>"

    Examples:
      | Loan_Type     | var                                      | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | Throws_notThrows                   | With_Error_Message                                |
      | Personal Loan | valid value                              | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 47                          | does not throw any error           |                                                   |
      | Personal Loan | negative number                          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 48                          | throws an error with error message | Distance can not be negative.                     |
      | Personal Loan | both digits and characters               | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 49                          | throws an error with error message | Only numbers upto two decimal places are allowed. |
      | Personal Loan | special characters                       | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 50                          | throws an error with error message | Only numbers upto two decimal places are allowed. |
      | Personal Loan | more than 5 digits before decimal places | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 51                          | throws an error with error message | Digits before decimal should not be more than 5.  |
      | Personal Loan | digits more than  two decimal places     | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 52                          | throws an error with error message | Only numbers upto two decimal places are allowed. |


  Scenario Outline: ACAUTOCAS-14119:  Validating Lead Number CRM  field in sourcing Details page with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    When user fills Lead Number CRM with "<var>"
    Then Lead Number CRM "<Throws_notThrows>" "<With_Error_Message>"

    Examples:
      | Loan_Type     | var                                   | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | Throws_notThrows                   | With_Error_Message                                                                        |
      | Personal Loan | valid value                           | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 53                          | does not throw any error           |                                                                                           |
      | Personal Loan | maximum length                        | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 54                          | does not throw any error           |                                                                                           |
      | Personal Loan | special characters with hyphen        | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 55                          | does not throw any error           |                                                                                           |
      | Personal Loan | special characters with forward slash | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 56                          | does not throw any error           |                                                                                           |
      | Personal Loan | special characters with underscore    | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 57                          | does not throw any error           |                                                                                           |
      | Personal Loan | special characters                    | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 58                          | throws an error with error message | Only alphanumeric characters, underscore, hyphen and slash between characters are allowed |
      | Personal Loan | space                                 | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 59                          | throws an error with error message | Only alphanumeric characters, underscore, hyphen and slash between characters are allowed |
      | Personal Loan | both digits and characters            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 60                          | does not throw any error           |                                                                                           |
      | Personal Loan | negative number                       | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 61                          | does not throw any error           |                                                                                           |


