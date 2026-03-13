@Epic-Applicant_Information
@AuthoredBy-harshprit.kumar
@ReviewedBy-harshprit.kumar
@Reconcile
@AppInfoAdoption
#FeatureID-ACAUTOCAS-159
#${ApplicantType:["indiv"]}
Feature: Filling Income Details With Occupation Type as Salaried

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#  Scenario Outline: Filling income details <var> more details
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user create new application of personal loan for individual
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetailsWB_home>" and row <EmploymentDetailsWB_home_rowNum>
#    And user fills and save employment details
#    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
#    When user opens view and edit and fills income details "<var>" more details
#    Then user saves and computes and validate success notification
#
#    Examples:
#      | var     | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
#      | with    | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                | 1                                          |
#      | without | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                     | 8                               | financial_details.xlsx | income_details                | 1                                          |

  @FixedExp
  Scenario Outline: ACAUTOCAS-3874:  Deleting income details <var> more details
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
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    And user fills income details "<var>" more details
    When user deletes income details "<var>" more details
    Then income details should be deleted
    @Conventional
    @Release @Part-1
    @ImplementedBy-harshprit.kumar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | var     | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | with    | employment_details.xlsx | home                     | 7                               | financial_details.xlsx | income_details                 | 1                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | without | employment_details.xlsx | home                     | 7                               | financial_details.xlsx | income_details                 | 1                                     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | var     | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | with    | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 1                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | without | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 1                                     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | OccupationType | var     | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | with    | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 1                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | without | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 1                                     |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | var     | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | with    | employment_details.xlsx | home                     | 7                               | financial_details.xlsx | income_details                 | 1                                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | without | employment_details.xlsx | home                     | 7                               | financial_details.xlsx | income_details                 | 1                                     |

  @FixedExp
  @Sanity
  Scenario Outline: ACAUTOCAS-3875:  Adding multiple income details <var> more details
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
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    And user fills income details "<var>" more details
    When user "<operation>" <num> income details from excel "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and rowNumber starting from <starting_row_number>
    Then multiple income details should be added
    @Conventional
    @Release @Part-1
    @ImplementedBy-harshprit.kumar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | var     | operation | num | starting_row_number | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | without | adds      | 2   | 23                  | employment_details.xlsx | home                     | 7                               | financial_details.xlsx | income_details                 | 1                                     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | var     | operation | num | starting_row_number | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | without | adds      | 2   | 23                  | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 1                                     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | OccupationType | var     | operation | num | starting_row_number | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | without | adds      | 2   | 23                  | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 1                                     |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | var     | operation | num | starting_row_number | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | without | adds      | 2   | 23                  | employment_details.xlsx | home                     | 7                               | financial_details.xlsx | income_details                 | 1                                     |


  Scenario Outline: ACAUTOCAS-3876:  Income Details should be editable
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
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    When user fills income details "<var>" more details
    Then income details should be editable
    @Conventional
    @Release @Part-1
    @ImplementedBy-harshprit.kumar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | var     | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | without | employment_details.xlsx | home                     | 7                               | financial_details.xlsx | income_details                 | 1                                     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | var     | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | without | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 1                                     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | OccupationType | var     | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Salaried       | without | employment_details.xlsx | home                     | 136                             | financial_details.xlsx | income_details                 | 1                                     |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | OccupationType | var     | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Salaried       | without | employment_details.xlsx | home                     | 7                               | financial_details.xlsx | income_details                 | 1                                     |
