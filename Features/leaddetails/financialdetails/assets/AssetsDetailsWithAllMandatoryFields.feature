#@Epic-Applicant_Information
#@AuthoredBy-vipin.kishor
#@ImplementedBy-vipin.kishor
#@ReviewedBy-None
#@Release2
##FeatureID-ACAUTOCAS-164
#Feature: Fill the assets details with occupation as salaried in financial detail page
#
#  Background: Common steps
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
#    And user create new application of personal loan for individual
#    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 0
#    And user fills home page of personal information
#    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 7
#    And user fills and saves employment details for occupation as salaried
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-3851: fill the assets with mandatory fields
#    When user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
#    And user fills assets with "<Mandatory_All>" fields
#    Then assets are saved successfully
#    Examples:
#      | Mandatory_All | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
#      | mandatory     | financial_details.xlsx | assets                  | 1                              |
#
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-3852: fill the assets details with <Mandatory_All> fields
#    When user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
#    And user fills assets details with "<Mandatory_All>" fields
#    Then assets details are saved successfully
#    Examples:
#      | Mandatory_All | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
#      | mandatory     | financial_details.xlsx | assets                  | 1                              |
#      | all           | financial_details.xlsx | assets                  | 1                              |
#
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-13024:  Saving asset details without <Field_Name> in financial details page
#    When user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
#    And user saves assets without "<Field_Name>"
#    Then assets is not saved with error message "<Error_Message>"
#    Examples:
#      | Field_Name             | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Error_Message                                                |
#      | asset_type             | financial_details.xlsx | assets                  | 2                              | There are some errors, please correct them and try again..!! |
#      | asset_category         | financial_details.xlsx | assets                  | 3                              | There are some errors, please correct them and try again..!! |
#      | asset_type_description | financial_details.xlsx | assets                  | 4                              | There are some errors, please correct them and try again..!! |
#      | asset_value            | financial_details.xlsx | assets                  | 5                              | There are some errors, please correct them and try again..!! |
