@Epic-Loan_Application_Details
@AuthoredBy-None
@ReviewedBy-None
@ImplementedBy-atul.mishra
@SkipTest
@Deferred
Feature: Individual sourcing details requested amount to be zero
  Scenario Outline: Create the individual account and fill the personal details and then request the amount zero
    Given user is on CAS Login Page
    When user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user click on menu
    And user clicks on Application Master
    And user clicks on Application Grid Master
    And user clicks on Applications
    And user clicks on Create Application
    And user clicks on Home Loan
    And user clicks on Applicant Information
    And user selects New Customer as Individual
    And user clicks on Create new Customer
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills the channel
    And user fills the amount requested
    And user fills the tenure
    Then user fills the sourcing rm name

    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 5         | sourcing_details.xlsx | home                 | 0                           |
