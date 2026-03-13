@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@ImplementedBy-deep.maurya
@Release3
@ReviewedByDEV
@Conventional
@Islamic
Feature: Validation Of accessories details in Asset Details Page

  Scenario Outline: ACAUTOCAS-1828: <tab_name> is displayed
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills asset details home page with "<Mandatory_All>" fields
    Then "<tab_name>" tab is displayed
    Examples:
      | Mandatory_All | Loan_Type | tab_name            | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx     | AssetDetails_xx_rowNum |
      | Mandatory     | Auto Loan | Accessories Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | accessories_details | 0                      |


  Scenario Outline: ACAUTOCAS-1829: <Field_Name> is autofilled in accessories details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills asset details home page with "<Mandatory_All>" fields
    Then "<Field_Name>" field should autofilled in accessories details
    Examples:
      | Mandatory_All | Loan_Type | Field_Name       | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx     | AssetDetails_xx_rowNum |
      | Mandatory     | Auto Loan | Accessory Number | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | accessories_details | 0                      |


  Scenario Outline: ACAUTOCAS-1830: Validating Cost to be financed in accessories details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<Asset_details>" and row <Asset_details_rowNum>
    And user fills asset details home page with "<Mandatory_All>" fields
    When user reads data from the excel file "<AccessoriesDetailsWB>" under sheet "<Accessories_details>" and row <Accessories_details_rowNum>
    And user fills Cost to be financed with "<var>"
    Then Cost to be financed field "<Throws_notThrows>" with proper message
    Examples:
      | Mandatory_All | Loan_Type | var                        | SourceDataFile       | SheetName | RowNumber | AssetDetailsWB     | Asset_details | Asset_details_rowNum | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AccessoriesDetailsWB | Accessories_details | Accessories_details_rowNum |
      | Mandatory     | Auto Loan | valid value                | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home          | 0                    | does not throw any error           | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx   | accessories_details | 0                          |
      | Mandatory     | Auto Loan | up to 18 digits            | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home          | 0                    | does not throw any error           | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx   | accessories_details | 1                          |
      | Mandatory     | Auto Loan | both digits and characters | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home          | 0                    | throws an error with error message | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx   | accessories_details | 2                          |
      | Mandatory     | Auto Loan | special characters         | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home          | 0                    | throws an error with error message | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx   | accessories_details | 3                          |
      | Mandatory     | Auto Loan | space                      | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home          | 0                    | throws an error with error message | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx   | accessories_details | 4                          |
      | Mandatory     | Auto Loan | paise format               | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home          | 0                    | does not throw any error           | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx   | accessories_details | 5                          |
      | Mandatory     | Auto Loan | zero value                 | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home          | 0                    | does not throw any error           | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx   | accessories_details | 6                          |
      | Mandatory     | Auto Loan | negative value             | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home          | 0                    | throws an error with error message | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx   | accessories_details | 7                          |


  Scenario Outline: ACAUTOCAS-1831: <Field_Name> is editable in accessories details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills asset details home page with "<Mandatory_All>" fields
    Then "<Field_Name>" field should be editable in accessories details
    Examples:
      | Mandatory_All | Loan_Type | Field_Name | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx     | AssetDetails_xx_rowNum |
      | Mandatory     | Auto Loan | Is Funded  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | accessories_details | 0                      |
