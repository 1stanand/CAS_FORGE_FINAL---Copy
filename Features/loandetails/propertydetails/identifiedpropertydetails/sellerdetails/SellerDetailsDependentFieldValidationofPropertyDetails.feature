@Epic-Loan_Application_Details
@Release2
@AuthoredBy-harshita.nayak
@ReviewedByDEV
@Conventional
@Islamic
@ImplementedBy-tushar.chauhan
Feature:Seller Details Dependent Field Validation Of Property Details With Type Of Purchase as Resale

  Scenario Outline: ACAUTOCAS-1951:  In selection of Type Of Purchase as Resale <tab_name> is displayed
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user selects ready property details with "<Type Of Purchase>"
    Then "<tab_name>" tab should displayed on property details page

    Examples:
      | Type Of Purchase | tab_name       | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Resale           | Seller Details | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          |




