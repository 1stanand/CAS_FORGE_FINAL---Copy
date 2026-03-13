@Epic-Loan_Application_Details
@SkipTest
@Delete
Feature: Negative Value Check

  Scenario Outline: ACAUTOCAS-13929:  Negative Amount Value Check
    Given user is on CAS Login Page
    When user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user clicks on menu
    And user clicks on Application Master
    And user clicks on Application Grid Master
    And user clicks on Applications
    And user clicks on Create Application
    And user clicks on Home Loan
    And user clicks on Applicant Information
    And user selects New Customer as Individual
    And user clicks on Create new Customer
    And user clicks on loan details
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user clicks on amount requested
    Then error is displayed

    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 11        | sourcing_details.xlsx | home                 | 1                           |

