@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedByDEV
@AppInfoAdoption
@IncomeExpense
#FeatureID-ACAUTOCAS-5968

   # ${ApplicantType:["indiv","nonindiv"]}
Feature:Income Expense Summary for other types of employee


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Sanity
  Scenario Outline: ACAUTOCAS-5258: Validation of <TotalIncome> for other employee with <NumberOfIncomeHead> income head in Income expense summary for <Loan_Type>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetailsWB_home>" and row <EmploymentDetailsWB_home_rowNum>
    And user fill employment details with Occupation Type as "Others" with delete existing occupation
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_SheetName>" and row <FinancialDetails_RowNum>
    When user fill income details with "<IncomeHead>" income head of "<OccupationType>"
    And user Save and Compute the financial details
    And user waits for notification message
    Then total "<TotalIncome>" should get calculated as per the formula mentioned in the master
    @Release @Part-2
    @ImplementedBy-ayush.garg
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | IncomeHead | OccupationType | TotalIncome           | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_SheetName | FinancialDetails_RowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single     | Others         | monthly income(Other) | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details             | 0                       | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple   | Others         | monthly income(Other) | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details             | 0                       | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single     | Others         | annual income(Other)  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details             | 0                       | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple   | Others         | annual income(Other)  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details             | 0                       | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | NumberOfIncomeHead | OccupationType | TotalIncome           | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_SheetName | FinancialDetails_RowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single             | Others         | monthly income(Other) | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details             | 0                       | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | monthly income(Other) | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details             | 0                       | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single             | Others         | annual income(Other)  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details             | 0                       | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | annual income(Other)  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details             | 0                       | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | NumberOfIncomeHead | OccupationType | TotalIncome           | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_SheetName | FinancialDetails_RowNum | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   |
      | single             | Others         | monthly income(Other) | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details             | 0                       | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | monthly income(Other) | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details             | 0                       | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | single             | Others         | annual income(Other)  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details             | 0                       | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | annual income(Other)  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details             | 0                       | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |

  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | NumberOfIncomeHead | OccupationType | TotalIncome           | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single             | Others         | monthly income(Other) | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | monthly income(Other) | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single             | Others         | annual income(Other)  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | annual income(Other)  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | other_income_details                | 0                                          | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |


  Scenario Outline: ACAUTOCAS-5259: Validation of total <TotalDeduction> for other employee with <NumberOfIncomeHead> deduction head in Income expense summary for <Loan_Type>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetailsWB_home>" and row <EmploymentDetailsWB_home_rowNum>
    And user fill employment details with Occupation Type as "Others" with delete existing occupation
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row <FinancialDetails_DeductionDetails_rowNum>
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row <FinancialDetails_DeductionDetails_rowNum>
    When user fill deduction details with "<NumberOfIncomeHead>" deduction head
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_ExpenseDetails>" and row <FinancialDetails_ExpenseDetails_rowNum>
    And user fill expense details with "<NumberOfIncomeHead>" expense head
    And user Save and Compute the financial details
    And user waits for notification message
    Then total "<TotalDeduction>" should get calculated as per the formula mentioned in the master
    @Release @Part-2
    @ImplementedBy-ayush.garg
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | NumberOfIncomeHead | OccupationType | TotalDeduction        | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | FinancialDetails_ExpenseDetails | FinancialDetails_ExpenseDetails_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single             | Others         | monthly income(Other) | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | monthly income(Other) | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single             | Others         | annual income(Other)  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | annual income(Other)  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | NumberOfIncomeHead | OccupationType | TotalDeduction        | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | FinancialDetails_ExpenseDetails | FinancialDetails_ExpenseDetails_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single             | Others         | monthly income(Other) | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | monthly income(Other) | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single             | Others         | annual income(Other)  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | annual income(Other)  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @FixedJsClick
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | NumberOfIncomeHead | OccupationType | TotalDeduction        | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | FinancialDetails_ExpenseDetails | FinancialDetails_ExpenseDetails_rowNum | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   |
      | single             | Others         | monthly income(Other) | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | monthly income(Other) | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | single             | Others         | annual income(Other)  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | annual income(Other)  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | NumberOfIncomeHead | OccupationType | TotalDeduction        | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | FinancialDetails_ExpenseDetails | FinancialDetails_ExpenseDetails_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single             | Others         | monthly income(Other) | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | monthly income(Other) | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single             | Others         | annual income(Other)  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | Others         | annual income(Other)  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | deductions                        | 0                                        | expense_details                 | 0                                      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |

  Scenario Outline: ACAUTOCAS-5260: Validation of <TotalNetIncome> for other employee with <IncomeHead> income along with <DeductionHead> deduction head in Income expense summary for <Loan_Type>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetailsWB_home>" and row <EmploymentDetailsWB_home_rowNum>
    And user fill employment details with Occupation Type as "Others" with delete existing occupation
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_IncomeDetails>" and row <FinancialDetails_IncomeDetails_rowNum>
    And user open financial details
    When user fill "<IncomeHead>" in financial details for the "<OccupationType>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row <FinancialDetails_DeductionDetails_rowNum>
    And user fill deduction details with "<DeductionHead>" deduction head
    And user Save and Compute the financial details
    And user waits for notification message
    Then total "<TotalNetIncome>" should get calculated as per the formula mentioned in the master
    @Release @Part-2
    @ImplementedBy-ayush.garg
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | TotalNetIncome        | OccupationType | IncomeHead | DeductionHead | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | monthly income(Other) | Others         | single     | single        | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | single     | multiple      | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | multiple   | single        | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | multiple   | multiple      | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | single     | single        | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual income(Other)  | Others         | single     | multiple      | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual income(Other)  | Others         | multiple   | single        | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual income(Other)  | Others         | multiple   | multiple      | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | TotalNetIncome        | OccupationType | IncomeHead | DeductionHead | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | monthly income(Other) | Others         | single     | single        | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | single     | multiple      | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | multiple   | single        | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | multiple   | multiple      | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | single     | single        | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual income(Other)  | Others         | single     | multiple      | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual income(Other)  | Others         | multiple   | single        | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual income(Other)  | Others         | multiple   | multiple      | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    @FixedJsClick
    Examples:
      | TotalNetIncome        | OccupationType | IncomeHead | DeductionHead | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   |
      | monthly income(Other) | Others         | single     | single        | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | single     | multiple      | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | multiple   | single        | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | multiple   | multiple      | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | single     | single        | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | annual income(Other)  | Others         | single     | multiple      | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | annual income(Other)  | Others         | multiple   | single        | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | annual income(Other)  | Others         | multiple   | multiple      | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | TotalNetIncome        | OccupationType | IncomeHead | DeductionHead | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | monthly income(Other) | Others         | single     | single        | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | single     | multiple      | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | multiple   | single        | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | multiple   | multiple      | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly income(Other) | Others         | single     | single        | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual income(Other)  | Others         | single     | multiple      | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual income(Other)  | Others         | multiple   | single        | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual income(Other)  | Others         | multiple   | multiple      | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |

