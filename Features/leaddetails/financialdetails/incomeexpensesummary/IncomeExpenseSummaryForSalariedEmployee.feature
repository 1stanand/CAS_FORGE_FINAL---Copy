@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-ayush.garg
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
@IncomeExpense
@CommonAdoption
#FeatureID-ACAUTOCAS-5969

  # ${ApplicantType:["indiv","nonindiv"]}
Feature:Income Expense Summary for salaried types of employee

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Sanity
  Scenario Outline: ACAUTOCAS-5263: Validation of <TotalIncome> for salaried employee with <NumberOfIncomeHead> income head in Income expense summary for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "<OccupationType>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    When user fill "<Financial_Attribute>" in financial details for the "Salaried"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details with "<NumberOfIncomeHead>" income head
    And user Save and Compute the financial details
    And user waits for notification message
    Then total "<TotalIncome>" should get calculated as per the formula mentioned in the master
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | NumberOfIncomeHead | TotalIncome    | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | OccupationType | Financial_Attribute |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single             | monthly income | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       | Income Details      |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple           | monthly income | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       | Income Details      |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single             | annual income  | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       | Income Details      |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple           | annual income  | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       | Income Details      |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | NumberOfIncomeHead | TotalIncome    | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | OccupationType |Financial_Attribute |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single             | monthly income | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       |Income Details      |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple           | monthly income | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       |Income Details      |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single             | annual income  | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       |Income Details      |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple           | annual income  | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       |Income Details      |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   | NumberOfIncomeHead | TotalIncome    | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | OccupationType |Financial_Attribute |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | single             | monthly income | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       |Income Details      |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | multiple           | monthly income | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       |Income Details      |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | single             | annual income  | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       |Income Details      |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | multiple           | annual income  | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       |Income Details      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | NumberOfIncomeHead | TotalIncome    | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | OccupationType |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single             | monthly income | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple           | monthly income | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single             | annual income  | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple           | annual income  | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | Salaried       |


  @Sanity
  Scenario Outline: ACAUTOCAS-5264: Validation of total <TotalDeduction> for salaried employee with <NumberOfIncomeHead> deduction head in Income expense summary for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "<OccupationType>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_deductions>" and row <FinancialDetails_deductions_rowNum>
    When user fill deduction details with "<NumberOfIncomeHead>" deduction head
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenseDetails>" and row <FinancialDetails_expenseDetails_rowNum>
    And user fill expense details with "<NumberOfIncomeHead>" expense head
    And user waits for notification message
    Then total "<TotalDeduction>" should get calculated as per the formula mentioned in the master
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | NumberOfIncomeHead | TotalDeduction    | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | OccupationType |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single             | monthly deduction | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | deductions                  | 0                                  | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple           | monthly deduction | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | deductions                  | 0                                  | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single             | annual deduction  | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | deductions                  | 0                                  | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple           | annual deduction  | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | deductions                  | 0                                  | expense_details                 | 0                                      | Salaried       |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | NumberOfIncomeHead | TotalDeduction    | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | OccupationType |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single             | monthly deduction | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | deductions                  | 62                                 | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple           | monthly deduction | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | deductions                  | 62                                 | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single             | annual deduction  | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | deductions                  | 62                                 | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple           | annual deduction  | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | deductions                  | 62                                 | expense_details                 | 0                                      | Salaried       |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   | NumberOfIncomeHead | TotalDeduction    | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | OccupationType |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | single             | monthly deduction | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | deductions                  | 62                                 | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | multiple           | monthly deduction | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | deductions                  | 62                                 | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | single             | annual deduction  | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | deductions                  | 62                                 | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | multiple           | annual deduction  | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | deductions                  | 62                                 | expense_details                 | 0                                      | Salaried       |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | NumberOfIncomeHead | TotalDeduction    | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | OccupationType |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single             | monthly deduction | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | deductions                  | 0                                  | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple           | monthly deduction | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | deductions                  | 0                                  | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single             | annual deduction  | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | deductions                  | 0                                  | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple           | annual deduction  | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | deductions                  | 0                                  | expense_details                 | 0                                      | Salaried       |

  @Sanity
  @AppInfoFixed5
  @Perishable
  Scenario Outline: ACAUTOCAS-5265: Validation of <TotalNetIncome> for salaried employee with <IncomeHead> income along with <DeductionHead> deduction head and <ExpenseHead> expense in Income expense summary for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "<OccupationType>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    When user fill "<IncomeHead>" in financial details for the "<OccupationType>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_deductions>" and row <FinancialDetails_deductions_rowNum>
    And user fill deduction details with "<DeductionHead>" deduction head
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenseDetails>" and row <FinancialDetails_expenseDetails_rowNum>
    And user fill expense details with "<ExpenseHead>" expense head
    And user waits for notification message
    Then total "<TotalNetIncome>" should get calculated as per the formula mentioned in the master
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | TotalNetIncome     | IncomeHead | DeductionHead | ExpenseHead | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | OccupationType |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net income | single     | single        | multiple    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net income | single     | multiple      | single      | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net income | multiple   | single        | multiple    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net income | multiple   | multiple      | single      | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net income  | single     | single        | multiple    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net income  | single     | multiple      | single      | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net income  | multiple   | single        | multiple    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net income  | multiple   | multiple      | single      | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | TotalNetIncome     | IncomeHead | DeductionHead | ExpenseHead | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | OccupationType |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net income | single     | single        | multiple    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net income | single     | multiple      | single      | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net income | multiple   | single        | multiple    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net income | multiple   | multiple      | single      | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net income  | single     | single        | multiple    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net income  | single     | multiple      | single      | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net income  | multiple   | single        | multiple    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net income  | multiple   | multiple      | single      | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   | TotalNetIncome     | IncomeHead | DeductionHead | ExpenseHead | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | OccupationType |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | monthly Net income | single     | single        | multiple    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | monthly Net income | single     | multiple      | single      | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | monthly Net income | multiple   | single        | multiple    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | monthly Net income | multiple   | multiple      | single      | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | annual Net income  | single     | single        | multiple    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | annual Net income  | single     | multiple      | single      | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | annual Net income  | multiple   | single        | multiple    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | annual Net income  | multiple   | multiple      | single      | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 62                                 | Salaried       |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | TotalNetIncome     | IncomeHead | DeductionHead | ExpenseHead | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | FinancialDetails_deductions | FinancialDetails_deductions_rowNum | OccupationType |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net income | single     | single        | multiple    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net income | single     | multiple      | single      | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net income | multiple   | single        | multiple    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net income | multiple   | multiple      | single      | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net income  | single     | single        | multiple    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net income  | single     | multiple      | single      | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net income  | multiple   | single        | multiple    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net income  | multiple   | multiple      | single      | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | income_details                 | 0                                     | expense_details                 | 0                                      | deductions                  | 0                                  | Salaried       |

  # Obligation
  Scenario Outline: ACAUTOCAS-5266: Validation of <TotalObligations> for salaried employee with <Liability> libality details  in Income expense summary for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "<OccupationType>"
    And user open financial details for "<OccupationType>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fill "<Liability>" liability details
    And user Save and Compute the financial details
    And user waits for notification message
    Then total "<TotalObligations>" should get calculated as per the formula mentioned in the master
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | Liability | TotalObligations          | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | OccupationType |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single    | monthly obligation income | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple  | monthly obligation income | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single    | annual obligation income  | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple  | annual obligation income  | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | Liability | TotalObligations          | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | OccupationType |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single    | monthly obligation income | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple  | monthly obligation income | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single    | annual obligation income  | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple  | annual obligation income  | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   | Liability | TotalObligations          | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | OccupationType |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | single    | monthly obligation income | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | multiple  | monthly obligation income | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | single    | annual obligation income  | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | multiple  | annual obligation income  | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | Liability | TotalObligations          | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | OccupationType |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single    | monthly obligation income | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple  | monthly obligation income | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single    | annual obligation income  | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple  | annual obligation income  | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | Salaried       |


   # Disposable Income = Net Personal Income – Personal Income Taxes(obligations).
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-5267: Validation of <NetDisposableIncome> for salaried employee with <IncomeHead> income along with <DeductionHead> deduction head in Income expense summary for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "<OccupationType>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill "<Liability>" liability details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_incomeDetails>" and row <FinancialDetails_incomeDetails_rowNum>
    When user fill income details with "<IncomeHead>" income head
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenseDetails>" and row <FinancialDetails_expenseDetails_rowNum>
    And user fill expense details with "<ExpenseHead>" expense head
    And user waits for notification message
    Then total "<NetDisposableIncome>" should get calculated as per the formula mentioned in the master
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | NetDisposableIncome           | IncomeHead | ExpenseHead | Liability | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | OccupationType |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | single     | single      | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | single     | multiple    | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | multiple   | single      | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | multiple   | multiple    | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | single     | single      | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | single     | multiple    | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | multiple   | single      | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | multiple   | multiple    | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | NetDisposableIncome           | IncomeHead | ExpenseHead | Liability | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | OccupationType |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | single     | single      | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | single     | multiple    | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | multiple   | single      | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | multiple   | multiple    | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | single     | single      | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | single     | multiple    | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | multiple   | single      | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | multiple   | multiple    | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   | NetDisposableIncome           | IncomeHead | ExpenseHead | Liability | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | OccupationType |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | single     | single      | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | single     | multiple    | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | multiple   | single      | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | multiple   | multiple    | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | single     | single      | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | single     | multiple    | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | multiple   | single      | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | multiple   | multiple    | single    | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | NetDisposableIncome           | IncomeHead | ExpenseHead | Liability | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | FinancialDetails_incomeDetails | FinancialDetails_incomeDetails_rowNum | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | OccupationType |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | single     | single      | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | single     | multiple    | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | multiple   | single      | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | monthly Net Disposable income | multiple   | multiple    | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | single     | single      | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | single     | multiple    | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | multiple   | single      | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | annual Net Disposable income  | multiple   | multiple    | single    | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | income_details                 | 0                                     | expense_details                 | 0                                      | Salaried       |


  #Assests
  Scenario Outline: ACAUTOCAS-5381: Validation of total Assets value for salaried employee with <AssetCategory> assets category in Income expense summary for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "<OccupationType>"
    And user open financial details for "<OccupationType>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    When user fill assets details with "<AssetCategory>" assets category
    And user Save and Compute the financial details
    And user waits for notification message
    Then the addition of all "<FieldType>" should be matched with the total Assets value in income expense summary
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | AssetCategory | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | OccupationType | FieldType    |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single        | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | assets                  | 129                            | Salaried       | Assets value |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple      | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | assets                  | 129                            | Salaried       | Assets value |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | AssetCategory | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | OccupationType | FieldType    |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single        | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | assets                  | 129                            | Salaried       | Assets value |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple      | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | assets                  | 129                            | Salaried       | Assets value |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   | AssetCategory | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | OccupationType | FieldType    |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | single        | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | assets                  | 129                            | Salaried       | Assets value |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | multiple      | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | assets                  | 129                            | Salaried       | Assets value |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | AssetCategory | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | OccupationType | FieldType    |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single        | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | assets                  | 129                            | Salaried       | Assets value |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple      | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | assets                  | 129                            | Salaried       | Assets value |

  #Liability
  Scenario Outline: ACAUTOCAS-5382: Validation of total liabilities value for salaried employee with <LiabilityType> liability type in Income expense summary for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Salaried"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fill "<LiabilityType>" liability details
    And user Save and Compute the financial details
    And user waits for notification message
    Then the addition of all "<FieldType>" should be matched with the total liabilities value in income expense summary
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | LiabilityType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | OccupationType | FieldType         |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single        | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | Salaried       | liabilities value |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple      | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | Salaried       | liabilities value |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | LiabilityType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | OccupationType | FieldType         |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single        | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | Salaried       | liabilities value |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple      | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | Salaried       | liabilities value |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   | LiabilityType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | OccupationType | FieldType         |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | single        | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | Salaried       | liabilities value |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | multiple      | employment_details.xlsx | home                   | 131                           | financial_details.xlsx | liability_details                 | 1                                        | Salaried       | liabilities value |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | LiabilityType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | OccupationType | FieldType         |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single        | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | Salaried       | liabilities value |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple      | employment_details.xlsx | home                   | 91                            | financial_details.xlsx | liability_details                 | 1                                        | Salaried       | liabilities value |

