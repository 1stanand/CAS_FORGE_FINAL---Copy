@Epic-Applicant_Information
@AuthoredBy-ayush.garg
@ReviewedBy-None
@ReviewedByDEV
@AppInfoAdoption

#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-160
Feature: Add Other Income Details with More Detail

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-3950:  Add other income detail without Applicants Type
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds other income detail "<Var>"
    Then other income details should get "<Validity>"

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | without Applicant Type | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 38                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | without Applicant Type | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 38                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | without Applicant Type | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 38                                         |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | without Applicant Type | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 38                                         |

  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-3951:  Add other income detail "<Var>" name
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds other income detail "<Var>" name
    Then other income details should get "<Validity>"

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | without Applicants        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 39                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with valid                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 40                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with negative number as   | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 41                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with special character as | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 42                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with space in between     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 43                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | without Applicants        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 39                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with valid                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 40                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with negative number as   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 41                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with special character as | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 42                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with space in between     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 43                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Var                       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | without Applicants        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 39                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | with valid                | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 40                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | with negative number as   | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 41                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | with special character as | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 42                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | with space in between     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 43                                         |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Var                       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | without Applicants        | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 39                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with valid                | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 40                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with negative number as   | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 41                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | with special character as | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 42                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | with space in between     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 43                                         |


  Scenario Outline: ACAUTOCAS-3952:  Add other income detail "<Var>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds sharing "<Field>" "<Var>"
    Then other income details should get "<Validity>"
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Field      | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | percentage | in valid format              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 44                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | in invalid format            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 45                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | in both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 46                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | as negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 47                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | with special characters      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 48                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | as white space               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 49                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Field      | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | percentage | in valid format              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 44                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | in invalid format            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 45                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | in both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 46                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | as negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 47                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | with special characters      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 48                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | as white space               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 49                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Validity | Field      | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | accepted | percentage | in valid format              | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 44                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | percentage | in invalid format            | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 45                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | percentage | in both digits and character | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 46                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | percentage | as negative number           | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 47                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | percentage | with special characters      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 48                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | rejected | percentage | as white space               | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 49                                         |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Validity | Field      | Var                          | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | accepted | percentage | in valid format              | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 44                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | in invalid format            | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 45                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | in both digits and character | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 46                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | as negative number           | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 47                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | with special characters      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 48                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | rejected | percentage | as white space               | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 49                                         |


  Scenario Outline: ACAUTOCAS-3953:  Edit net amount in other income detail with more detail
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user edits net amount in other income detail
    Then net amount should not be editable

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 50                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 50                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 50                                         |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 50                                         |


  Scenario Outline: ACAUTOCAS-3954:  Edit effective tax rate in other income detail
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user edits effective tax rate in other income detail
    Then effective tax rate should not be editable

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 51                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 51                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 51                                         |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 51                                         |

  @Perishable
  Scenario Outline: ACAUTOCAS-3955:  Net amount calculation according to <Field>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds "<Field>" in other income detail
    Then net amount should be auto computed correctly
    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                                                              | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | income amount, income frequency, percentage and sharing percentage | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 52                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | percentage and sharing percentage                                  | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 53                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | percentage                                                         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 54                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | sharing percentage                                                 | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 55                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | income amount                                                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 60                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                                                              | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | income amount, income frequency, percentage and sharing percentage | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 52                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | percentage and sharing percentage                                  | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 53                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | percentage                                                         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 54                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | sharing percentage                                                 | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 55                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | income amount                                                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 60                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field                                                              | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | income amount, income frequency, percentage and sharing percentage | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 52                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | percentage and sharing percentage                                  | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 53                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | percentage                                                         | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 54                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | sharing percentage                                                 | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 55                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | income amount                                                      | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 60                                         |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                                                              | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | income amount, income frequency, percentage and sharing percentage | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 52                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | percentage and sharing percentage                                  | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 53                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | percentage                                                         | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 54                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | sharing percentage                                                 | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 55                                         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | income amount                                                      | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 60                                         |

  @FixedTest28
  Scenario Outline: ACAUTOCAS-3956:  Add primary and secondary income sharing percentage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds primary and secondary income sharing percentage with sum more than hundred percentage
    Then primary and secondary income sharing percentage should not be saved

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 56                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 56                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 56                                         |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 56                                         |

  @Sanity
  Scenario Outline: ACAUTOCAS-3957:  Add income sharing details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds income sharing details
    Then income sharing details should be saved successfully

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 57                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 57                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 57                                         |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 57                                         |

  @Sanity
  Scenario Outline: ACAUTOCAS-3958:  Add income sharing details multiple times
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds multiple income sharing details
    Then multiple income sharing details should be saved successfully

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 58                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 58                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 58                                         |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 58                                         |


  Scenario Outline: ACAUTOCAS-3959:  Delete the income sharing details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user open Employment Details
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user deletes an income sharing details
    Then income sharing details should be deleted successfully

    @Conventional
    @Release @Part-2
    @ImplementedBy-ayush.garg
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 59                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 59                                         |
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-akash.bansal
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 136                           | financial_details.xlsx | other_income_details                | 59                                         |
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | personal_information.xlsx | home              | 0                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 59                                         |
