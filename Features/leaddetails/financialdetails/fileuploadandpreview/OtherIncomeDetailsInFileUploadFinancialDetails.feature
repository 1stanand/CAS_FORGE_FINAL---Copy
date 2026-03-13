@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
@IncomeExpense
@CommonAdoption
  # ${ApplicantType:["indiv"]}

Feature:Other income details in file upload financial details

  Background:

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#  In default workflow Recommendation stage is not applicable for all LoBs. Please add comment for Recommendation stage - check workflow for recommendation stage and implement.


  #FeatureID-ACAUTOCAS-160
  @Sanity
  Scenario Outline: ACAUTOCAS-9811: Add <Single_Multiple> other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    When user fill other income details with "<Single_Multiple>" income head
    Then "<Single_Multiple>" other income details should be added
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> | <Category> |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> | <Category> |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> | <Category> |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9821: Required <Field> field validation in new income detail pop up screen of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user open other income details accordion
    When user click on add more details in other income details
    Then Required "<Field>" field should be present in required field
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Field          | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field          | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field          | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | Key |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Field          | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9822: <Field> field validation in all fields in new income detail pop up screen of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user open other income details accordion
    When user click on add more details in other income details
    Then "<Field>" field should be present in All Fields of new income detail
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Field                 | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Net Amount            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Mode Of Payment       | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Applicant type        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Name                  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Sharing %             | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Net Amount            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Mode Of Payment       | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Applicant type        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Name                  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Sharing %             | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field                 | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Net Amount            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Mode Of Payment       | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Applicant type        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Name                  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Sharing %             | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Net Amount            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Mode Of Payment       | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Applicant type        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Name                  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Sharing %             | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field                 | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | Key |
      | Net Amount            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Mode Of Payment       | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Applicant type        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Name                  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Sharing %             | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Net Amount            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Mode Of Payment       | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Applicant type        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Name                  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Sharing %             | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Field                 | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Net Amount            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Mode Of Payment       | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Applicant type        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Name                  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Sharing %             | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Net Amount            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Mode Of Payment       | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Applicant type        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Name                  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Sharing %             | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9814: Save other income details without filling <Field> field in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user open other income details accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    When user fills all fields except "<Field>" field to save other income details
    And user save the other income details
    Then other income details not saved with an error message
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Field         | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Income Head   | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> |          |     |
      | Income Source | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> |          |     |
      | Frequency     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> |          |     |
      | Amount        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> |          |     |
      | Percentage    | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> |          |     |
      | Sharing %     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> |          |     |
      | Income Head   | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> |          |     |
      | Income Source | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> |          |     |
      | Frequency     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> |          |     |
      | Amount        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> |          |     |
      | Percentage    | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> |          |     |
      | Sharing %     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field         | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Income Head   | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> |          |     |
      | Income Source | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> |          |     |
      | Frequency     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> |          |     |
      | Amount        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> |          |     |
      | Percentage    | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> |          |     |
      | Sharing %     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> |          |     |
      | Income Head   | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> |          |     |
      | Income Source | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> |          |     |
      | Frequency     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> |          |     |
      | Amount        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> |          |     |
      | Percentage    | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> |          |     |
      | Sharing %     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field         | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | Income Head   | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> | <Category> |     |
      | Income Source | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> | <Category> |     |
      | Frequency     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> | <Category> |     |
      | Amount        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> | <Category> |     |
      | Percentage    | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> | <Category> |     |
      | Sharing %     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> | <Category> |     |
      | Income Head   | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> | <Category> |     |
      | Income Source | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> | <Category> |     |
      | Frequency     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> | <Category> |     |
      | Amount        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> | <Category> |     |
      | Percentage    | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> | <Category> |     |
      | Sharing %     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> | <Category> |     |

 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Field         | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Income Head   | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> |          |     |
      | Income Source | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> |          |     |
      | Frequency     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> |          |     |
      | Amount        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> |          |     |
      | Percentage    | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> |          |     |
      | Sharing %     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> |          |     |
      | Income Head   | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> |          |     |
      | Income Source | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> |          |     |
      | Frequency     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> |          |     |
      | Amount        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> |          |     |
      | Percentage    | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> |          |     |
      | Sharing %     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9815: Field type validation of <Field> in other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    When user open other income details accordion
    Then "<Field>" field of other details should be "<Field_Type>"
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Amount              | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Amount              | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Amount              | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Amount              | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | Key |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Amount              | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Amount              | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Amount              | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Amount              | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-160
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-9816: <Field_Name> field validation with <Validity> <InputType> in other income details of file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    When user fills "<Field_Name>" field with "<Validity>" in other income details
    Then "<Field_Name>" field of other details "<Throws_notThrows>"
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows         | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | value more than 18 digits                         | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | characters                                        | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | special characters                                | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | alphanumeric                                      | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> |          |     |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> |          |     |
      | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | value more than 18 digits                         | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | characters                                        | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | special characters                                | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | alphanumeric                                      | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> |          |     |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows         | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | value more than 18 digits                         | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | characters                                        | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | special characters                                | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | alphanumeric                                      | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> |          |     |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> |          |     |
      | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | value more than 18 digits                         | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | characters                                        | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | special characters                                | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | alphanumeric                                      | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> |          |     |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows         | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> | <Category> |     |
      | Amount     | invalid  | value more than 18 digits                         | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> | <Category> |     |
      | Amount     | invalid  | characters                                        | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> | <Category> |     |
      | Amount     | invalid  | special characters                                | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> | <Category> |     |
      | Amount     | invalid  | alphanumeric                                      | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> | <Category> |     |
      | Percentage | valid    | value between 0 to 100                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> | <Category> |     |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> | <Category> |     |
      | Percentage | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> | <Category> |     |
      | Percentage | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> | <Category> |     |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> | <Category> |     |
      | Sharing    | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> | <Category> |     |
      | Sharing    | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> | <Category> |     |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> | <Category> |     |
      | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> | <Category> |     |
      | Amount     | invalid  | value more than 18 digits                         | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> | <Category> |     |
      | Amount     | invalid  | characters                                        | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> | <Category> |     |
      | Amount     | invalid  | special characters                                | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> | <Category> |     |
      | Amount     | invalid  | alphanumeric                                      | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> | <Category> |     |
      | Percentage | valid    | value between 0 to 100                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> | <Category> |     |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> | <Category> |     |
      | Percentage | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> | <Category> |     |
      | Percentage | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> | <Category> |     |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> | <Category> |     |
      | Sharing    | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> | <Category> |     |
      | Sharing    | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> | <Category> |     |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> | <Category> |     |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> | <Category> |     |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows         | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | value more than 18 digits                         | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | characters                                        | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | special characters                                | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | alphanumeric                                      | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> |          |     |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> |          |     |
      | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | value more than 18 digits                         | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | characters                                        | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | special characters                                | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | alphanumeric                                      | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100                            | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> |          |     |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | negative values                                   | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value more  than 100                              | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an                 | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9817: Dependent field <DependentFields> should be <Expected_Behaviour> based on <Fields> in other income details of file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    When user fills other income details
    Then net Amount should be calculated "<calculation_type>"
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Frequency   | calculation_type | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Annually    | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Bi-Monthly  | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Fortnightly | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Half Yearly | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |
      | Monthly     | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 148                                        | <ApplicantType> |          |     |
      | OneTime     | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 149                                        | <ApplicantType> |          |     |
      | Weekly      | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 150                                        | <ApplicantType> |          |     |
      | Annually    | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Bi-Monthly  | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Fortnightly | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Half Yearly | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |
      | Monthly     | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 148                                        | <ApplicantType> |          |     |
      | OneTime     | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 149                                        | <ApplicantType> |          |     |
      | Weekly      | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 150                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Frequency   | calculation_type | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Annually    | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                             | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Bi-Monthly  | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                             | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Fortnightly | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                             | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Half Yearly | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                             | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |
      | Monthly     | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                             | financial_details.xlsx | other_income_details                | 148                                        | <ApplicantType> |          |     |
      | OneTime     | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                             | financial_details.xlsx | other_income_details                | 149                                        | <ApplicantType> |          |     |
      | Weekly      | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                             | financial_details.xlsx | other_income_details                | 150                                        | <ApplicantType> |          |     |
      | Annually    | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                             | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Bi-Monthly  | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Fortnightly | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Half Yearly | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |
      | Monthly     | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 148                                        | <ApplicantType> |          |     |
      | OneTime     | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 149                                        | <ApplicantType> |          |     |
      | Weekly      | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 150                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2

    Examples:
      | Frequency   | calculation_type | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | Annually    | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> | <Category> |     |
      | Bi-Monthly  | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> | <Category> |     |
      | Fortnightly | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> | <Category> |     |
      | Half Yearly | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> | <Category> |     |
      | Monthly     | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 148                                        | <ApplicantType> | <Category> |     |
      | OneTime     | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 149                                        | <ApplicantType> | <Category> |     |
      | Weekly      | correctly        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 150                                        | <ApplicantType> | <Category> |     |
      | Annually    | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> | <Category> |     |
      | Bi-Monthly  | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> | <Category> |     |
      | Fortnightly | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> | <Category> |     |
      | Half Yearly | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> | <Category> |     |
      | Monthly     | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 148                                        | <ApplicantType> | <Category> |     |
      | OneTime     | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 149                                        | <ApplicantType> | <Category> |     |
      | Weekly      | correctly        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 150                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Annually    | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Fortnightly | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Half Yearly | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |
      | Monthly     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 148                                        | <ApplicantType> |          |     |
      | OneTime     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 149                                        | <ApplicantType> |          |     |
      | Weekly      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 150                                        | <ApplicantType> |          |     |
      | Annually    | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Fortnightly | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Half Yearly | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |
      | Monthly     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 148                                        | <ApplicantType> |          |     |
      | OneTime     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 149                                        | <ApplicantType> |          |     |
      | Weekly      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 150                                        | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9812: Adding multiple other income details with same income head in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    When user fill other income details with "multiple" income head
    And user save the other income details
    Then other income details not saved with an error message
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9813: Delete the <Single_Multiple> added other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    When user fill other income details with "<Single_Multiple>" income head
    And user deletes other income detail
    Then other income detail should be deleted successfully
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> | <Category> |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-160
  @Perishable
  Scenario Outline: ACAUTOCAS-9818: Net Amount should be changed based on <Field> changes in other income details of file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    When user change the "<Field>" value
    Then Net Amount (Annual) should be calculated correctly
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Field      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Frequency  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Amount     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Percentage | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Sharing %  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |
      | Frequency  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Amount     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Percentage | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Sharing %  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Frequency  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Amount     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Percentage | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Sharing %  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |
      | Frequency  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Amount     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Percentage | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Sharing %  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | Frequency  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> | <Category> |     |
      | Amount     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> | <Category> |     |
      | Percentage | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> | <Category> |     |
      | Sharing %  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> | <Category> |     |
      | Frequency  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> | <Category> |     |
      | Amount     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> | <Category> |     |
      | Percentage | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> | <Category> |     |
      | Sharing %  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Field      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Frequency  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Amount     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Percentage | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Sharing %  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |
      | Frequency  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Amount     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Percentage | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Sharing %  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9819: Adding more details in other income details of file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    When user add more details in other income details
    Then more details should be add in other income details
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9820: <NonMandateField> field validation in new income detail pop up screen of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user open other income details accordion
    When user click on add more details in other income details
    Then "<NonMandateField>" should be non editable field
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | NonMandateField       | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Net Amount            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | NonMandateField       | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Net Amount            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | NonMandateField       | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | Key |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Net Amount            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | NonMandateField       | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Net Amount            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9823: Field type validation of <Field> in new income detail pop up screen of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user open other income details accordion
    When user click on add more details in other income details
    Then "<Field>" field of other details should be "<Field_Type>"
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Field                     | Field_Type | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Mode Of Payment           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Applicant type            | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Name                      | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Sharing % in more details | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Mode Of Payment           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Applicant type            | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Name                      | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Sharing % in more details | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field                     | Field_Type | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Mode Of Payment           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Applicant type            | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Name                      | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Sharing % in more details | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | Mode Of Payment           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Applicant type            | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Name                      | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
      | Sharing % in more details | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field                     | Field_Type | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | Key |
      | Mode Of Payment           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Applicant type            | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Name                      | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Sharing % in more details | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | Mode Of Payment           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Applicant type            | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Name                      | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
      | Sharing % in more details | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Field                     | Field_Type | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | Mode Of Payment           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Applicant type            | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Name                      | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Sharing % in more details | input      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | Mode Of Payment           | drop down  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Applicant type            | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Name                      | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
      | Sharing % in more details | input      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9828: Sum of sharing percent should be <Less_Equal> in other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    When user add more details in other income details
    Then income sharing details with "<Less_Equal>" sharing percent should "<Added>" successfully
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Less_Equal    | Added | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | less than 100 | add   | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     |
      | equal to 100  | add   | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     |
      | less than 100 | add   | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     |
      | equal to 100  | add   | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     |
