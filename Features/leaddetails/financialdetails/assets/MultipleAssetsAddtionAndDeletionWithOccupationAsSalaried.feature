#@Epic-Applicant_Information
#@AuthoredBy-vipin.kishor
#@ImplementedBy-vipin.kishor
#@ReviewedBy-None
##FeatureID-ACAUTOCAS-164
#Feature: multiple assets addition deletion with occupation as salaried in financial detail page
#
#
#  # ISLAMIC ADOPTION for this scenario is already done in a scenario with JIRA ID :ACAUTOCAS-13010
#
#
#
#  @ReleaseAppInfoM3
#  Scenario Outline: ACAUTOCAS-3855:  fill the multiple assets with mandatory fields
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    When user create new application of personal loan for individual
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
#    And user fills and saves employment details for occupation as salaried
#    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
#    And user fill "<Mandatory_All>" assets
#    Then multiple assets are saved successfully
#
#    Examples:
#      | Mandatory_All | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
#      | multiple      | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | assets                  | 0                              |
#
