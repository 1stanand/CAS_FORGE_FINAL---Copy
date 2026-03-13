@Epic-Applicant_Information
@AppInfoAdoption
@Liability
@AuthoredBy-ayush.garg
@ReviewedBy-None
@ReviewedByDEV
# ${ApplicantType:["indiv"]}
Feature: External liability details non mandatory field validation with occupation type as salaried

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3899:  Enter the expiry date <Var> in external liability details
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
    When enter the expiry date "<Var>" in external liability details
    Then expiry date should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in valid format                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | as more than current date      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | as less than date of birth     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 64                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 9                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 11                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 126                                      |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in valid format                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | as more than current date      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | as less than date of birth     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 64                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 9                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 11                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 126                                      |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | in valid format                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | as more than current date      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | as less than date of birth     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 64                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 9                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 11                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 126                                      |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in valid format                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | as more than current date      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | as less than date of birth     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 64                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 9                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 11                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 126                                      |


  Scenario Outline: ACAUTOCAS-3900:  Enter the ROI percentage <Var> in external liability details
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
    When enter the ROI percentage "<Var>" in external liability details
    Then ROI percentage should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in valid format                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 40                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 41                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 42                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 43                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 44                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 45                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in valid format                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 40                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 41                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 42                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 43                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 44                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 45                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | in valid format                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 40                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 41                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 42                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 43                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 44                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 45                                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in valid format                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 40                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 41                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 42                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 43                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 44                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 45                                       |


  Scenario Outline: ACAUTOCAS-3901:  Enter the number of defaults with <Var> format in external liability details
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
    When enter the number of defaults with "<Var>" format in external liability details
    Then number of defaults should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 76                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 77                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 78                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 76                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 77                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 78                                       |
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
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 76                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 77                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 78                                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 76                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 77                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 78                                       |


  Scenario Outline: ACAUTOCAS-3902:  Change the currency of sanction amount or credit limit in external liability details
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
    When user change the currency of sanction amount in external liability details
    Then currency of sanction amount should be changed successfully
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


  Scenario Outline: ACAUTOCAS-3903:  Change the currency of closure amount in external liability details
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
    When user change the currency of closure amount in external liability details
    Then currency of closure amount should be changed successfully
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


  Scenario Outline: ACAUTOCAS-3904:  Enter the closure amount <Var> in external liability details
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
    When enter the closure amount with "<Var>" format in external liability details
    Then closure amount should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity                 | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error | with maximum length            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | more than maximum length       | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error | in paise format                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity                 | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error | valid                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error | with maximum length            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | more than maximum length       | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error | in paise format                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity                 | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw any error | valid                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw any error | with maximum length            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject                   | more than maximum length       | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject                   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject                   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject                   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject                   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | does not throw any error | in paise format                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity                 | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error | with maximum length            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | more than maximum length       | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject                   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | does not throw any error | in paise format                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |


  Scenario Outline: ACAUTOCAS-3905:  Enter security given <Var> in external liability details
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
    When enter the security given with "<Var>" format in external liability details
    Then security given should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in valid format                    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum length(255)           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with more than maximum length(255) | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char except (-)       | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in valid format                    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum length(255)           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with more than maximum length(255) | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char except (-)       | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | in valid format                    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with maximum length(255)           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with more than maximum length(255) | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with special char except (-)       | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                                | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in valid format                    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum length(255)           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with more than maximum length(255) | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char except (-)       | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |


  Scenario Outline: ACAUTOCAS-3906:  Enter the description <Var> in external liability details
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
    When enter the description with "<Var>" in external liability details
    Then description should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                 | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid format        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | maximum length(255) | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                 | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid format        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | maximum length(255) | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                 | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | valid format        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | maximum length(255) | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
    # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                 | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid format        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | maximum length(255) | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |


  Scenario Outline: ACAUTOCAS-3907:  Enter the closure date <Var> in external liability details
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
    When enter the closure date with "<Var>" in external liability details
    Then closure date should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid format                    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | less than current date          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 66                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | less than date of birth         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 67                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and characters | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 86                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid format                    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | less than current date          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 66                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | less than date of birth         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 67                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and characters | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 86                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | valid format                    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | less than current date          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 66                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | less than date of birth         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 67                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with both digits and characters | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 86                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with special char               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with space                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid format                    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | less than current date          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 66                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | less than date of birth         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 67                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and characters | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 86                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |


  Scenario Outline: ACAUTOCAS-3908:  Edit the months on book in external liability detail
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
    Then user should not be able to edit the months on book
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


  Scenario Outline: ACAUTOCAS-3909:  Enter the joint liability percentage "<Var>" in external liability detail
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
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
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
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
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
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | valid                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
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
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 3                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 4                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 5                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 6                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 7                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |


  Scenario Outline: ACAUTOCAS-3910:  Enter the sanction amount "<Var>" in the external collateral
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
    When enter the sanction amount with "<Var>" format for external liability
    Then sanction amount should be "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 110                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 57                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 114                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 113                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 116                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 54                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | valid                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 110                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 57                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 114                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 113                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 116                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 54                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | valid                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 110                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 57                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 114                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 113                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 116                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 54                                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 110                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 57                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 114                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 113                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 116                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 54                                       |


  Scenario Outline: ACAUTOCAS-3911:  Enter the ROI percentage <Var> in external liability details in the external liability details
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
    When enter the ROI percentage "<Var>" in external liability details
    Then ROI percentage should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in valid format                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 40                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 41                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 42                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 43                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 44                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 45                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in valid format                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 40                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 41                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 42                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 43                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 44                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 45                                       |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | in valid format                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 40                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 41                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 42                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 43                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | reject   | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 44                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accept   | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 45                                       |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | in valid format                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 40                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 41                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 42                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 43                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | reject   | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 44                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accept   | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 45                                       |


  Scenario Outline: ACAUTOCAS-3912:  Enter the closure amount <Var> in external liability details in the external liability details
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
    When enter the closure amount with "<Var>" format in external liability details
    Then closure amount should "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
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


  Scenario Outline: ACAUTOCAS-3913:  Enter the sanction amount "<Var>" in the external liability details
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
    When enter the sanction amount with "<Var>" format for external liability
    Then sanction amount should be "<Validity>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 56                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 57                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 114                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 58                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 59                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | valid                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 56                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 57                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 114                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 58                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 59                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
    @Islamic
    @Release
@Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | valid                          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | with maximum value             | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | more than maximum value        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 56                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | with both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 57                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | with negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 114                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | with special char              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 58                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | with space                     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 59                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | with two decimal places        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                            | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | valid                          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 1                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with maximum value             | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 2                                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | more than maximum value        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 56                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 57                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 114                                      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with special char              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 58                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with space                     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 59                                       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with two decimal places        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | liability_details                 | 8                                        |
