@Epic-Loan_Application_Details
@Release2
@AuthoredBy-harshita.nayak
@ReviewedByDEV
@Conventional
@Islamic
@ImplementedBy-tushar.chauhan
Feature:Seller Details Mandatory filed Validation of Property Details With Type Of Purchase as Resale After Save

  Scenario Outline: ACAUTOCAS-1952:  Validating seller details of Type Of Purchase as Resale without <FieldName>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page for seller details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_SellerDetails>" and row <PropertyDetails_SellerDetails_rowNum>
    When user fills seller details without "<FieldName>"
    Then seller details should not be saved without <FieldName> showing proper message
    Examples:
      | FieldName   | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_SellerDetails | PropertyDetails_SellerDetails_rowNum |
      | Seller Name | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 1                                    |