#New scenarios added
  #FeatureID-ACAUTOCAS-5969,CAS-169595
  #Bug:CAS-169595
  @FixedTest28
  Scenario Outline: ACAUTOCAS-13096: Validation of <IncomeExpenseSummary> for salaried employee in Income expense summary at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Salaried"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_sheetName>" and row <FinancialDetails_sheetName_rowNum>
    And user fill "<Financial_Attribute>" in financial details
    And user clicks on save and compute
    When user deletes the filled "<Financial_Attribute>" in financial details
    Then total "<IncomeExpenseSummary>" should get updated as per the formula mentioned in the master
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Financial_Attribute  | IncomeExpenseSummary          | FinancialDetailsWB     | FinancialDetails_sheetName | FinancialDetails_sheetName_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | monthly total income          | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | annual total income           | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | monthly Net Disposable income | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | annual Net Disposable income  | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | monthly Net income            | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | annual Net income             | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | monthly total income          | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | annual total income           | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | monthly Net Disposable income | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | annual Net Disposable income  | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | monthly Net income            | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | annual Net income             | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | monthly deduction             | financial_details.xlsx | deductions                 | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | annual deduction              | financial_details.xlsx | deductions                 | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | monthly Net Disposable income | financial_details.xlsx | deductions                 | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | annual Net Disposable income  | financial_details.xlsx | deductions                 | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | monthly Net income            | financial_details.xlsx | deductions                 | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | annual Net income             | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | monthly deduction             | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | annual deduction              | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | monthly Net Disposable income | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | annual Net Disposable income  | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | monthly Net income            | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | annual Net income             | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |

# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Financial_Attribute  | IncomeExpenseSummary          | FinancialDetailsWB     | FinancialDetails_sheetName | FinancialDetails_sheetName_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | monthly total income          | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | annual total income           | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | monthly Net Disposable income | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | annual Net Disposable income  | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | monthly Net income            | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | annual Net income             | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | monthly total income          | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | annual total income           | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | monthly Net Disposable income | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | annual Net Disposable income  | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | monthly Net income            | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | annual Net income             | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | monthly deduction             | financial_details.xlsx | deductions                 | 62                                | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | annual deduction              | financial_details.xlsx | deductions                 | 62                                | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | monthly Net Disposable income | financial_details.xlsx | deductions                 | 62                                | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | annual Net Disposable income  | financial_details.xlsx | deductions                 | 62                                | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | monthly Net income            | financial_details.xlsx | deductions                 | 62                                | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | annual Net income             | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | monthly deduction             | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | annual deduction              | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | monthly Net Disposable income | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | annual Net Disposable income  | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | monthly Net income            | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | annual Net income             | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |

# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @FixedJsClick2
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Financial_Attribute  | IncomeExpenseSummary          | FinancialDetailsWB     | FinancialDetails_sheetName | FinancialDetails_sheetName_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Income Details       | monthly total income          | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Income Details       | annual total income           | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Income Details       | monthly Net Disposable income | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Income Details       | annual Net Disposable income  | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Income Details       | monthly Net income            | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Income Details       | annual Net income             | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Other Income Details | monthly total income          | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Other Income Details | annual total income           | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Other Income Details | monthly Net Disposable income | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Other Income Details | annual Net Disposable income  | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Other Income Details | monthly Net income            | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Other Income Details | annual Net income             | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Expense Details      | annual Net income             | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Expense Details      | monthly deduction             | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Expense Details      | annual deduction              | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Expense Details      | monthly Net Disposable income | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Expense Details      | annual Net Disposable income  | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Expense Details      | monthly Net income            | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Expense Details      | annual Net income             | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 131                           |
    # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    @Perishable
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | Financial_Attribute  | IncomeExpenseSummary          | FinancialDetailsWB     | FinancialDetails_sheetName | FinancialDetails_sheetName_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Deductions           | monthly deduction             | financial_details.xlsx | deductions                 | 62                                | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Deductions           | annual deduction              | financial_details.xlsx | deductions                 | 62                                | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Deductions           | monthly Net Disposable income | financial_details.xlsx | deductions                 | 62                                | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Deductions           | annual Net Disposable income  | financial_details.xlsx | deductions                 | 62                                | employment_details.xlsx | home                   | 131                           |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Deductions           | monthly Net income            | financial_details.xlsx | deductions                 | 62                                | employment_details.xlsx | home                   | 131                           |

