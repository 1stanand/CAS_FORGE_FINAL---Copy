@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ImplementedBy-akash.bansal
@ReviewedBy-None
@Release2
@Conventional
@Islamic
Feature: Dependent Field Validation in sourcing details page

  Scenario Outline: ACAUTOCAS-14113: <var> field dependent on scheme
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    When user fills scheme in sourcing details
    Then "<var>" details display successfully

    Examples:
      | Loan_Type     | var              | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Personal Loan | rate of interest | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 62                          |


  Scenario Outline: ACAUTOCAS-14114: <var> in amount requested fields dependent on scheme
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    When user fills scheme in sourcing details
    Then "<var>" details display successfully

    Examples:
      | Loan_Type     | var      | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Personal Loan | currency | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 63                          |

