@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ImplementedBy-akash.bansal
@Conventional
@Islamic
@ReviewedBy-None
@Release1
Feature: Sourcing Detail Mandatory Field Validation Before Save

  Scenario Outline: ACAUTOCAS-4098:  Validating amount requested field in sourcing Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    When user fills amount requested with "<var>" in sourcing details
    Then amount requested "<Throws_notThrows>" "<With_Error_Message>"

    Examples:
      | Loan_Type     | var                        | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | Throws_notThrows                   | With_Error_Message                                                  |
      | Personal Loan | valid value                | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 15                          | does not throw any error           |                                                                     |
      | Personal Loan | up to 18 digits            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 16                          | does not throw any error           |                                                                     |
      | Personal Loan | more than maximum length   | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 18                          | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal. |
      | Personal Loan | both digits and characters | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 19                          | throws an error with error message | Invalid Amount.                                                     |
      | Personal Loan | special characters         | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 20                          | throws an error with error message | Invalid Amount.                                                     |
      | Personal Loan | space                      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 21                          | throws an error with error message | Invalid Amount.                                                     |
      | Personal Loan | paise format               | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 22                          | does not throw any error           |                                                                     |

    #Commented as per Jira ID - ACAUTOCAS-7138 (Discussed with Sajja Sir)
#    @LoggedBug
#    Examples:
#      | Loan_Type     | var        | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | Throws_notThrows                   | With_Error_Message |
#      | Personal Loan | zero value | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 17                          | throws an error with error message | Invalid Amount.    |


  Scenario Outline: ACAUTOCAS-4099:  Validating tenure in sourcing Details page with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    When user fills tenure with "<var>"
    Then tenure "<Throws_notThrows>" "<With_Error_Message>"

    Examples:
      | Loan_Type     | var                        | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | Throws_notThrows                   | With_Error_Message        |
      | Personal Loan | valid value                | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 35                          | does not throw any error           |                           |
      | Personal Loan | negative number            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 36                          | throws an error with error message | Please enter only Digits. |
      | Personal Loan | both digits and characters | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 37                          | throws an error with error message | Please enter only Digits. |
      | Personal Loan | special characters         | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 38                          | throws an error with error message | Please enter only Digits. |
      | Personal Loan | space                      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 40                          | throws an error with error message | Please enter only Digits. |

#    @PotentialBug
#    Examples:
#      | Loan_Type     | var                      | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum | Throws_notThrows                   | With_Error_Message        |
#      | Personal Loan | more than maximum tenure | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 39                          | throws an error with error message | Please enter only Digits. |