#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Financial_Attribute  | IncomeExpenseSummary          | FinancialDetailsWB     | FinancialDetails_sheetName | FinancialDetails_sheetName_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | monthly total income          | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | annual total income           | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | monthly Net Disposable income | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | annual Net Disposable income  | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | monthly Net income            | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Income Details       | annual Net income             | financial_details.xlsx | income_details             | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | monthly total income          | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | annual total income           | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | monthly Net Disposable income | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | annual Net Disposable income  | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | monthly Net income            | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Other Income Details | annual Net income             | financial_details.xlsx | other_income_details       | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | monthly deduction             | financial_details.xlsx | deductions                 | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | annual deduction              | financial_details.xlsx | deductions                 | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | monthly Net Disposable income | financial_details.xlsx | deductions                 | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | annual Net Disposable income  | financial_details.xlsx | deductions                 | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Deductions           | monthly Net income            | financial_details.xlsx | deductions                 | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | annual Net income             | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | monthly deduction             | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | annual deduction              | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | monthly Net Disposable income | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | annual Net Disposable income  | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | monthly Net income            | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Expense Details      | annual Net income             | financial_details.xlsx | expense_details            | 0                                 | employment_details.xlsx | home                   | 91                            |


  #FeatureID-ACAUTOCAS-5969
  Scenario Outline: ACAUTOCAS-13097: Validation of total Assets value for salaried employee in Income expense summary at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Salaried"
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 129
    When user fill assets details with "single" assets category
    And user clicks on save and compute
    And user delete the added assets details
    And user clicks on save and compute
    Then total Assets value should be updated in income expense summary
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 91                            |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 131                           |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 131                           |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 91                            |


  #FeatureID-ACAUTOCAS-5969
  Scenario Outline: ACAUTOCAS-13098: Validation of total liabilities value for salaried employee in Income expense summary at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Salaried"
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 1
    When user fill "single" liability details
    And user clicks on save and compute
    And user delete liability details
    And user clicks on save and compute
    Then total liabilities value should be updated in income expense summary
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 91                            |

  # ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 131                           |

    # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 131                           |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 91                            |

  #FeatureID-ACAUTOCAS-5969
  @ApplicantSanity
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-13099: Validation of <Summary_Column> column for salaried employee in Income expense summary at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "<OccupationType>"
    When user open financial details
    Then "<Summary_Column>" should be present in income expense summary
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Summary_Column | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | OccupationType |
      | Annual         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 91                            | Salaried       |
      | Monthly        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 91                            | Salaried       |
      | Summary Head   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 91                            | Salaried       |

    # ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Summary_Column | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | OccupationType |
      | Annual         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 131                           | Salaried       |
      | Monthly        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 131                           | Salaried       |
      | Summary Head   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 131                           | Salaried       |
     # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Summary_Column | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | OccupationType |
      | Annual         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 131                           | Salaried       |
      | Monthly        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 131                           | Salaried       |
      | Summary Head   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 131                           | Salaried       |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Summary_Column | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | OccupationType |
      | Annual         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 91                            | Salaried       |
      | Monthly        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 91                            | Salaried       |
      | Summary Head   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 91                            | Salaried       |
