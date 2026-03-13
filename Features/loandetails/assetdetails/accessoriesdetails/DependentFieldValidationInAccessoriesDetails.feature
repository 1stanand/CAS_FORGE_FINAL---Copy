@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@ImplementedBy-deep.maurya
@Release3
@ReviewedByDEV
@Conventional

Feature: Dependent Field Validation Of accessories details in Asset Details Page

  Scenario Outline: ACAUTOCAS-1832: In selection of Accessory <Field_Name> is autofilled in accessories Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills asset details home page with "<Mandatory_All>" fields
    When user fills the Accessory details
    Then "<Field_Name>" should be autofilled
    Examples:
      | Mandatory_All | Loan_Type | Field_Name   | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx     | AssetDetails_xx_rowNum |
      | Mandatory     | Auto Loan | Manufacturer | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | accessories_details | 0                      |

