@Epic-Loan_Application_Details
@ReviewedByDEV
@AuthoredBy-harshita.nayak
@ImplementedBy-tushar.chauhan
@Conventional
Feature: Dependent Field Validation Of Seller Account Details in Seller details page

  Scenario Outline: ACAUTOCAS-1928:  In Selection of <Field_Name> field <Dependent_Field> should be filled
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page for seller details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_SellerDetails>" and row <PropertyDetails_SellerDetails_rowNum>
    And user is on Seller Account Details in Seller Details Page
    When user fills "<Field_Name>" in Seller Account Details
    Then "<Dependent_Field>" field should be filled automatically

    Examples:
      | Field_Name  | Dependent_Field | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_SellerDetails | PropertyDetails_SellerDetails_rowNum |
      | Branch Name | IFSC            | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 189                                  |
      | IFSC        | Branch Name     | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 189                                  |
      | IFSC        | Bank Name       | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 189                                  |
