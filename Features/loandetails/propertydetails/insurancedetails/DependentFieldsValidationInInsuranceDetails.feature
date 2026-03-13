@Epic-Loan_Application_Details
@ReviewedBy-None
@ImplementedBy-
@Test
@AuthorBy-vipin.kishor
Feature: Dependent fields validation in insurance details

  @NotImplemented
  Scenario Outline: ACAUTOCAS-14080:  Combinational validation of coverage amount with premium amount
    Given user is on CAS
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for <Loan_Type>
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_rowNum>
    And user fills property details
    And user reads data from the excelFile "<LoanDetailsWB>" under sheet "<LoanDetails_receipt>" and row <LoanDetails_receipt_rowNum>
    When user fill insurance details with premium amount <LessOrGreaterOrEqual> coverage amount
    Then premium amount <Throws_notThrows> error
    Examples:
      | Loan_Type |  | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | LessOrGreaterOrEqual | Throws_notThrows                                                      |
      | Home loan |  | LoginDetailsCAS.xlsx | LoginData | 7         |               |                     |                            | less than            |                                                                       |
      | Home loan |  | LoginDetailsCAS.xlsx | LoginData | 7         |               |                     |                            | greater than         | Premium Amount should not be greater than or equal to Coverage Amount |
      | Home loan |  | LoginDetailsCAS.xlsx | LoginData | 7         |               |                     |                            | equal to             | Premium Amount should not be greater than or equal to Coverage Amount |


