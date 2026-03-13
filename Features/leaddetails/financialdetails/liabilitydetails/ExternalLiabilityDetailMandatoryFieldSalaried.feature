@Epic-Applicant_Information
@AppInfoAdoption
@Liability
@AuthoredBy-atul.mishra
@ReviewedBy-None
@Reconciled
@ReviewedByDEV

  # ${ApplicantType:["indiv"]}
Feature: External liability detail mandatory field validation with occupation type as salaried with save

  @Sanity
  Scenario Outline: ACAUTOCAS-3889:  Save applicant's liability detail without "<Var>"
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user add external liability details without "<Var>" fields
    Then liability details should "<save_notSave>" successfully "<with_without>" error in "<Var>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | save_notSave | with_without | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Var                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Internal/External     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | loan type             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | institution name      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | principal outstanding | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 86                                       |
      | save         | without      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | emi start date        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 318                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | installment frequency | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | installment amount    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 87                                       |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | liability type        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | save_notSave | with_without | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Var                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Internal/External     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | loan type             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | institution name      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | principal outstanding | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 86                                       |
      | save         | without      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | emi start date        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 278                                      |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | installment frequency | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | installment amount    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 87                                       |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | liability type        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | save_notSave | with_without | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Var                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Internal/External     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | loan type             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | institution name      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | principal outstanding | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 278                                      |
      | save         | without      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | emi start date        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | installment frequency | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | installment amount    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 87                                       |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | liability type        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | save_notSave | with_without | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Var                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Internal/External     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | loan type             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | institution name      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | principal outstanding | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 86                                       |
      | save         | without      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | emi start date        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | installment frequency | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | installment amount    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 87                                       |
      | not save     | with         | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | liability type        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