# ${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    @LoggedBug-CAS-229913
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> |          |     |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Less_Equal    | Added | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | less than 100 | add   | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     |
      | equal to 100  | add   | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     |
      | less than 100 | add   | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     |
      | equal to 100  | add   | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    @LoggedBug-CAS-229913
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> |          |     |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Less_Equal    | Added | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | less than 100 | add   | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> | <Category> |     |
      | equal to 100  | add   | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> | <Category> |     |
      | less than 100 | add   | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> | <Category> |     |
      | equal to 100  | add   | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> | <Category> |     |

    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> | <Category> |     |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> |          |     |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-160
  @LoggedBug-CAS-230489
  Scenario Outline: ACAUTOCAS-9825: Close the new income detail pop up screen of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user open other income details accordion
    And user click on add more details in other income detail
    When user "<Action>" the new income detail pop up screen
    Then new income detail pop up screen should be "<Action>"
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Action | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | close  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | close  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Action | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | close  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | close  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Action | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | Key |
      | close  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | close  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Action | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | close  | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | close  | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9826: Minimize the new income detail pop up screen of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user open other income details accordion
    And  user click on add more details in other income details
    When user "<Action>" the new income detail pop up screen
    Then new income detail pop up screen should be "<Action>"
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Action   | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | minimize | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | minimize | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Action   | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | minimize | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | minimize | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Action   | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | Key |
      | minimize | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | minimize | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Action   | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | minimize | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | minimize | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
    
  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9827: Maximize the minimized new income detail pop up screen of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user open other income details accordion
    And user click on add more details in other income details
    And user minimize the other income detail pop up screen of income details
    When user maximize the minimized other income detail pop up screen of income details
    Then other income detail pop up screen should be maximized of income details
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Action   | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | maximize | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | maximize | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Action   | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | maximize | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> |          |     |
      | maximize | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Action   | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | Key |
      | maximize | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | <ApplicantType> | <Category> |     |
      | maximize | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Action   | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key |
      | maximize | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | <ApplicantType> |          |     |
      | maximize | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | <ApplicantType> |          |     |

    @Perishable
  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9824: <Field_Name> field validation with <Validity> <InputType> in new income detail pop up screen of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in new income detail of other income details
    Then "<Field_Name>" field in other details with "<InputType>" "<Throws_notThrows>"
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-pallavi.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> |          |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with underscore                         | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with hyphen                             | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> |          |     |
      | Name           | invalid  | negative number                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> |          |     |
      | Name           | invalid  | special character                                 | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> |          |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> |          |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 167                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | negative values                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 168                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value more  than 100                              | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 169                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 170                                        | <ApplicantType> |          |     |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> |          |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with underscore                         | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with hyphen                             | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> |          |     |
      | Name           | invalid  | negative number                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> |          |     |
      | Name           | invalid  | special character                                 | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> |          |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> |          |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 167                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | negative values                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 168                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value more  than 100                              | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 169                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 170                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> |          |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with underscore                         | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with hyphen                             | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> |          |     |
      | Name           | invalid  | negative number                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> |          |     |
      | Name           | invalid  | special character                                 | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> |          |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> |          |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 167                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | negative values                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 168                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value more  than 100                              | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 169                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 170                                        | <ApplicantType> |          |     |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> |          |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with underscore                         | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with hyphen                             | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> |          |     |
      | Name           | invalid  | negative number                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> |          |     |
      | Name           | invalid  | special character                                 | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> |          |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> |          |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 167                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | negative values                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 168                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value more  than 100                              | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 169                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 170                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> | <Category> |     |
      | Name           | invalid  | character with underscore                         | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> | <Category> |     |
      | Name           | invalid  | character with hyphen                             | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> | <Category> |     |
      | Name           | invalid  | negative number                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> | <Category> |     |
      | Name           | invalid  | special character                                 | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> | <Category> |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 167                                        | <ApplicantType> | <Category> |     |
      | Sharing %      | invalid  | negative values                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 168                                        | <ApplicantType> | <Category> |     |
      | Sharing %      | invalid  | value more  than 100                              | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 169                                        | <ApplicantType> | <Category> |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 170                                        | <ApplicantType> | <Category> |     |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> | <Category> |     |
      | Name           | invalid  | character with underscore                         | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> | <Category> |     |
      | Name           | invalid  | character with hyphen                             | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> | <Category> |     |
      | Name           | invalid  | negative number                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> | <Category> |     |
      | Name           | invalid  | special character                                 | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> | <Category> |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 167                                        | <ApplicantType> | <Category> |     |
      | Sharing %      | invalid  | negative values                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 168                                        | <ApplicantType> | <Category> |     |
      | Sharing %      | invalid  | value more  than 100                              | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 169                                        | <ApplicantType> | <Category> |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 170                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> |          |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with underscore                         | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with hyphen                             | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> |          |     |
      | Name           | invalid  | negative number                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> |          |     |
      | Name           | invalid  | special character                                 | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> |          |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> |          |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 167                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | negative values                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 168                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value more  than 100                              | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 169                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an            | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 170                                        | <ApplicantType> |          |     |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> |          |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with underscore                         | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with hyphen                             | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> |          |     |
      | Name           | invalid  | negative number                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> |          |     |
      | Name           | invalid  | special character                                 | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> |          |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> |          |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 167                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | negative values                                   | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 168                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value more  than 100                              | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 169                                        | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an            | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 170                                        | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9829: Primary applicant sharing percentage validation in new income detail pop up screen of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    When user click on add more details in other income details
    Then primary applicant sharing should be display same as filled in other income details
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9830: Add <Single_Multiple> income sharing details of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    When user click on add more details in other income details
    Then "<Single_Multiple>" income sharing details should be added in other income details
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-pallavi.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9831: Delete <Single_Multiple> income sharing details of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    When user add "<Single_Multiple>" income sharing details in more details
    And user delete the added income sharing details in more details
    Then added income sharing details should be deleted in more details
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-richa.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9833: Show the <NumberOfRows> rows of income sharing details in grid of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    And user add "multiple" income sharing details in more details
    When user selects "<NumberOfRows>" number of rows to show income sharing details in grid
    Then selected "<NumberOfRows>" rows "<Display>" in case total entries are "<More_Less>" than selected number in sharing detail
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-pallavi.singh
    @Release @Part-2
    @Conventional
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @FixedJsClick2
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9834: Validation of pagination in income sharing details of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    And user fills multiple income sharing details for pagination
    When "<Page>" page of grid is open in other income details
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for "<Page>" in other income details
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-pallavi.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9832:  Search income sharing details on the basis of <Grid> of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    And user add "multiple" income sharing details in more details
    When user search details on the basis of "<Grid>" in other income details
    Then user should be able to search on the basis of "<Grid>" in other income details
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-pallavi.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Grid           | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Grid           | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Grid           | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 135                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 134                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Grid           | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Professional     | employment_details.xlsx | home                   | 0                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Applicant type | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Sharing %      | <ApplicationStage> | <ProductType> | Self Employed Non Professional | employment_details.xlsx | home                   | 4                             | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-9835: Validating all Pagination in income sharing details of other income details in file upload financial details for <Occupation_Type> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation_Type>"
    And user open financial details
    And user open file upload accordion for file upload
    And user reads data from the excel file "financial_details.xlsx" under sheet "other_income_details" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    And user fills multiple income sharing details for pagination
    When "<Page>" page of grid is open in other income details
    And user click on "<Paginate_Btn>" of sharing details
    Then "<Page>" page should work successfully in income detail
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-pallavi.singh
    @Release @Part-2
    @Conventional
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetails_home_rowNum | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | Self Employed Professional     | 0                             | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | Self Employed Professional     | 0                             | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | 4                             | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | Self Employed Non Professional | 4                             | 171                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetails_home_rowNum | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | Self Employed Professional     | 135                           | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | Self Employed Professional     | 135                           | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | 134                           | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | Self Employed Non Professional | 134                           | 171                                        | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetails_home_rowNum | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | Self Employed Professional     | 135                           | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | Self Employed Professional     | 135                           | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | 134                           | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | Self Employed Non Professional | 134                           | 171                                        | <ApplicantType> | <Category> |     |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | Occupation_Type                | EmploymentDetails_home_rowNum | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | Self Employed Professional     | 0                             | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | Self Employed Professional     | 0                             | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | Self Employed Non Professional | 4                             | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | Self Employed Non Professional | 4                             | 171                                        | <ApplicantType> |          |     |
