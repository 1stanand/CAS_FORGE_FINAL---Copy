#@Epic-Loan_Application_Details
#@Release2
#@AuthoredBy-harshita.nayak
#@ReviewedByDEV
#@ImplementedBy-tushar.chauhan
#Feature: Identification validation in seller details page with save
#
#  Scenario Outline: ACAUTOCAS-1924:  Saving Identification Details without <Field_Name> in Seller Details page
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user creates new application for "<Loan_Type>"
#    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
#    And user fills and saves sourcing details
#    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
#    And user fills property details home page for seller details
#    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_SellerDetails>" and row <PropertyDetails_SellerDetails_rowNum>
#    When user fills identification details without "<Field_Name>"
#    And user selects check for duplicates in seller details
#    Then seller identification detail is not saved without "<Field_Name>" showing proper message
#
#    Examples:
#      | Field_Name          | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_SellerDetails | PropertyDetails_SellerDetails_rowNum |
#      | Identification Type | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 99                                   |
#      | Identification No.  | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 100                                  |
#      | Country of Issue    | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 25                          | seller_details                | 101                                  |
#