# Obligation
  Scenario Outline: ACAUTOCAS-5261: Validation of <TotalObligations> for other employee with <Liability> libality details in Income expense summary for <Loan_Type>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_SheetName>" and row <EmploymentDetails_RowNum>
    And user fill employment details with Occupation Type as "Others" with delete existing occupation
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_LiabilityDetails>" and row <FinancialDetails_LiabilityDetails_rowNum>
    When user fill "<Liability>" liability details
    And user Save and Compute the financial details
    And user waits for notification message
    Then total "<TotalObligations>" should get calculated as per the formula mentioned in the master
    @Release @Part-2
    @ImplementedBy-ayush.garg
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Liability | OccupationType | TotalObligations                 | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_LiabilityDetails | FinancialDetails_LiabilityDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | single    | Others         | monthly obligation income(Other) | employment_details.xlsx | home                        | 69                       | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | multiple  | Others         | monthly obligation income(Other) | employment_details.xlsx | home                        | 69                       | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | single    | Others         | annual obligation income(Other)  | employment_details.xlsx | home                        | 69                       | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | multiple  | Others         | annual obligation income(Other)  | employment_details.xlsx | home                        | 69                       | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Liability | OccupationType | TotalObligations                 | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_LiabilityDetails | FinancialDetails_LiabilityDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | single    | Others         | monthly obligation income(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | multiple  | Others         | monthly obligation income(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | single    | Others         | annual obligation income(Other)  | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | multiple  | Others         | annual obligation income(Other)  | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Liability | OccupationType | TotalObligations                 | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_LiabilityDetails | FinancialDetails_LiabilityDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | single    | Others         | monthly obligation income(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | multiple  | Others         | monthly obligation income(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | single    | Others         | annual obligation income(Other)  | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | multiple  | Others         | annual obligation income(Other)  | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Liability | OccupationType | TotalObligations                 | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_LiabilityDetails | FinancialDetails_LiabilityDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | single    | Others         | monthly obligation income(Other) | employment_details.xlsx | home                        | 69                       | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | multiple  | Others         | monthly obligation income(Other) | employment_details.xlsx | home                        | 69                       | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | single    | Others         | annual obligation income(Other)  | employment_details.xlsx | home                        | 69                       | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | multiple  | Others         | annual obligation income(Other)  | employment_details.xlsx | home                        | 69                       | financial_details.xlsx | liability_details                 | 0                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


 # Disposable Income = Net Personal Income – Personal Income Taxes(obligations).
  Scenario Outline: ACAUTOCAS-5262: Validation of <NetDisposableIncome> for other employee with <IncomeHead> income along with <DeductionHead> deduction head in Income expense summary for <Loan_Type>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetailsWB_home>" and row <EmploymentDetailsWB_home_rowNum>
    And user fill employment details with Occupation Type as "Others" with delete existing occupation
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_LiabilityDetails>" and row <FinancialDetails_LiabilityDetails_rowNum>
    And user fill "<Liability>" liability details
    And user reads data from the excel file "financial_details.xlsx" under sheet "income_details" and row 56
    When user fill income details with "<Single_Multiple>" income head of "<OccupationType>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row <FinancialDetails_DeductionDetails_rowNum>
    And user fill deduction details with "<DeductionHead>" deduction head
    And user Save and Compute the financial details
    And user waits for notification message
    Then total "<NetDisposableIncome>" should get calculated as per the formula mentioned in the master
    @Release @Part-2
    @ImplementedBy-ayush.garg
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | NetDisposableIncome                  | OccupationType | IncomeHead | DeductionHead | Liability | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | FinancialDetails_LiabilityDetails | FinancialDetails_LiabilityDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | monthly Net Disposable income(Other) | Others         | single     | single        | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | single     | multiple      | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | multiple   | single        | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | multiple   | multiple      | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | single     | single        | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | single     | multiple      | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | multiple   | single        | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | multiple   | multiple      | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | single     | single        | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | single     | multiple      | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | multiple   | single        | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | multiple   | multiple      | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | single     | single        | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | single     | multiple      | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | multiple   | single        | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | multiple   | multiple      | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | NetDisposableIncome                  | OccupationType | Single_Multiple | DeductionHead | Liability | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | FinancialDetails_LiabilityDetails | FinancialDetails_LiabilityDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | monthly Net Disposable income(Other) | Others         | single          | single        | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | single          | multiple      | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | multiple        | single        | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | multiple        | multiple      | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | single          | single        | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | single          | multiple      | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | multiple        | single        | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | multiple        | multiple      | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | single          | single        | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | single          | multiple      | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | multiple        | single        | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | multiple        | multiple      | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | single          | single        | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | single          | multiple      | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | multiple        | single        | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | multiple        | multiple      | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                       | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @FixedJsClick
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | NetDisposableIncome                  | OccupationType | IncomeHead | DeductionHead | Liability | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | FinancialDetails_LiabilityDetails | FinancialDetails_LiabilityDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | monthly Net Disposable income(Other) | Others         | single     | single        | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | monthly Net Disposable income(Other) | Others         | single     | multiple      | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | monthly Net Disposable income(Other) | Others         | multiple   | single        | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | monthly Net Disposable income(Other) | Others         | multiple   | multiple      | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | annual Net Disposable income(Other)  | Others         | single     | single        | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | annual Net Disposable income(Other)  | Others         | single     | multiple      | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | annual Net Disposable income(Other)  | Others         | multiple   | single        | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | annual Net Disposable income(Other)  | Others         | multiple   | multiple      | single    | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | monthly Net Disposable income(Other) | Others         | single     | single        | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | monthly Net Disposable income(Other) | Others         | single     | multiple      | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | monthly Net Disposable income(Other) | Others         | multiple   | single        | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | monthly Net Disposable income(Other) | Others         | multiple   | multiple      | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | annual Net Disposable income(Other)  | Others         | single     | single        | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | annual Net Disposable income(Other)  | Others         | single     | multiple      | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | annual Net Disposable income(Other)  | Others         | multiple   | single        | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | annual Net Disposable income(Other)  | Others         | multiple   | multiple      | multiple  | employment_details.xlsx | home                     | 133                             | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 62                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | NetDisposableIncome                  | OccupationType | IncomeHead | DeductionHead | Liability | EmploymentDetailsWB     | EmploymentDetailsWB_home | EmploymentDetailsWB_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | FinancialDetails_LiabilityDetails | FinancialDetails_LiabilityDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | monthly Net Disposable income(Other) | Others         | single     | single        | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | single     | multiple      | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | multiple   | single        | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | multiple   | multiple      | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | single     | single        | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | single     | multiple      | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | multiple   | single        | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | multiple   | multiple      | single    | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | single     | single        | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | single     | multiple      | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | multiple   | single        | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | monthly Net Disposable income(Other) | Others         | multiple   | multiple      | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | single     | single        | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | single     | multiple      | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | multiple   | single        | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | annual Net Disposable income(Other)  | Others         | multiple   | multiple      | multiple  | employment_details.xlsx | home                     | 69                              | financial_details.xlsx | income_details                 | 0                                     | deductions                        | 0                                        | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


#  Assests
  Scenario Outline: ACAUTOCAS-5379: Validation of total Assets value for other employee with <AssetCategory> assets category in Income expense summary for <Loan_Type>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_SheetName>" and row <EmploymentDetails_RowNum>
    And user fill employment details with Occupation Type as "Others" with delete existing occupation
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_AssetDetails>" and row <FinancialDetails_AssetDetails_rowNum>
    When user fill assets details with "<AssetCategory>" assets category
    And user Save and Compute the financial details
    And user waits for notification message
    Then the addition of all "<FieldType>" should be matched with the total Assets value in income expense summary
    @Release @Part-2
    @ImplementedBy-ayush.garg
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | AssetCategory | OccupationType | FieldType           | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_AssetDetails | FinancialDetails_AssetDetails_rowNum | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | single        | Others         | Assets value(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | assets                        | 129                                  | other_income_details                | 0                                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | multiple      | Others         | Assets value(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | assets                        | 129                                  | other_income_details                | 0                                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | AssetCategory | OccupationType | FieldType           | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_AssetDetails | FinancialDetails_AssetDetails_rowNum | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | single        | Others         | Assets value(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | assets                        | 129                                  | other_income_details                | 0                                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | multiple      | Others         | Assets value(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | assets                        | 129                                  | other_income_details                | 0                                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | AssetCategory | OccupationType | FieldType           | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_AssetDetails | FinancialDetails_AssetDetails_rowNum | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | single        | Others         | Assets value(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | assets                        | 129                                  | other_income_details                | 0                                          | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | multiple      | Others         | Assets value(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | assets                        | 129                                  | other_income_details                | 0                                          | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | AssetCategory | OccupationType | FieldType           | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_AssetDetails | FinancialDetails_AssetDetails_rowNum | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | single        | Others         | Assets value(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | assets                        | 129                                  | other_income_details                | 0                                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | multiple      | Others         | Assets value(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | assets                        | 129                                  | other_income_details                | 0                                          | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

#    Liability
  Scenario Outline: ACAUTOCAS-5380: Validation of total liabilities value for other employee with <LiabilityType> liability type in Income expense summary for <Loan_Type>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_SheetName>" and row <EmploymentDetails_RowNum>
    And user fills employment details for "<OccupationType>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_LiabilityDetails>" and row <FinancialDetails_LiabilityDetails_rowNum>
    When user fill "<LiabilityType>" liability details
    And user Save and Compute the financial details
    And user waits for notification message
    Then the addition of all "<LiabilityValue>" should be matched with the total liabilities value in income expense summary
    @Release @Part-2
    @ImplementedBy-ayush.garg
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | LiabilityType | OccupationType | LiabilityValue           | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_LiabilityDetails | FinancialDetails_LiabilityDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | single        | Others         | liabilities value(Other) | employment_details.xlsx | home                        | 69                       | financial_details.xlsx | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | multiple      | Others         | liabilities value(Other) | employment_details.xlsx | home                        | 69                       | financial_details.xlsx | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | LiabilityType | OccupationType | LiabilityValue           | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_LiabilityDetails | FinancialDetails_LiabilityDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | single        | Others         | liabilities value(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | multiple      | Others         | liabilities value(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | LiabilityType | OccupationType | LiabilityValue           | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_LiabilityDetails | FinancialDetails_LiabilityDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key |
      | single        | Others         | liabilities value(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | multiple      | Others         | liabilities value(Other) | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | LiabilityType | OccupationType | LiabilityValue           | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_LiabilityDetails | FinancialDetails_LiabilityDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | single        | Others         | liabilities value(Other) | employment_details.xlsx | home                        | 69                       | financial_details.xlsx | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
      | multiple      | Others         | liabilities value(Other) | employment_details.xlsx | home                        | 69                       | financial_details.xlsx | liability_details                 | 1                                        | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


#ACAUTOCAS-11946-For removed Scenario which was duplicates and Some are removed due to those already Implemented
  #FeatureID-ACAUTOCAS-5968,CAS-169595
 #Bug:CAS-169595
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-13088: Validation of <IncomeExpenseSummary> for other employee in Income expense summary at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_SheetName>" and row <EmploymentDetails_RowNum>
    And user fill employment details with Occupation Type as "Others" with delete existing occupation
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_Other_Income_Details>" and row <FinancialDetails_Other_Income_Details_rowNum>
    And user fill "<Financial_Attribute>" in financial details
    And user Save and Compute the financial details
    When user deletes the filled "<Financial_Attribute>" in financial details
    Then total "<IncomeExpenseSummary>" should get updated as per the formula mentioned in the master
    @ImplementedBy-deep.maurya
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Financial_Attribute  | IncomeExpenseSummary          | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_Other_Income_Details | FinancialDetails_Other_Income_Details_rowNum | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | Income Details       | monthly total income          | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | annual total income           | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | monthly Net income            | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | annual Net income             | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | monthly total income          | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | annual total income           | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | monthly Net income            | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | annual Net income             | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deduction            | monthly deduction             | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | deductions                            | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deduction            | annual deduction              | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | deductions                            | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deduction            | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | deductions                            | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deduction            | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | deductions                            | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deduction            | monthly Net income            | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | deductions                            | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | annual Net income             | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | monthly deduction             | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | annual deduction              | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | monthly Net income            | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | annual Net income             | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |

  # ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ProductType   | Financial_Attribute | IncomeExpenseSummary          | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_Other_Income_Details | FinancialDetails_Other_Income_Details_rowNum | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | Income Details       | monthly total income          | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | annual total income           | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | monthly Net income            | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | annual Net income             | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | monthly total income          | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | annual total income           | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | monthly Net income            | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | annual Net income             | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deductions          | monthly deduction             | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | deductions                            | 62                                           | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deductions          | annual deduction              | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | deductions                            | 62                                           | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deductions          | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | deductions                            | 62                                           | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deductions          | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | deductions                            | 62                                           | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deductions          | monthly Net income            | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | deductions                            | 62                                           | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | annual Net income             | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | monthly deduction             | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | annual deduction              | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | monthly Net income            | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | annual Net income             | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
 # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @FixedJsClick
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ProductType   | Financial_Attribute  | IncomeExpenseSummary          | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_Other_Income_Details | FinancialDetails_Other_Income_Details_rowNum | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | Income Details       | monthly total income          | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Income Details       | annual total income           | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Income Details       | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Income Details       | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Income Details       | monthly Net income            | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Income Details       | annual Net income             | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Other Income Details | monthly total income          | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Other Income Details | annual total income           | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Other Income Details | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Other Income Details | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Other Income Details | monthly Net income            | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Other Income Details | annual Net income             | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Expense Details      | annual Net income             | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Expense Details      | monthly deduction             | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Expense Details      | annual deduction              | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Expense Details      | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Expense Details      | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Expense Details      | monthly Net income            | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Expense Details      | annual Net income             | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> | <Category> |     |

  # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    @Perishable
    Examples:
      | ProductType   | Financial_Attribute  | IncomeExpenseSummary          | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_Other_Income_Details | FinancialDetails_Other_Income_Details_rowNum | ApplicantType   | ApplicationStage   | Category   | Key |
      | <ProductType> | Deductions           | monthly deduction             | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | deductions                            | 62                                           | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Deductions           | annual deduction              | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | deductions                            | 62                                           | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Deductions           | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | deductions                            | 62                                           | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Deductions           | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | deductions                            | 62                                           | <ApplicantType> | <ApplicationStage> | <Category> |     |
      | <ProductType> | Deductions           | monthly Net income            | Others         | employment_details.xlsx | home                        | 133                      | financial_details.xlsx | deductions                            | 62                                           | <ApplicantType> | <ApplicationStage> | <Category> |     |

  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | Financial_Attribute  | IncomeExpenseSummary          | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum | FinancialDetailsWB     | FinancialDetails_Other_Income_Details | FinancialDetails_Other_Income_Details_rowNum | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | Income Details       | monthly total income          | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | annual total income           | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | monthly Net income            | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Income Details       | annual Net income             | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | income_details                        | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | monthly total income          | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | annual total income           | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | monthly Net income            | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Other Income Details | annual Net income             | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deduction            | monthly deduction             | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | deductions                            | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deduction            | annual deduction              | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | deductions                            | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deduction            | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | deductions                            | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deduction            | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | deductions                            | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Deduction            | monthly Net income            | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | deductions                            | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | annual Net income             | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | monthly deduction             | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | annual deduction              | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | monthly Net Disposable income | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | annual Net Disposable income  | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | monthly Net income            | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |
      | <ProductType> | Expense Details      | annual Net income             | Others         | employment_details.xlsx | home                        | 66                       | financial_details.xlsx | expense_details                       | 0                                            | <ApplicantType> | <ApplicationStage> |          |     |

 #FeatureID-ACAUTOCAS-5968
  Scenario Outline: ACAUTOCAS-13089: Validation of total Assets value for other employee in Income expense summary at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_SheetName>" and row <EmploymentDetails_RowNum>
    And user fills employment details for "<OccupationType>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 129
    And user fill assets details with "single" assets category
    And user clicks on save and compute
    And user delete the added assets details
    When user clicks on save and compute
    Then total Assets value should be updated in income expense summary
    @ImplementedBy-deep.maurya
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Others         | employment_details.xlsx | home                        | 33                       |

  # ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Others         | employment_details.xlsx | home                        | 133                      |

  # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Others         | employment_details.xlsx | home                        | 133                      |

  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Others         | employment_details.xlsx | home                        | 33                       |

  #FeatureID-ACAUTOCAS-5968
  Scenario Outline: ACAUTOCAS-13090: Validation of total liabilities value for other employee in Income expense summary at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_SheetName>" and row <EmploymentDetails_RowNum>
    And user fills employment details for "<OccupationType>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 1
    When user fill "single" liability details
    And user clicks on save and compute
    And user delete liability details
    And user clicks on save and compute
    Then total liabilities value should be updated in income expense summary
    @ImplementedBy-deep.maurya
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Others         | employment_details.xlsx | home                        | 33                       |

  # ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Others         | employment_details.xlsx | home                        | 133                      |

  # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @FixedJsClick2
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Others         | employment_details.xlsx | home                        | 133                      |

  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Others         | employment_details.xlsx | home                        | 33                       |

 #FeatureID-ACAUTOCAS-5968
  Scenario Outline: ACAUTOCAS-13091: Validation of <Summary_Column> column for other employee in Income expense summary at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_SheetName>" and row <EmploymentDetails_RowNum>
    And user fills employment details for "<OccupationType>"
    When user open financial details
    Then "<Summary_Column>" should be present in income expense summary
    @ImplementedBy-deep.maurya
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Summary_Column | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum |
      | Annual         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | Others         | employment_details.xlsx | home                        | 33                       |
      | Monthly        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | Others         | employment_details.xlsx | home                        | 33                       |
      | Summary Head   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | Others         | employment_details.xlsx | home                        | 33                       |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Summary_Column | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum |
      | Annual         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | Others         | employment_details.xlsx | home                        | 133                      |
      | Monthly        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | Others         | employment_details.xlsx | home                        | 133                      |
      | Summary Head   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | Others         | employment_details.xlsx | home                        | 133                      |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @FixedJsClick
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
    @Part-2
    Examples:
      | Summary_Column | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum |
      | Annual         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | Others         | employment_details.xlsx | home                        | 133                      |
      | Monthly        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | Others         | employment_details.xlsx | home                        | 133                      |
      | Summary Head   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | Others         | employment_details.xlsx | home                        | 133                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Summary_Column | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | OccupationType | EmploymentDetailsWB     | EmploymentDetails_SheetName | EmploymentDetails_RowNum |
      | Annual         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | Others         | employment_details.xlsx | home                        | 33                       |
      | Monthly        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | Others         | employment_details.xlsx | home                        | 33                       |
      | Summary Head   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | Others         | employment_details.xlsx | home                        | 33                       |
