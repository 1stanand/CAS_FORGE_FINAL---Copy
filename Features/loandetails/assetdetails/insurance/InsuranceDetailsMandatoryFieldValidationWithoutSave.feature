@Epic-Secondary_Collateral
@AuthoredBy-harshita.nayak
@ReviewedBy-utkarsh.tiwari
@ImplementedBy-rishabh.garg
@Release3
@ReviewedByDEV
@Reconciled
Feature: Insurance Details Mandatory field Validation in Asset detail page without save


  Scenario Outline: ACAUTOCAS-3435: Validating <Field_Name> in Insurance Details with <var> in Asset detail page
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 32
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_insuranceDetails>" and row <AssetDetails_insuranceDetails_rowNum>
    When user fills "<Mandatory_NonMandatory>" insurance details with "<Validity>" "<Field_Name>" with "<var>" in asset insurance details
    Then "<Field_Name>" "<Throws_notThrows>" error

    Examples:
      | Validity | Field_Name      | var                                      | Mandatory_NonMandatory | Loan_Type | Throws_notThrows                   | AssetDetailsWB     | AssetDetails_insuranceDetails | AssetDetails_insuranceDetails_rowNum |
      | valid    | Coverage Amount | valid value                              | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 0                                    |
      | valid    | Coverage Amount | up to 18 digits                          | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 1                                    |
      | invalid  | Coverage Amount | both digits and characters               | mandatory              | Auto Loan | throws an error with error message | asset_details.xlsx | insurance_details             | 2                                    |
      | invalid  | Coverage Amount | special characters                       | mandatory              | Auto Loan | throws an error with error message | asset_details.xlsx | insurance_details             | 3                                    |
      | invalid  | Coverage Amount | space                                    | mandatory              | Auto Loan | throws an error with error message | asset_details.xlsx | insurance_details             | 4                                    |
      | valid    | Coverage Amount | paise format                             | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 5                                    |
      | valid    | Coverage Amount | zero value                               | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 6                                    |
      | invalid  | Coverage Amount | equal to Premium Amount                  | mandatory              | Auto Loan | throws an error with error message | asset_details.xlsx | insurance_details             | 7                                    |
      | invalid  | Coverage Amount | negative value                           | mandatory              | Auto Loan | throws an error with error message | asset_details.xlsx | insurance_details             | 8                                    |
      | invalid  | Coverage Amount | less than Premium Amount                 | mandatory              | Auto Loan | throws an error with error message | asset_details.xlsx | insurance_details             | 9                                    |
      | valid    | Premium Amount  | valid value                              | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 10                                   |
      | valid    | Premium Amount  | up to 18 digits                          | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 11                                   |
      | invalid  | Premium Amount  | both digits and characters               | mandatory              | Auto Loan | throws an error with error message | asset_details.xlsx | insurance_details             | 12                                   |
      | invalid  | Premium Amount  | special characters                       | mandatory              | Auto Loan | throws an error with error message | asset_details.xlsx | insurance_details             | 13                                   |
      | invalid  | Premium Amount  | space                                    | mandatory              | Auto Loan | throws an error with error message | asset_details.xlsx | insurance_details             | 14                                   |
      | valid    | Premium Amount  | paise format                             | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 15                                   |
      | valid    | Premium Amount  | zero value                               | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 16                                   |
      | invalid  | Premium Amount  | negative value                           | mandatory              | Auto Loan | throws an error with error message | asset_details.xlsx | insurance_details             | 17                                   |
      | invalid  | Premium Amount  | equal to coverage Amount                 | mandatory              | Auto Loan | throws an error with error message | asset_details.xlsx | insurance_details             | 18                                   |
      | invalid  | Premium Amount  | more than coverage amount                | mandatory              | Auto Loan | throws an error with error message | asset_details.xlsx | insurance_details             | 19                                   |
      | valid    | Loss Payee      | valid value                              | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 20                                   |
      | valid    | Loss Payee      | both digits and characters               | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 21                                   |
      | valid    | Loss Payee      | alphanumeric with hyphen                 | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 22                                   |
      | valid    | Loss Payee      | space                                    | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 23                                   |
      | valid    | Loss Payee      | negative value                           | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 24                                   |
      | invalid  | Loss Payee      | special characters                       | mandatory              | Auto Loan | throws an error with error message | asset_details.xlsx | insurance_details             | 25                                   |
      | valid    | Loss Payee      | alphanumeric with open brackets          | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 26                                   |
      | valid    | Loss Payee      | alphanumeric with close brackets         | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 27                                   |
      | valid    | Loss Payee      | alphanumeric with exclamation mark       | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 28                                   |
      | valid    | Loss Payee      | alphanumeric with comma                  | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 29                                   |
      | valid    | Loss Payee      | alphanumeric with and operator           | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 30                                   |
      | valid    | Loss Payee      | alphanumeric with dollar sign            | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 31                                   |
      | valid    | Loss Payee      | alphanumeric with forward slash          | mandatory              | Auto Loan | does not throw any error           | asset_details.xlsx | insurance_details             | 32                                   |
