@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@ImplementedBy-yash.sharma
@Conventional
@Islamic
@Release3
Feature: Invoice Details Dedupe Check in Asset Details Page


  @ReleaseAppInfoM3
  Scenario Outline: ACAUTOCAS-1885:  Asset Details without checking for duplicates
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user fills the "<asset_type>""<tab_name>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills invoice Details
    When user check for duplicates invoice details
    Then receive proper message
    Examples:
      | Loan_Type | asset_type | tab_name        | SourceDataFile       | SheetName | RowNumber | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Auto Loan | Used Asset | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | invoice_details | 0                      | sourcing_details.xlsx | home                 | 147                         |

