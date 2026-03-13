@Epic-Loan_Application_Details
@Release2
@AuthoredBy-harshita.nayak
@ReviewedByDEV
@ImplementedBy-tushar.chauhan
@Conventional
@Islamic
Feature: Seller Account Details validation in seller details page with save

  Scenario Outline: ACAUTOCAS-1930: Validating <Field_Name> in seller account Details with save
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page for seller details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_SellerDetails>" and row <PropertyDetails_SellerDetails_rowNum>
    And user is on Seller Account Details in Seller Details Page
    When user fills Seller Account Details field without "<Field_Name>"
    Then "<Field_Name>" field "<Throws_notThrows>" in seller account details page

    Examples:
      | Field_Name      | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_SellerDetails | PropertyDetails_SellerDetails_rowNum | Throws_notThrows                   |
      | Account Number  | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 188                                  | throws an error with error message |
      | Type of Account | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 189                                  | throws an error with error message |
      | Bank Name       | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 190                                  | throws an error with error message |
      | Branch Name     | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 191                                  | throws an error with error message |
      | IFSC            | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 192                                  | throws an error with error message |

