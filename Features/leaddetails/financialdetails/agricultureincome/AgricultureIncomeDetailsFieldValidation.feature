@Epic-Applicant_Information
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@Reconciled
@ReviewedByDEV

  # ${ApplicantType:["indiv"]}
    #FeatureID-ACAUTOCAS-191
Feature: Agriculture Income detail field validation with occupation type as Agriculture

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Sanity
  Scenario Outline: ACAUTOCAS-1678:  Add Agriculture Income Details with <Var> fields
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user add Agriculture Income Details with "<Var>" fields
    And navigates to save and compute
    Then Agriculture Income Details should save successfully
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Var       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | all       | financial_details.xlsx | agriculture_income      | 0                              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | mandatory | financial_details.xlsx | agriculture_income      | 1                              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
  #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | all       | financial_details.xlsx | agriculture_income      | 0                              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | mandatory | financial_details.xlsx | agriculture_income      | 1                              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
   #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   |
      | all       | financial_details.xlsx | agriculture_income      | 0                              | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
      | mandatory | financial_details.xlsx | agriculture_income      | 1                              | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
    @NotImplemented
   # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Var       | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | all       | financial_details.xlsx | agriculture_income      | 0                              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | mandatory | financial_details.xlsx | agriculture_income      | 1                              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |

  @Sanity
  Scenario Outline: ACAUTOCAS-1679:  Add multiple <Var> Agriculture Income Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user add multiple <Var> Agriculture Income fields
    And navigates to save and compute
    Then Agriculture Income Details should save successfully
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_income      | 0                              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_income      | 0                              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_income      | 0                              | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
    @NotImplemented
   # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_income      | 0                              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |

  Scenario Outline: ACAUTOCAS-1680:  Delete "<Var>" Agriculture Income Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user add multiple <Var> Agriculture Income fields
    And user delete multiple <Var> Agriculture Income fields
    Then delete Agriculture Income Details successfully
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_income      | 0                              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_income      | 0                              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_income      | 0                              | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
    @NotImplemented
   # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Var | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_income      | 0                              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |

  Scenario Outline: ACAUTOCAS-1681:  In Selection of <Field_Name> <Dependent_Field> is autofilled
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills "<Field_Name>" in Agriculture income details
    Then "<Dependent_Field>" should be auto computed correctly in agriculture income details
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Field_Name                          | Dependent_Field      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | financial_details.xlsx | agriculture_income      | 0                              | Rate(Per hour),Usage Duration(Hour) | Total Income(Annual) | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Field_Name                          | Dependent_Field      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | financial_details.xlsx | agriculture_income      | 0                              | Rate(Per hour),Usage Duration(Hour) | Total Income(Annual) | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
 #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Field_Name                          | Dependent_Field      | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   |
      | financial_details.xlsx | agriculture_income      | 0                              | Rate(Per hour),Usage Duration(Hour) | Total Income(Annual) | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
    @NotImplemented
   # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Field_Name                          | Dependent_Field      | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | financial_details.xlsx | agriculture_income      | 0                              | Rate(Per hour),Usage Duration(Hour) | Total Income(Annual) | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |

  Scenario Outline: ACAUTOCAS-1682:  Saving Agriculture income detail without <Field_Name>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills the Agriculture income details without "<Field_Name>"
    And navigates to save and compute
    Then Agriculture income details not saved with "<Throws_notThrows>"
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Field_Name           | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | Expense Type         | financial_details.xlsx | agriculture_income      | 0                              | throws an error with error message | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Rate(Per hour)       | financial_details.xlsx | agriculture_income      | 0                              | throws an error with error message | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Usage Duration(Hour) | financial_details.xlsx | agriculture_income      | 0                              | throws an error with error message | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
# | Rate(Per hour) | financial_details.xlsx | agriculture_income | 5 | throws an error with error message |<ProductType> | <ApplicationStage> | Agriculture    |
# | Usage Duration(Hour) | financial_details.xlsx | agriculture_income | 6 | throws an error with error message |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name           | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | Expense Type         | financial_details.xlsx | agriculture_income      | 0                              | throws an error with error message | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Rate(Per hour)       | financial_details.xlsx | agriculture_income      | 0                              | throws an error with error message | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Usage Duration(Hour) | financial_details.xlsx | agriculture_income      | 0                              | throws an error with error message | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name           | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   |
      | Expense Type         | financial_details.xlsx | agriculture_income      | 0                              | throws an error with error message | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
      | Rate(Per hour)       | financial_details.xlsx | agriculture_income      | 0                              | throws an error with error message | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
      | Usage Duration(Hour) | financial_details.xlsx | agriculture_income      | 0                              | throws an error with error message | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
    @NotImplemented
   # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Field_Name           | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Throws_notThrows                   | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | Expense Type         | financial_details.xlsx | agriculture_income      | 0                              | throws an error with error message | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Rate(Per hour)       | financial_details.xlsx | agriculture_income      | 0                              | throws an error with error message | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Usage Duration(Hour) | financial_details.xlsx | agriculture_income      | 0                              | throws an error with error message | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |



    #Bug:CAS-172232
  #FeatureID-ACAUTOCAS-159,CAS-172232
  @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    @Conventional
  Scenario Outline: ACAUTOCAS-13007: <Field> field validation in agriculture income details for <Occupation> occupation  at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fills "<Field>" in Agriculture income details
    Then filled values of "<Field>" should comes in left of caret cursor
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum |
      | Rate(Per hour)       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | financial_details.xlsx | agriculture_income      | 0                              |
      | Usage Duration(Hour) | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> | financial_details.xlsx | agriculture_income      | 0                              |

