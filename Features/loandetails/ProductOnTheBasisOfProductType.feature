@Epic-Loan_Application_Details
@AuthoredBy-harshprit.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@SkipTest
Feature: Product On The Basis Of Product Type

  Scenario Outline: ACAUTOCAS-13930:  Product On The Basis Of Product Type
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
    And user clicks on loan details tab
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user selects Channel from "<SourcingDetailsWB>" under "<SourcingDetails_home>" and <SourcingDetails_home_rowNum>
    And user inputs product from "<SourcingDetailsWB>" under "<SourcingDetails_home>" and <SourcingDetails_home_rowNum>
    Then product is mapped with the Product Type

    Examples:
      | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 0                           |
