@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ImplementedBy-akash.bansal
@Conventional
@Islamic
@ReviewedBy-None
@Release2
Feature: Sourcing Detail Mandatory Field Validation After Save

  Scenario Outline: ACAUTOCAS-14116: Validating sourcing detail without <Field_Name>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    When user fills sourcing detail without "<Field_Name>"
    Then "<Attribute>" displays error "<Error_Message>" in "<Field_Name>"

    Examples:
      | Loan_Type     | Field_Name          | Attribute        | Error_Message                      | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_rowNum |
      | Personal Loan | branch              | Sourcing Details | Please choose from list of values. | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 23                          |
      | Personal Loan | channel             | Sourcing Details | This field is required.            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 24                          |
      | Personal Loan | product             | Sourcing Details | This field is required.            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 25                          |
      | Personal Loan | scheme              | Sourcing Details | This field is required.            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 26                          |
      | Personal Loan | amount requested    | Sourcing Details | This field is required.            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 27                          |
      | Personal Loan | tenure              | Sourcing Details | This field is required.            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 28                          |
      | Personal Loan | application purpose | Sourcing Details | This field is required.            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 29                          |
      | Personal Loan | sourcing rm name    | Sourcing Details | Please choose from list of values. | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 30                          |
