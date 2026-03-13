@Epic-Secondary_Collateral
@AuthoredBy-harshita.nayak
@ReviewedBy-utkarsh.tiwari
@Release3
@Reconciled
@ReviewedByDEV

Feature: Insurance Details Mandatory field Validation in Asset detail page with save

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-1865:  Saving Insurance Details in Asset detail page without <Field_Name>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    When user fill insurance details without "<Field_Name>"
    And user save the insurance details
    Then insurance details not saved with "<Throws_notThrows>"

    Examples:
      | Field_Name        | Mandatory_All | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | Throws_notThrows                   | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Insurance Company | mandatory     | Auto Loan | sourcing_details.xlsx | home                 | throws an error with error message | asset_details.xlsx | home            | 32                     |
      | Coverage Type     | mandatory     | Auto Loan | sourcing_details.xlsx | home                 | throws an error with error message | asset_details.xlsx | home            | 32                     |
      | Coverage Amount   | mandatory     | Auto Loan | sourcing_details.xlsx | home                 | throws an error with error message | asset_details.xlsx | home            | 32                     |
      | Premium Amount    | mandatory     | Auto Loan | sourcing_details.xlsx | home                 | throws an error with error message | asset_details.xlsx | home            | 32                     |
      | Loss Payee        | mandatory     | Auto Loan | sourcing_details.xlsx | home                 | throws an error with error message | asset_details.xlsx | home            | 32                     |

  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-1866:  Saving Insurance Details in Asset detail page with save
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_home>" and row <AssetDetails_home_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_insuranceDetails>" and row <AssetDetails_insuranceDetails_rowNum>
    When user fills insurance details page with "<Mandatory_All>"
    And user save the insurance details
    Then insurance details save successfully

    Examples:
      | Mandatory_All | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_home | AssetDetails_home_rowNum | AssetDetails_insuranceDetails | AssetDetails_insuranceDetails_rowNum |
      | mandatory     | Auto Loan | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home              | 33                       | insurance_details             | 33                                   |
      | all           | Auto Loan | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home              | 33                       | insurance_details             | 34                                   |

  @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-1867:  Saving Insurance Details in Asset detail page
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "insurance_details" and row <AssetDetails_xx_rowNum>
    And user fills insurance details page with "<Mandatory_All>"
    And user save the insurance details
    When user fills insurance details page with "<Mandatory_All>"
    And user save the insurance details
    Then insurance details save successfully
    #When user fills with "<Multiple>" insurance details page
    #Then insurance details page save successfully

    Examples:
      | Mandatory_All | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | mandatory     | Auto Loan | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     |

  @ImplementedBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-1868:  Saving <NumberOfDetails> insurance details at once without exiting Insurance Details in Asset detail page
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "insurance_details" and row <AssetDetails_xx_rowNum>
    And user fills insurance details page with "<Mandatory_All>"
    And user save the insurance details
    When user fills insurance details page with "<Mandatory_All>"
    And user save the insurance details
    Then <NumberOfDetails> insurance details saved

    Examples:
      | Mandatory_All | NumberOfDetails | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | mandatory     | 2               | Auto Loan | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     |

  @ImplementedBy-bhanu.singh1
  Scenario Outline: ACAUTOCAS-1869:  Opening another Insurance details screen after saving first details with <Mandatory_All> fields
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "insurance_details" and row <AssetDetails_xx_rowNum>
    When user creating another insurance details after saving first details with "<Mandatory_All>" fields in asset
    Then insurance details screen should be open to fill another details as soon as the first details are saved

    Examples:
      | Mandatory_All | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | mandatory     | Auto Loan | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     |
