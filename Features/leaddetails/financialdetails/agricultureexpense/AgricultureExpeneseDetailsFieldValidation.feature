@Epic-Applicant_Information
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@Reconciled
@AppInfoAdoption

 # ${ApplicantType:["indiv"]}
    #FeatureID-ACAUTOCAS-191
Feature: Agriculture expense detail field validation with occupation type as Agriculture

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
  @Sanity
  Scenario Outline: ACAUTOCAS-1673:  Add Agriculture expense Details with <Var> fields on <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user navigates to the Financial Details
    And user clicks on agriculture expense
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<agriculture_expense>" and row <agriculture_expense_rowNum>
    When user add Agriculture expense Details with "<Var>" fields
    And navigates to save and compute
    Then Agriculture expense Details should save successfully on Agriculture Expense
    @ImplementedBy-aditya.tomar
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Var       | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | all       | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | mandatory | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |

     #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var       | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | all       | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | mandatory | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var       | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   |
      | all       | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
      | mandatory | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
@NotImplemented
   # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Var       | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | all       | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | mandatory | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |

  @Sanity
  Scenario Outline: ACAUTOCAS-1674:  Add multiple <Var> Agriculture expense Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user navigates to the Financial Details
    And user clicks on agriculture expense
    When user reads data from the excel file "<FinancialDetailsWB>" under sheet "<agriculture_expense>" and row <agriculture_expense_rowNum>
    And user add multiple "<Var>" Agriculture expense fields
    And navigates to save and compute
    Then Agriculture expense Details should save successfully on Agriculture Expense
    @ImplementedBy-aditya.tomar
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Var | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
 #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @FixedJsClick2
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
Examples:
      | Var | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |

  Scenario Outline: ACAUTOCAS-1675:  Delete <Var> Agriculture expense Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user navigates to the Financial Details
    And user clicks on agriculture expense
    When user reads data from the excel file "<FinancialDetailsWB>" under sheet "<agriculture_expense>" and row <agriculture_expense_rowNum>
    And user add multiple "<Var>" Agriculture expense fields
    Then delete Agriculture expense Details successfully
    @ImplementedBy-aditya.tomar
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Var | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
 #${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
    #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @FixedJsClick2
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Var | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
Examples:
      | Var | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | 2   | financial_details.xlsx | agriculture_expense | 0                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |


  Scenario Outline: ACAUTOCAS-3399:  In Selection of <Field_Name> <Dependent_Field> is autofilled in agriculture expense details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user navigates to the Financial Details
    And user clicks on agriculture expense
    When user reads data from the excel file "<FinancialDetailsWB>" under sheet "<agriculture_expense>" and row <agriculture_expense_rowNum>
    And user add Agriculture expense Details with "all" fields
    Then Dependent field should be auto computed correctly in agriculture expense details
    @ImplementedBy-aditya.tomar
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
 #${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   |
      | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |


 #FeatureID-ACAUTOCAS-162,CAS-172232
  Scenario Outline: ACAUTOCAS-13006: <Field> field validation in agriculture expense details for <Occupation> occupation  at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user navigates to the Financial Details
    And user clicks on agriculture expense
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<agriculture_expense>" and row <agriculture_expense_rowNum>
    When user fills "<Field>" field in agriculture expense details
    Then "<Field>" values should comes in left of caret cursor
    @ImplementedBy-aditya.tomar
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Field                | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | Rate(Per hour)       | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Usage Duration(Hour) | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field                | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | Rate(Per hour)       | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Usage Duration(Hour) | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field                | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   |
      | Rate(Per hour)       | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
      | Usage Duration(Hour) | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | Field                | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | Rate(Per hour)       | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Usage Duration(Hour) | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |


  @Perishable
  Scenario Outline: ACAUTOCAS-1677: Saving Agriculture expense detail without <Field_Name>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74 | Agriculture |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user navigates to the Financial Details
    And user clicks on agriculture expense
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<agriculture_expense>" and row <agriculture_expense_rowNum>
    When user fills the Agriculture expense details without "<Field_Name>"
    And navigates to save and compute
    Then Agriculture expense details not saved
    @ImplementedBy-aditya.tomar
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    Examples:
      | Field_Name   | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | Expense Type | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |

    @LoggedBug
   @NotImplemented
    Examples:
      | Field_Name           | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | Rate(Per hour)       | financial_details.xlsx | agriculture_expense | 2                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
      | Usage Duration(Hour) | financial_details.xlsx | agriculture_expense | 3                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
#${ProductType:["IHF","IAF"]}
 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name   | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | Expense Type | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
#${ProductType:["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${category:["bonds"]}
    #${Occupation:["Agriculture"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-harshita.nayak
    Examples:
      | Field_Name   | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category   | key | Occupation   |
      | Expense Type | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> | <category> |     | <Occupation> |
 # ${ProductType:["FAS","GL","JLG","SHG"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | Field_Name   | FinancialDetailsWB     | agriculture_expense | agriculture_expense_rowNum | ApplicationStage   | ProductType   | ApplicantType   | category | key | Occupation   |
      | Expense Type | financial_details.xlsx | agriculture_expense | 1                          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <Occupation> |
