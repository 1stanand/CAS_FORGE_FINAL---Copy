@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ImplementedBy-akash.bansal
@ReviewedBy-None
@Release2
@Conventional
@Islamic
Feature: Fill Sourcing Details in Loan Details Page

  @Sanity
  Scenario Outline: ACAUTOCAS-14115:  Fill Sourcing Details in Loan Details Page with <Field_Name> fields
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    When user is on Loan Details Page
    And user fill sourcing details with "<Mandatory_All>" fields
    Then "<Mandatory_All>" fields of sourcing details save successfully

    Examples:
      | Loan_Type     | Mandatory_All | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Personal Loan | all           | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 40                          |
      | Personal Loan | mandatory     | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 15                          |
