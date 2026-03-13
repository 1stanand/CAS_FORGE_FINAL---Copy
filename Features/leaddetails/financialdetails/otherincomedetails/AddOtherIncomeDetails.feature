@Epic-Applicant_Information
@AuthoredBy-ayush.garg
@ReviewedBy-None
@ReviewedByDEV
@AppInfoAdoption
#FeatureID-ACAUTOCAS-160

#${ApplicantType:["indiv","nonindiv"]}
Feature: Add Other Income Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    @Sanity
  Scenario Outline: ACAUTOCAS-3939:  Add complete other income detail
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds complete other income detail
    Then other income detail should be saved successfully

    @Conventional
    @Release @Part-2
    @ImplementedBy-atul.mishra
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 2                                          |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |

  @Sanity
  Scenario Outline: ACAUTOCAS-3940:  Add mandatory other income detail
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds mandatory part of other income details
    Then other income detail should be saved successfully
    @Conventional
    @Release @Part-2
    @ImplementedBy-atul.mishra
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 2                                          |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |


    @Sanity
  Scenario Outline: ACAUTOCAS-3941:  Add multiple other income details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds multiple other income details
    Then multiple other income detail should be saved successfully
    @Conventional
    @Release @Part-2
    @ImplementedBy-atul.mishra
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 2                                          |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |


  Scenario Outline: ACAUTOCAS-3942:  Delete other income detail which contains additional details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds complete other income detail
    And user clicks on other income details
    And user deletes other income detail
    Then other income detail should be deleted successfully

    @Conventional
    @Release @Part-2
    @ImplementedBy-atul.mishra
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 2                                          |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |


  Scenario Outline: ACAUTOCAS-3943:  Delete other income detail
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user fills home page of personal information
    And user save personal information details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds mandatory part of other income details
    And user clicks on other income details
    And user deletes other income detail
    Then other income detail should be deleted successfully

    @Conventional
    @Release @Part-2
    @ImplementedBy-atul.mishra
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 2                                          |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 2                                          |


#  @Release1
#Scenario Outline: ACAUTOCAS-3944:  Change currency of income amount
#    Given user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user create new application of personal loan for individual
#    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
#    And user fills home page of personal information
#    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
#    And user fills and saves employment details for occupation as salaried
#    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
#    When user changes the currency of income amount
#    Then currency should get changed successfully
#
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
#      | LoginDetailsCAS.xlsx | LoginData | 7         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 8                                          |

  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-3945:  Add income amount <Var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds income amount "<Var>"
    And user saves the other income detail
    Then amount should get "<Validity>"
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in valid format              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 8                                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with maximum length          | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 9                                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | more than maximum length     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 10                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 11                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 12                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in special character         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 13                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as white space               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 14                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in decimal                   | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 15                                         |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in valid format              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 8                                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with maximum length          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 9                                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | more than maximum length     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 10                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 11                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 12                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 13                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as white space               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 14                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in decimal                   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 15                                         |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | in valid format              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 8                                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | with maximum length          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 9                                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | more than maximum length     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 10                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | in both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 11                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | as negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 12                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | in special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 13                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | as white space               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 14                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | in decimal                   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 15                                         |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in valid format              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 8                                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with maximum length          | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 9                                          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | more than maximum length     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 10                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 11                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 12                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 13                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as white space               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 14                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in decimal                   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 15                                         |


  Scenario Outline: ACAUTOCAS-3946:  In other income detail add percentage of other income in total income
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds income percentage "<Var>"
    And user saves the other income detail
    Then percentage should get "<Validity>"

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in valid format              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 16                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in invalid format            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 17                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 18                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 19                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in special character         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 20                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as white space               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 21                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in decimal                   | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 22                                         |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in valid format              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 16                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in invalid format            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 17                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 18                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 19                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 20                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as white space               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 21                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in decimal                   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 22                                         |
    @FixedJsClick2
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | in valid format              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 16                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | in invalid format            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 17                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | in both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 18                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | as negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 19                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | in special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 20                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | as white space               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 21                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | in decimal                   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 22                                         |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in valid format              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 16                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in invalid format            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 17                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 18                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 19                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 20                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as white space               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 21                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in decimal                   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 22                                         |


  Scenario Outline: ACAUTOCAS-3947:  Add sharing percentage in other income details <Var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds sharing percentage "<Var>"
    And user saves the other income detail
    Then sharing percentage should get "<Validity>"

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in valid format              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 23                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in invalid format            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 24                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 25                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 26                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in special character         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 27                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as white space               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 28                                         |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in valid format              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 23                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in invalid format            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 24                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 25                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 26                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 27                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as white space               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 28                                         |
    @FixedJsClick2
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | in valid format              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 23                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | in invalid format            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 24                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | in both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 25                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | as negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 26                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | in special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 27                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | as white space               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 28                                         |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | in valid format              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 23                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in invalid format            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 24                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 25                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 26                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | in special character         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 27                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | as white space               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 28                                         |


  Scenario Outline: ACAUTOCAS-3948:  Edit net amount in other income detail
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    And user adds mandatory part of other income details
    When user tries to edit net income detail
    Then net income amount should not be editable

    @Conventional
    @Release @Part-2
    @ImplementedBy-atul.mishra
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 29                                         |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 29                                         |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 29                                         |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 29                                         |


  Scenario Outline: ACAUTOCAS-3949:  Change in net amount corresponding to earning frequency chosen as <Var>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user enters income amount
    And select frequency as "<Var>"
    Then net amount should be evaluated as "<Times>" times of income amount
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Times | Var         | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 12    | Monthly     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 30                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 4     | Quarterly   | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 31                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 1     | Annually    | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 32                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 6     | Bi-Monthly  | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 33                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 26    | Fortnightly | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 34                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 2     | Half Yearly | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 35                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 1     | OneTime     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 36                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 52    | Weekly      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 37                                         |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Times | Var         | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 12    | Monthly     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 30                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 4     | Quarterly   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 31                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 1     | Annually    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 32                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 6     | Bi-Monthly  | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 33                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 26    | Fortnightly | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 34                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 2     | Half Yearly | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 35                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 1     | OneTime     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 36                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 52    | Weekly      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 37                                         |
    @Islamic
    @Release
@Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Times | Var         | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | 12    | Monthly     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 30                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | 4     | Quarterly   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 31                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | 1     | Annually    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 32                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | 6     | Bi-Monthly  | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 33                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | 26    | Fortnightly | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 34                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | 2     | Half Yearly | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 35                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | 1     | OneTime     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 36                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | 52    | Weekly      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 37                                         |
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Times | Var         | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 12    | Monthly     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 30                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 4     | Quarterly   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 31                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 1     | Annually    | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 32                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 6     | Bi-Monthly  | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 33                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 26    | Fortnightly | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 34                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 2     | Half Yearly | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 35                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 1     | OneTime     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 36                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | 52    | Weekly      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 37                                         |
