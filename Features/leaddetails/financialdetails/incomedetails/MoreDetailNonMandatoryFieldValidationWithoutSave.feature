@Epic-Applicant_Information
@AuthoredBy-harshprit.kumar
@ReviewedBy-harshprit.kumar
@ReviewedByDEV
@AppInfoAdoption

#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-159
Feature: More Details Mandatory Field of Income Details without save

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @FixedExp
   @Sanity
  Scenario Outline: ACAUTOCAS-3882:  Operations in More Details in Income Details with <attribute>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetailsWB_home>" and row <EmploymentDetailsWB_home_rowNum>
    And user open Employment Details
    And user select occupation type as "<OccupationType>" in employment details
    And user fills employment details for occupation type as "<OccupationType>"
    And click on Done Button
    And user changes major occupation to "<OccupationType>"
    And user clicks on save and next of Employment Details
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    When user fills income details "<var>" more details
    Then "<attribute>" should work successfully
    @Conventional
    @Release @Part-1
    @ImplementedBy-harshprit.kumar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | attribute                                                                 | var  | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | primary and secondary sharing percentage should be equal or less than 100 | with | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 39                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | income sharing details added                                              | with | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 39                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | income sharing details displayed                                          | with | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 39                                    |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | attribute                                                                 | var  | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | primary and secondary sharing percentage should be equal or less than 100 | with | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 39                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | income sharing details added                                              | with | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 39                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | income sharing details displayed                                          | with | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 39                                    |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | OccupationType | attribute                                                                 | var  | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | primary and secondary sharing percentage should be equal or less than 100 | with | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 39                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | income sharing details added                                              | with | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 39                                    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | income sharing details displayed                                          | with | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 39                                    |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | attribute                        | var  | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | income sharing details displayed | with | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 39                                    |

  @FixedExp
  Scenario Outline: ACAUTOCAS-3883:  Operations in More Details in Income Details with <attribute> by <operation>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user clicks on save and next
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetailsWB_home>" and row <EmploymentDetailsWB_home_rowNum>
    And user select occupation type as "<OccupationType>" in employment details
    And user fills employment details for occupation type as "<OccupationType>"
    And click on Done Button
    And user changes major occupation to "<OccupationType>"
    And user clicks on save and next of Employment Details
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    When user fills income details "<var>" more details
    And user "<operation>" <num> income sharing details from excel "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and rowNumber starting from <starting_row_number>
    Then "<attribute>" should work successfully
    @Conventional
    @Release @Part-1
    @ImplementedBy-harshprit.kumar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | attribute                       | var  | operation | num | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | starting_row_number |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | multiple income sharing details | with | adds      | 2   | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 53                                    | 54                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | deleting income sharing details | with | deletes   | 1   | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 39                                    | 53                  |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | attribute                       | var  | operation | num | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | starting_row_number |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | multiple income sharing details | with | adds      | 2   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 53                                    | 54                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | deleting income sharing details | with | deletes   | 1   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 39                                    | 53                  |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | OccupationType | attribute                       | var  | operation | num | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | starting_row_number |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | multiple income sharing details | with | adds      | 2   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 53                                    | 54                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | deleting income sharing details | with | deletes   | 1   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 39                                    | 53                  |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | attribute                       | var  | operation | num | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | starting_row_number |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | multiple income sharing details | with | adds      | 2   | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 53                                    | 54                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | deleting income sharing details | with | deletes   | 1   | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                 | 39                                    | 53                  |
