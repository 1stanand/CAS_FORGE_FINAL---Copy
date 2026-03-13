@Epic-Secondary_Collateral
@AuthoredBy-harshita.nayak
@ReviewedBy-utkarsh.tiwari
@Release3
@ReviewedByDEV
Feature: Nominee Details Mandatory field Validation in Insurance details

  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-1882:  Saving Nominee Details in Insurance details with save
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 64
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<InsuranceDetails_xx>" and row 33
    And user fills "<Mandatory_NonMandatory>" field of Insurance detail
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Nominee>" and row <AssetDetails_Nominee_RowNum>
    When user fills Nominee details in insurance details with "<Mandatory_All>"
    Then Nominee details save successfully
    Examples:
      | Mandatory_NonMandatory | Mandatory_All | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_RowNum | InsuranceDetails_xx |
      | mandatory              | mandatory     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 35                     | nominee_address_details | 12                          | insurance_details   |
      | mandatory              | all           | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 35                     | nominee_address_details | 12                          | insurance_details   |

  @ImplementedBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-1883:  Adding multiple Nominee Details under Insurance Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 64
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<InsuranceDetails_xx>" and row 33
    And user fills "<Mandatory_NonMandatory>" field of Insurance detail
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Nominee>" and row <AssetDetails_Nominee_RowNum>
    When user fills multiple Nominee details page with "<Mandatory_All>"
    Then Nominee details save successfully

    Examples:
      | Mandatory_NonMandatory | Mandatory_All | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_RowNum | InsuranceDetails_xx |
      | mandatory              | mandatory     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 35                     | nominee_address_details | 13                          | insurance_details   |

  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-1884:  Saving Nominee details in Insurance Details without <Field_Name>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 64
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<InsuranceDetails_xx>" and row 33
    And user fills "<Mandatory_NonMandatory>" field of Insurance detail
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Nominee>" and row <AssetDetails_Nominee_RowNum>
    When user fills Nominee details without "<Field_Name>"
    Then Nominee details not saved with "<Throws_notThrows>"

    Examples:
      | Mandatory_NonMandatory | Field_Name                | Mandatory_All | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_RowNum | InsuranceDetails_xx | Throws_notThrows                   |
      | mandatory              | Nominee Name              | mandatory     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 35                     | nominee_address_details | 12                          | insurance_details   | throws an error with error message |
      | mandatory              | Nominee Relationship      | mandatory     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 35                     | nominee_address_details | 12                          | insurance_details   | throws an error with error message |
      | mandatory              | Date of Birth             | mandatory     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 35                     | nominee_address_details | 12                          | insurance_details   | throws an error with error message |
      | mandatory              | Gender                    | mandatory     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 35                     | nominee_address_details | 12                          | insurance_details   | throws an error with error message |
      | mandatory              | Percentage of Entitlement | mandatory     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 35                     | nominee_address_details | 12                          | insurance_details   | throws an error with error message |


