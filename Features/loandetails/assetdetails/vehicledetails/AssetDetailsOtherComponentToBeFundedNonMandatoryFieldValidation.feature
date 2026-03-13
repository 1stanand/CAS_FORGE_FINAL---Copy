@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewBy-pushp.raj
@ImplementedBy-deep.maurya
@Release3
@ReviewedByDEV
@Conventional
@Islamic
Feature:Others Components To Be Funded in Asset Details Field Validation

  Scenario Outline: ACAUTOCAS-1891: Validating Capital Funded in Others Components To Be Funded with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_asset_details>" and row <AssetDetails_asset_details_rowNum>
    When user fills Capital Funded field with "<var>"
    Then Capital Funded field "<Throws_notThrows>" with proper message

    Examples:
      | Loan_Type | var                        | SourceDataFile       | SheetName | RowNumber | AssetDetailsWB     | AssetDetails_asset_details   | AssetDetails_asset_details_rowNum | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Auto Loan | valid value                | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | other_component_to_be_funded | 0                                 | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | up to 18 digits            | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | other_component_to_be_funded | 1                                 | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | both digits and characters | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | other_component_to_be_funded | 2                                 | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | special characters         | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | other_component_to_be_funded | 3                                 | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | space                      | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | other_component_to_be_funded | 4                                 | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | paise format               | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | other_component_to_be_funded | 5                                 | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | zero value                 | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | other_component_to_be_funded | 6                                 | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | negative value             | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | other_component_to_be_funded | 7                                 | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |



  Scenario Outline: ACAUTOCAS-1892:  In Selection of Is Funded <Field_Name> is autofilled with suitable calculation
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Capital Funded details with Is Funded fields
    Then "<Field_Name>" should be autofilled with suitable calculation

    Examples:
      | Loan_Type | Field_Name              | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx              | AssetDetails_xx_rowNum |
      | Auto Loan | Total Asset Cost        | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | other_component_to_be_funded | 0                      |
      | Auto Loan | Percent of Down Payment | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | other_component_to_be_funded | 0                      |
      | Auto Loan | Amount of Down Payment  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | other_component_to_be_funded | 0                      |
      | Auto Loan | LTV (%)                 | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | other_component_to_be_funded | 0                      |



  Scenario Outline: ACAUTOCAS-1893:  Saving Others Components To Be Funded with <Field_Name> in Asset Details Page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills asset Details with "<Mandatory_All>"
    And user reads data from the excel file "<AssetDetailsWBD>" under sheet "<AssetDetails__xx>" and row <AssetDetails_xx__rowNum>
    When user Others Components To Be Funded details with "<Field_Name>"
    Then Others Components To Be Funded is saved

    Examples:
      | Mandatory_All | Loan_Type | Field_Name     | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetailsWBD    | AssetDetails__xx | AssetDetails_xx__rowNum |
      | Mandatory     | Auto Loan | Fund Type      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home            | 0                      | asset_details.xlsx | other_component_to_be_funded             | 0                       |
      | Mandatory     | Auto Loan | Capital Funded | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home            | 0                      | asset_details.xlsx | other_component_to_be_funded             | 0                       |
      | Mandatory     | Auto Loan | Is Funded      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home            | 0                      | asset_details.xlsx | other_component_to_be_funded             | 0                       |
