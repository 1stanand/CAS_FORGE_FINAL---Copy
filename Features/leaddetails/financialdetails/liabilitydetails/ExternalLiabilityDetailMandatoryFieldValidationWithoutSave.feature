@Epic-Applicant_Information
@AppInfoAdoption
@Liability
@AuthoredBy-ayush.garg
@ReviewedBy-None
@ReviewedByDEV
# ${ApplicantType:["indiv"]}
Feature: External liability detail mandatory field validation with occupation type as salaried with the save

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3890:  Save applicant's liability detail without the "<Var>"
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
    Then liability details should not save successfully with error in "<Var>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Var                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Internal/External     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | loan type             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | institution name      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | principal outstanding | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 86                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | installment frequency | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | installment amount    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 87                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Var                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Internal/External     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | loan type             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | institution name      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | principal outstanding | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 86                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | installment frequency | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | installment amount    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 87                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Var                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Internal/External     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | loan type             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | institution name      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | principal outstanding | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 86                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | installment frequency | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | installment amount    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 87                                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Var                   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Internal/External     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | loan type             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | institution name      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | principal outstanding | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 86                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | installment frequency | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | installment amount    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 87                                       |


  Scenario Outline: ACAUTOCAS-3891:  Enter the principal outstanding "<Var>"
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
    When user enter the principal outstanding "<Var>" format for external liability
    Then principal outstanding should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum length            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum length       | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in paise format                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum length            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum length       | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in paise format                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | valid                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with maximum length            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | more than maximum length       | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | in paise format                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum length            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum length       | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in paise format                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |


  Scenario Outline: ACAUTOCAS-3892:  Enter the installment amount "<Var>"
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
    When user enter the installment amount "<Var>" format for external liability
    Then installment should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with valid                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum length            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum length       | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in paise format                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with valid                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum length            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum length       | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in paise format                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with valid                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with maximum length            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | more than maximum length       | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | in paise format                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with valid                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum length            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum length       | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in paise format                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |


  Scenario Outline: ACAUTOCAS-3893:  Enter the emi start date <Var>
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
    When user enter the emi start date "<Var>" format for external liability
    Then issue date should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | more than current date         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 28                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | less than date of birth        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 29                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 9                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 240                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 11                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | more than current date         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 28                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | less than date of birth        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 29                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 9                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 240                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 11                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | valid                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | more than current date         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 28                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | less than date of birth        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 29                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 9                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 240                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 11                                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | more than current date         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 28                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | less than date of birth        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 29                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 9                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 240                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 11                                       |


  Scenario Outline: ACAUTOCAS-3894:  Enter the joint liability percentage "<Var>" in external liability mandatory field
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
    When user enter the joint liability percentage "<Var>" format for external liability
    Then joint liability percentage should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with valid                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with valid                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with valid                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with valid                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |


  Scenario Outline: ACAUTOCAS-3895:  Change the currency of principal outstanding
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
    When user change the currency of principal outstanding
    Then currency of principal outstanding should be changed successfully
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |


  Scenario Outline: ACAUTOCAS-3896:  Insert valid account number or card number  in external liability
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
    When user fills the account number in external liability details with "<Var>"
    Then account number should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 9                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | negative number | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 10                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | special char    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 11                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 9                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | negative number | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 10                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | special char    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 11                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | valid           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 9                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | negative number | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 10                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | special char    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 11                                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 9                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | negative number | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 10                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | special char    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 11                                       |


  Scenario Outline: ACAUTOCAS-3897:  Change the currency of installment amount in external liability
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
    When user change the currency of installment amount in "<Liability type>"
    Then currency of installment amount should be changed successfully
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Liability type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | external       | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Liability type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | external       | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Liability type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | external       | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Liability type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | external       | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |


  Scenario Outline: ACAUTOCAS-3898:  Edit the institute name in external liability detail
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
    When user fills the external liability details
    Then user should be able to edit the institute name
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
