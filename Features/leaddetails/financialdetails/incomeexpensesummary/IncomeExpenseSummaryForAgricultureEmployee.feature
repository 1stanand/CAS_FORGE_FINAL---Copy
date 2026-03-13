@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedByDEV
@AppInfoAdoption
@CommonAdoption
#FeatureID-ACAUTOCAS-5966

  # ${ApplicantType:["indiv","nonindiv"]}
Feature:Income Expense Summary for agriculture types of employee


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Sanity
  Scenario Outline: ACAUTOCAS-5270: Validation of <TotalIncome> for Agriculture employee with <NumberOfIncomeHead> income head in Income expense summary for <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Agriculture" with delete existing occupation
    And user open financial details
    And user reads data from the excel file "<Financial_Details_WB>" under sheet "<Agriculture_income>" and row <Row_no>
    When user fill income details with "<NumberOfIncomeHead>" income head of "<OccupationType>"
    And user Save and Compute the financial details
    And user waits for notification message
    Then total "<TotalIncome>" should get calculated as per the formula mentioned in the master
    @ImplementedBy-deep.maurya
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | NumberOfIncomeHead | TotalIncome                 | OccupationType | Financial_Details_WB   | Agriculture_income | Row_no | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single             | monthly income(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | monthly income(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single             | annual income(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | annual income(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | NumberOfIncomeHead | TotalIncome                 | OccupationType | Financial_Details_WB   | Agriculture_income | Row_no | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single             | monthly income(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | monthly income(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single             | annual income(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | annual income(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @FixedJsClick
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | NumberOfIncomeHead | TotalIncome                 | OccupationType | Financial_Details_WB   | Agriculture_income | Row_no | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   |
      | single             | monthly income(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | multiple           | monthly income(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | single             | annual income(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | multiple           | annual income(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | NumberOfIncomeHead | TotalIncome                 | OccupationType | Financial_Details_WB   | Agriculture_income | Row_no | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single             | monthly income(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | monthly income(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single             | annual income(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | annual income(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_income | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |

  @Sanity
  Scenario Outline: ACAUTOCAS-5271: Validation of total <TotalIncome> for Agriculture employee with <NumberOfIncomeHead> deduction head in Income expense summary for <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Agriculture" with delete existing occupation
    And user open financial details
    And user reads data from the excel file "<Financial_Details_WB>" under sheet "<Agriculture_income>" and row <Row_no>
    When user fill agriculture expense details with "<NumberOfIncomeHead>" expense head
    And user Save and Compute the financial details
    And user waits for notification message
    Then total "<TotalDeduction>" should get calculated as per the formula mentioned in the master
    @ImplementedBy-deep.maurya
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | NumberOfIncomeHead | TotalDeduction                 | OccupationType | Financial_Details_WB   | Agriculture_income  | Row_no | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single             | monthly deduction(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | monthly deduction(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single             | annual deduction(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | annual deduction(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | NumberOfIncomeHead | TotalDeduction                 | OccupationType | Financial_Details_WB   | Agriculture_income  | Row_no | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single             | monthly deduction(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | monthly deduction(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single             | annual deduction(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | annual deduction(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | NumberOfIncomeHead | TotalDeduction                 | OccupationType | Financial_Details_WB   | Agriculture_income  | Row_no | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   |
      | single             | monthly deduction(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | multiple           | monthly deduction(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | single             | annual deduction(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | multiple           | annual deduction(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | NumberOfIncomeHead | TotalDeduction                 | OccupationType | Financial_Details_WB   | Agriculture_income  | Row_no | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single             | monthly deduction(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | monthly deduction(Agriculture) | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single             | annual deduction(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple           | annual deduction(Agriculture)  | Agriculture    | financial_details.xlsx | agriculture_expense | 0      | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |

  @Sanity
  Scenario Outline: ACAUTOCAS-5272: Validation of <TotalNetIncome> for Agriculture employee with <NumberOfIncomeHead> income along with <DeductionHead> deduction head in Income expense summary for <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Agriculture" with delete existing occupation
    And user open financial details
    And user reads data from the excel file "<Financial_Details_WB>" under sheet "<Agriculture_income>" and row <Row_no>
    And user fill income details with "<NumberOfIncomeHead>" income head of "<OccupationType>"
    And user reads data from the excel file "<Financial_Details_WB>" under sheet "<Agriculture_expense>" and row <Row_no>
    When user fill agriculture expense details with "<DeductionHead>" expense head
    And user Save and Compute the financial details
    And user waits for notification message
    Then total "<TotalNetIncome>" should get calculated as per the formula mentioned in the master
    @ImplementedBy-deep.maurya
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | TotalNetIncome                  | NumberOfIncomeHead | DeductionHead | OccupationType | Financial_Details_WB   | Agriculture_income | Row_no | Agriculture_expense | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | monthly Net income(Agriculture) | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net income(Agriculture) | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net income(Agriculture) | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net income(Agriculture) | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | TotalNetIncome                  | NumberOfIncomeHead | DeductionHead | OccupationType | Financial_Details_WB   | Agriculture_income | Row_no | Agriculture_expense | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | monthly Net income(Agriculture) | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net income(Agriculture) | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net income(Agriculture) | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net income(Agriculture) | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @FixedJsClick
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | TotalNetIncome                  | NumberOfIncomeHead | DeductionHead | OccupationType | Financial_Details_WB   | Agriculture_income | Row_no | Agriculture_expense | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   |
      | monthly Net income(Agriculture) | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | monthly Net income(Agriculture) | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | monthly Net income(Agriculture) | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | monthly Net income(Agriculture) | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | TotalNetIncome                  | NumberOfIncomeHead | DeductionHead | OccupationType | Financial_Details_WB   | Agriculture_income | Row_no | Agriculture_expense | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | monthly Net income(Agriculture) | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net income(Agriculture) | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net income(Agriculture) | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net income(Agriculture) | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual  Net income(Agriculture) | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |


  # Obligation
  Scenario Outline: ACAUTOCAS-5273: Validation of <TotalObligations> for salaried employee with <Liability> liability details in Income expense summary for <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Agriculture" with delete existing occupation
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fill "<Liability>" liability details
    And user Save and Compute the financial details
    And user waits for notification message
    Then total "<TotalObligations>" should get calculated as per the formula mentioned in the master
    @ImplementedBy-kanika.mahal
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Liability | TotalObligations                       | OccupationType | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single    | monthly obligation income(Agriculture) | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple  | monthly obligation income(Agriculture) | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single    | annual obligation income(Agriculture)  | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple  | annual obligation income(Agriculture)  | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | Liability | TotalObligations                       | OccupationType | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single    | monthly obligation income(Agriculture) | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple  | monthly obligation income(Agriculture) | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single    | annual obligation income(Agriculture)  | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple  | annual obligation income(Agriculture)  | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | Liability | TotalObligations                       | OccupationType | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   |
      | single    | monthly obligation income(Agriculture) | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | multiple  | monthly obligation income(Agriculture) | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | single    | annual obligation income(Agriculture)  | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | multiple  | annual obligation income(Agriculture)  | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | Liability | TotalObligations                       | OccupationType | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | single    | monthly obligation income(Agriculture) | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple  | monthly obligation income(Agriculture) | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | single    | annual obligation income(Agriculture)  | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | multiple  | annual obligation income(Agriculture)  | Agriculture    | financial_details.xlsx | liability_details                 | 0                                        | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |

 # Disposable Income = Personal Income – Personal Income Taxes.
  Scenario Outline: ACAUTOCAS-5274: Validation of <NetDisposableIncome> for for Agriculture employee with <NumberOfIncomeHead> income along with <DeductionHead> deduction head in Income expense summary for <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_RowNum>
    And user fill employment details with Occupation Type as "Agriculture" with delete existing occupation
    And user open financial details
    And user reads data from the excel file "<Financial_Details_WB>" under sheet "<Liability_Details_sheet>" and row <Liability_details_row_no>
    And user fill "<Liability>" liability details
    And user reads data from the excel file "<Financial_Details_WB>" under sheet "<Agriculture_income>" and row <Row_no>
    And user fill income details with "<NumberOfIncomeHead>" income head of "<OccupationType>"
    And user reads data from the excel file "<Financial_Details_WB>" under sheet "<Agriculture_expense>" and row <Row_no>
    When user fill agriculture expense details with "<DeductionHead>" expense head
    And user Save and Compute the financial details
    And user waits for notification message
    Then total "<NetDisposableIncome>" should get calculated as per the formula mentioned in the master
    @ImplementedBy-deep.maurya
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | NetDisposableIncome                        | NumberOfIncomeHead | DeductionHead | OccupationType | Financial_Details_WB   | Agriculture_income | Row_no | Agriculture_expense | Liability_Details_sheet | Liability_details_row_no | Liability | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_RowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | monthly Net Disposable income(Agriculture) | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net Disposable income(Agriculture) | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net Disposable income(Agriculture) | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net Disposable income(Agriculture) | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | NetDisposableIncome                        | NumberOfIncomeHead | DeductionHead | OccupationType | Financial_Details_WB   | Agriculture_income | Row_no | Agriculture_expense | Liability_Details_sheet | Liability_details_row_no | Liability | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_RowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | monthly Net Disposable income(Agriculture) | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net Disposable income(Agriculture) | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net Disposable income(Agriculture) | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net Disposable income(Agriculture) | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | NetDisposableIncome                        | NumberOfIncomeHead | DeductionHead | OccupationType | Financial_Details_WB   | Agriculture_income | Row_no | Agriculture_expense | Liability_Details_sheet | Liability_details_row_no | Liability | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_RowNum | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   |
      | monthly Net Disposable income(Agriculture) | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | monthly Net Disposable income(Agriculture) | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | monthly Net Disposable income(Agriculture) | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | monthly Net Disposable income(Agriculture) | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 132                           | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | NetDisposableIncome                        | NumberOfIncomeHead | DeductionHead | OccupationType | Financial_Details_WB   | Agriculture_income | Row_no | Agriculture_expense | Liability_Details_sheet | Liability_details_row_no | Liability | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_RowNum | ApplicantType   | Category | Key | ApplicationStage   | ProductType   |
      | monthly Net Disposable income(Agriculture) | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net Disposable income(Agriculture) | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net Disposable income(Agriculture) | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | monthly Net Disposable income(Agriculture) | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | single             | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | single             | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | multiple           | single        | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |
      | annual Net Disposable income(Agriculture)  | multiple           | multiple      | Agriculture    | financial_details.xlsx | agriculture_income | 0      | agriculture_expense | liability_details       | 1                        | single    | employment_details.xlsx | home                   | 74                            | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> |

  #  Assests
  Scenario Outline: ACAUTOCAS-5375: Validation of total Assets value for Agriculture employee with <AssetCategory> assets category in Income expense summary for <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Agriculture" with delete existing occupation
    And user open financial details
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
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | assets                  | 129                            | Agriculture    | Assets value |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | assets                  | 129                            | Agriculture    | Assets value |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | AssetCategory | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | OccupationType | FieldType    |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single        | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | assets                  | 129                            | Agriculture    | Assets value |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple      | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | assets                  | 129                            | Agriculture    | Assets value |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   | AssetCategory | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | OccupationType | FieldType    |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | single        | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | assets                  | 129                            | Agriculture    | Assets value |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | multiple      | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | assets                  | 129                            | Agriculture    | Assets value |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | AssetCategory | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | OccupationType | FieldType    |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single        | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | assets                  | 129                            | Agriculture    | Assets value |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple      | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | assets                  | 129                            | Agriculture    | Assets value |


  #Liability
  @Perishable
  Scenario Outline: ACAUTOCAS-5376: Validation of total liabilities value for Agriculture employee with <LiabilityType> liability type in Income expense summary for <ProductType> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Agriculture" with delete existing occupation
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fill "<LiabilityType>" liability details
    And user Save and Compute the financial details
    And user waits for notification message
    Then the addition of all "<LiabilityValue>" should be matched with the total liabilities value in income expense summary
    @ImplementedBy-rishabh.sachan
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | LiabilityType | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | LiabilityValue                 |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single        | Agriculture    | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 1                                        | liabilities value(Agriculture) |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple      | Agriculture    | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 1                                        | liabilities value(Agriculture) |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | LiabilityType | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | LiabilityValue                 |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single        | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | liability_details                 | 1                                        | liabilities value(Agriculture) |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple      | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | liability_details                 | 1                                        | liabilities value(Agriculture) |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | ApplicantType   | Category   | Key | ApplicationStage   | ProductType   | LiabilityType | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | LiabilityValue                 |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | single        | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | liability_details                 | 1                                        | liabilities value(Agriculture) |
      | <ApplicantType> | <Category> |     | <ApplicationStage> | <ProductType> | multiple      | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | liability_details                 | 1                                        | liabilities value(Agriculture) |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ApplicantType   | Category | Key | ApplicationStage   | ProductType   | LiabilityType | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum | LiabilityValue                 |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | single        | Agriculture    | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 1                                        | liabilities value(Agriculture) |
      | <ApplicantType> |          |     | <ApplicationStage> | <ProductType> | multiple      | Agriculture    | employment_details.xlsx | home                   | 3                             | financial_details.xlsx | liability_details                 | 1                                        | liabilities value(Agriculture) |

#    New Scenarios added
#ACAUTOCAS-11946-For removed Scenario which was duplicates
  #FeatureID-ACAUTOCAS-5966,CAS-169595
 #Bug:CAS-169595
  @FixedTest28
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-5966: Validation of <IncomeExpenseSummary> for Agriculture employee in Income expense summary at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Agriculture" with delete existing occupation
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_Other_Income_Details>" and row <FinancialDetails_Other_Income_Details_rowNum>
    And user fill "<Financial_Attribute>" in financial details
    And user clicks on save and compute
    When user deletes the filled "<Financial_Attribute>" in financial details
#   Then  "<NetDisposableIncome>" should be the difference between total incomes along with total expenses in income expense summary
    Then total "<IncomeExpenseSummary>" should get updated as per the formula mentioned in the master
    @ImplementedBy-deep.maurya
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Financial_Attribute  | IncomeExpenseSummary          | ApplicationStage   | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_Other_Income_Details | FinancialDetails_Other_Income_Details_rowNum | ApplicantType   | Category | Key |
      | <ProductType> | Other Income Details | monthly total income          | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | annual total income           | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | monthly Net Disposable income | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | annual Net Disposable income  | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | monthly Net income            | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | annual Net income             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | annual Net income             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | monthly deduction             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | annual deduction              | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | monthly Net Disposable income | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | annual Net Disposable income  | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | monthly Net income            | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | annual Net income             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | ProductType   | Financial_Attribute  | IncomeExpenseSummary          | ApplicationStage   | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_Other_Income_Details | FinancialDetails_Other_Income_Details_rowNum | ApplicantType   | Category | Key |
      | <ProductType> | Other Income Details | monthly total income          | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | annual total income           | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | monthly Net Disposable income | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | annual Net Disposable income  | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | monthly Net income            | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | annual Net income             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | annual Net income             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | monthly deduction             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | annual deduction              | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | monthly Net Disposable income | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | annual Net Disposable income  | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | monthly Net income            | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | annual Net income             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @FixedJsClick2
    @Islamic
    @Release
@Part-2
    Examples:
      | ProductType   | Financial_Attribute  | IncomeExpenseSummary          | ApplicationStage   | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_Other_Income_Details | FinancialDetails_Other_Income_Details_rowNum | ApplicantType   | Category   | Key |
      | <ProductType> | Other Income Details | monthly total income          | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <Category> |     |
      | <ProductType> | Other Income Details | annual total income           | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <Category> |     |
      | <ProductType> | Other Income Details | monthly Net Disposable income | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <Category> |     |
      | <ProductType> | Other Income Details | annual Net Disposable income  | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <Category> |     |
      | <ProductType> | Other Income Details | monthly Net income            | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <Category> |     |
      | <ProductType> | Other Income Details | annual Net income             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> | <Category> |     |
      | <ProductType> | Expense Details      | annual Net income             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Expense Details      | monthly deduction             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Expense Details      | annual deduction              | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Expense Details      | monthly Net Disposable income | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Expense Details      | annual Net Disposable income  | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Expense Details      | monthly Net income            | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Expense Details      | annual Net income             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 132                           | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> | <Category> |     |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | Financial_Attribute  | IncomeExpenseSummary          | ApplicationStage   | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_Other_Income_Details | FinancialDetails_Other_Income_Details_rowNum | ApplicantType   | Category | Key |
      | <ProductType> | Other Income Details | monthly total income          | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | annual total income           | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | monthly Net Disposable income | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | annual Net Disposable income  | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | monthly Net income            | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Other Income Details | annual Net income             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | other_income_details                  | 0                                            | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | annual Net income             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | monthly deduction             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | annual deduction              | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | monthly Net Disposable income | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | annual Net Disposable income  | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | monthly Net income            | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |
      | <ProductType> | Expense Details      | annual Net income             | <ApplicationStage> | Agriculture    | employment_details.xlsx | home                   | 74                            | financial_details.xlsx | expense_details                       | 35                                           | <ApplicantType> |          |     |

#  FeatureID:ACAUTOCAS-5966
  @Sanity
  Scenario Outline: ACAUTOCAS-13084: Validation of total Assets value for Agriculture employee in Income expense summary at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Agriculture" with delete existing occupation
    And user reads data from the excel file "financial_details.xlsx" under sheet "assets" and row 129
    And user fill assets details with "single" assets category
    And user clicks on save and compute
    And user delete the added assets details
    When user clicks on save and compute
    Then total Assets value should be updated in income expense summary
    @ImplementedBy-deep.maurya
    @Release @Part-2 @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |

    # ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 132                           |
   # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 132                           |
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |


  #FeatureID-ACAUTOCAS-5966
  @Sanity
  Scenario Outline: ACAUTOCAS-13085: Validation of total liabilities value for Agriculture employee in Income expense summary at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Agriculture" with delete existing occupation
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 1
    When user fill "single" liability details
    And user clicks on save and compute
    And user delete liability details
    And user clicks on save and compute
    Then total liabilities value should be updated in income expense summary
    @ImplementedBy-deep.maurya
    @Release @Part-2 @Conventional
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
 # ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 132                           |
  # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @FixedJsClick2
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 132                           |
   #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |

  #FeatureID-ACAUTOCAS-5966
  Scenario Outline: ACAUTOCAS-13086: Validation of <Summary_Column> column for Agriculture employee in Income expense summary at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<OccupationType>"
    When user open financial details
    Then "<Summary_Column>" should be present in income expense summary
    @ImplementedBy-deep.maurya
    @Release @Part-2 @Conventional
    @ApplicantSanity
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Summary_Column | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | OccupationType |
      | Annual         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            | Agriculture    |
      | Monthly        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            | Agriculture    |
      | Summary Head   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            | Agriculture    |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | Summary_Column | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | OccupationType |
      | Annual         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 132                           | Agriculture    |
      | Monthly        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 132                           | Agriculture    |
      | Summary Head   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 132                           | Agriculture    |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | Summary_Column | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | OccupationType |
      | Annual         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 132                           | Agriculture    |
      | Monthly        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 132                           | Agriculture    |
      | Summary Head   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 132                           | Agriculture    |
  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | Summary_Column | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | OccupationType |
      | Annual         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            | Agriculture    |
      | Monthly        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            | Agriculture    |
      | Summary Head   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            | Agriculture    |

  #FeatureID-ACAUTOCAS-5966,CAS-123362
  #Bug:CAS-123362
  Scenario Outline: ACAUTOCAS-13087: Financial data validation in Income expense summary in <Mode> for Agriculture employee in Income expense summary at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill employment details with Occupation Type as "Agriculture" with delete existing occupation
    And user reads data from the excel file "financial_details.xlsx" under sheet "other_income_details" and row 0
    And user fill financial details in "<Mode>"
    When user change the mode into "<Switch_Mode>"
    Then income expense summary details should be available with same financial data
    @ImplementedBy-deep.maurya
    @Release @Part-2 @Conventional
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Mode     | Switch_Mode | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Tabs     | Expanded    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
      | <ApplicationStage> | <ProductType> | Expanded | Tabs        | <ApplicantType> |          |     | employment_details.xlsx | home                   | 74                            |
# ${ ProductType : ["IHF","IAF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | ApplicationStage   | ProductType   | Mode     | Switch_Mode | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Tabs     | Expanded    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 132                           |
      | <ApplicationStage> | <ProductType> | Expanded | Tabs        | <ApplicantType> |          |     | employment_details.xlsx | home                   | 132                           |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ Category : ["bonds"]}
    @FixedJsClick
    @ImplementedBy-kanika.mahal
    @Islamic
    @Release
@Part-2
    Examples:
      | ApplicationStage   | ProductType   | Mode     | Switch_Mode | ApplicantType   | Category   | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Tabs     | Expanded    | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 132                           |
      | <ApplicationStage> | <ProductType> | Expanded | Tabs        | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 132                           |
 #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
  #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Mode     | Switch_Mode | ApplicantType   | Category | Key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Tabs     | Expanded    | <ApplicantType> |          |     | employment_details.xlsx | home                   | 91                            |
      | <ApplicationStage> | <ProductType> | Expanded | Tabs        | <ApplicantType> |          |     | employment_details.xlsx | home                   | 91                            |

