@Epic-Applicant_Information
@AuthoredBy-harshprit.kumar
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release1
@ReviewedByDEV
#FeatureID-ACAUTOCAS-159
Feature: More Details Mandatory Field of Income Details with save

  @Conventional @Release @Part-3
  Scenario Outline: ACAUTOCAS-3884:  Filling <field> in more details mandatory in income details with <attribute>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application of personal loan for individual
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetailsWB_home>" and row <EmploymentDetailsWB_home_rowNum>
    And user fills and save employment details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    When user fills income details "<var>" more details
    Then "<validity>" message should display around "<field>" field

    Examples:
      | attribute             | var  | field              | validity | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | null                  | with | Applicant_Type     | error    | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 29                                    |
      | null                  | with | Name               | error    | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 30                                    |
      | null                  | with | Sharing_Percentage | error    | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 31                                    |
      | negative value        | with | Name               | error    | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 32                                    |
      | special characters    | with | Name               | error    | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 33                                    |
      | value more than 100   | with | Sharing_Percentage | error    | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 34                                    |
      | digits and characters | with | Sharing_Percentage | error    | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 35                                    |
      | negative value        | with | Sharing_Percentage | error    | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 36                                    |
      | special characters    | with | Sharing_Percentage | error    | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 37                                    |
      | spaces                | with | Sharing_Percentage | error    | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 38                                    |
      | valid name            | with | Name               | no error | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 39                                    |
      | spaces                | with | Name               | no error | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 39                                    |
      | valid percentage      | with | Name               | no error | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 39                                    |
