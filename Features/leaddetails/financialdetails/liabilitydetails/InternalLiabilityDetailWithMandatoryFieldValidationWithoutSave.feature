@Epic-Applicant_Information
@AppInfoAdoption
@Liability
@AuthoredBy-atul.mishra
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
#${ApplicantType:["indiv"]}
Feature: Internal liability detail mandatory field validation with occupation type as salaried without save

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-3932:  Enter the principal outstanding
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
    When user enter the principal outstanding "<Var>" format
    Then principal outstanding should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
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


  Scenario Outline: ACAUTOCAS-3933:  Enter the installment amount
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
    When user enter the installment amount "<Var>" format
    Then installment should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
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


  Scenario Outline: ACAUTOCAS-3934:  Enter the emi start date
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
    When user fills "EMI Start Date/Issue Date" field with "<var>" in "internal" liability details
    Then "EMI Start Date/Issue Date" field with <var> "<Throws_notThrows>" in liability details
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid date                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 8                             | financial_details.xlsx | liability_details                 | 27                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | more than current date          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 8                             | financial_details.xlsx | liability_details                 | 28                                       | does not throw any error |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | before 1942                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 8                             | financial_details.xlsx | liability_details                 | 29                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and characters | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 8                             | financial_details.xlsx | liability_details                 | 319                                      | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special char               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 8                             | financial_details.xlsx | liability_details                 | 320                                      | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 8                             | financial_details.xlsx | liability_details                 | 321                                      | throws an error with error message |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid date                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 27                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | more than current date          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 28                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | before 1942                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 29                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and characters | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 304                                      | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special char               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 9                                        | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 10                                       | throws an error with error message |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | var                             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | valid date                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 27                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | more than current date          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 28                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | before 1942                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 29                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with both digits and characters | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 304                                      | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with special char               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 9                                        | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | with space                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | liability_details                 | 10                                       | throws an error with error message |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | var                             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | Throws_notThrows                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | valid date                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 27                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | more than current date          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 28                                       | does not throw any error           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | before 1942                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 29                                       | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with both digits and characters | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 292                                      | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with special char               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 9                                        | throws an error with error message |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | with space                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 10                                       | throws an error with error message |


  Scenario Outline: ACAUTOCAS-3935:  Fill applicant liability detail without liability type
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
    When user does not fill the liability type
    Then liability type field throws an error
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
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


  Scenario Outline: ACAUTOCAS-3936:  Edit the institute name in internal liability detail
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
    When user fills the internal liability details
    Then user should be not able to edit the institute name
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
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


  Scenario Outline: ACAUTOCAS-3937:  Change the currency of principal outstanding
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
    @ImplementedBy-tushar.chauhan
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


  Scenario Outline: ACAUTOCAS-3938:  Change the currency of installment amount
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
    When user change the currency of installment amount
    Then currency of installment amount should be changed successfully
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
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
