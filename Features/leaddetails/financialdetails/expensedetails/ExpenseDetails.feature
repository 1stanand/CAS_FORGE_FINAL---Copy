@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-harshprit.kumar
@TechReviewedBy-harshprit.kumar
@AppInfoAdoption
# ${ApplicantType:["indiv"]}
Feature: Expense details in financial details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #FeatureID-ACAUTOCAS-162
  @Sanity
  Scenario Outline: ACAUTOCAS-13035: Add <Single_Multiple> expense details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenseDetails>" and row <FinancialDetails_expenseDetails_rowNum>
    When user fill expense details with "<Single_Multiple>" expense head
    Then "<Single_Multiple>" expense details should be added
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-manish.yadav2
    @Release @Part-1
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 53   |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 53   |

    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 152  |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 152  |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${ProductType:["IPF"]}
   #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> | <Category> |     | 152  |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> | <Category> |     | 152  |


    # ${ProductType:["FAS","GL","JLG","SHG"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 152  |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 152  |

  #FeatureID-ACAUTOCAS-162
  Scenario Outline: ACAUTOCAS-13036: Adding multiple expense details with same expense head in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenseDetails>" and row <FinancialDetails_expenseDetails_rowNum>
    When user add "<Single_Multiple>" expense details with same expense head
    Then expense details should not be added with an error message
     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-manish.yadav2
    @Release @Part-1
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 44                                     | <ApplicantType> |          |     | 53   |


   #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
   #${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 44                                     | <ApplicantType> |          |     | 152  |

       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
   #${ProductType:["IPF"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 44                                     | <ApplicantType> | <Category> |     | 152  |



     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 44                                     | <ApplicantType> |          |     | 152  |


  #FeatureID-ACAUTOCAS-162
  @Perishable
  Scenario Outline: ACAUTOCAS-13037: Delete the <Single_Multiple> added expense details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenseDetails>" and row <FinancialDetails_expenseDetails_rowNum>
    When user fill expense details with "<Single_Multiple>" expense head
    And user deletes added expense details
    Then expense details are deleted successfully
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-manish.yadav2
    @Release @Part-1
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 53   |


   #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
   #${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 152  |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
   #${ProductType:["IPF"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> | <Category> |     | 152  |


    # ${ProductType:["FAS","GL","JLG","SHG"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 152  |

  #FeatureID-ACAUTOCAS-162
  Scenario Outline: ACAUTOCAS-13038: Save expense details without filling <Field> field in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenses>" and row <FinancialDetails_expense_rowNum>
    When user fills all fields except "<Field>" field with save expense details
    Then "<Field>" field "<Throws_notThrows>" in Expense Details
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-manish.yadav2
    @Release @Part-1
    Examples:
      | Field             | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | key | Row1 | FinancialDetailsWB     | FinancialDetails_expenses | FinancialDetails_expense_rowNum | Throws_notThrows                   |
      | Expense Head      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | financial_details.xlsx | expense_details           | 28                              | throws an error with error message |
      | Expense Frequency | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | financial_details.xlsx | expense_details           | 43                              | throws an error with error message |
      | Currency          | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | financial_details.xlsx | expense_details           | 43                              | throws an error with error message |
      | Amount            | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | financial_details.xlsx | expense_details           | 43                              | throws an error with error message |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
     #${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Field             | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | key | Row1 | FinancialDetailsWB     | FinancialDetails_expenses | FinancialDetails_expense_rowNum | Throws_notThrows                   |
      | Expense Head      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | financial_details.xlsx | expense_details           | 28                              | throws an error with error message |
      | Expense Frequency | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | financial_details.xlsx | expense_details           | 43                              | throws an error with error message |
      | Currency          | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | financial_details.xlsx | expense_details           | 43                              | throws an error with error message |
      | Amount            | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | financial_details.xlsx | expense_details           | 43                              | throws an error with error message |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${ProductType:["IPF"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Field             | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category   | key | Row1 | FinancialDetailsWB     | FinancialDetails_expenses | FinancialDetails_expense_rowNum | Throws_notThrows                   |
      | Expense Head      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | financial_details.xlsx | expense_details           | 28                              | throws an error with error message |
      | Expense Frequency | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | financial_details.xlsx | expense_details           | 43                              | throws an error with error message |
      | Currency          | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | financial_details.xlsx | expense_details           | 43                              | throws an error with error message |
      | Amount            | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | financial_details.xlsx | expense_details           | 43                              | throws an error with error message |


   #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Field             | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | key | Row1 | FinancialDetailsWB     | FinancialDetails_expenses | FinancialDetails_expense_rowNum | Throws_notThrows                   |
      | Expense Head      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | financial_details.xlsx | expense_details           | 28                              | throws an error with error message |
      | Expense Frequency | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | financial_details.xlsx | expense_details           | 43                              | throws an error with error message |
      | Currency          | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | financial_details.xlsx | expense_details           | 43                              | throws an error with error message |
      | Amount            | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | financial_details.xlsx | expense_details           | 43                              | throws an error with error message |


  #FeatureID-ACAUTOCAS-162
  Scenario Outline: ACAUTOCAS-13039: Field type validation of <Field> in expense details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    When user clicks on Expense Details
    Then "<Field>" field should be "<Field_Type>" in expense details of financial details
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-manish.yadav2
    @Release @Part-1
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | key | Row1 |
      | Expense Head        | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   |
      | Expense Frequency   | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   |
      | Currency            | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   |


   #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
   #${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | key | Row1 |
      | Expense Head        | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  |
      | Expense Frequency   | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  |
      | Currency            | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  |

       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
   #${ProductType:["IPF"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category   | key | Row1 |
      | Expense Head        | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  |
      | Expense Frequency   | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  |
      | Currency            | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  |

    # ${ProductType:["FAS","GL","JLG","SHG"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | key | Row1 |
      | Expense Head        | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   |
      | Expense Frequency   | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   |
      | Currency            | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   |


  #FeatureID-ACAUTOCAS-162
  @longRun
  Scenario Outline: ACAUTOCAS-13040: <Field_Name> field validation with <Validity> <InputType> in expense details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenseDetails>" and row <FinancialDetails_expenseDetails_rowNum>
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in expense details
    Then "<Field_Name>" field will "<Throws_notThrows>" in expense details
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-manish.yadav2
    @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | Field_Name | Validity | InputType                                         | Throws_notThrows         | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | financial_details.xlsx | expense_details                 | 45                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | value more than 18 digits                         | throw an error           | financial_details.xlsx | expense_details                 | 46                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | characters                                        | throw an error           | financial_details.xlsx | expense_details                 | 47                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | special characters                                | throw an error           | financial_details.xlsx | expense_details                 | 48                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | alphanumeric                                      | throw an error           | financial_details.xlsx | expense_details                 | 49                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | valid    | value between 0 to 100                            | does not throw any error | financial_details.xlsx | expense_details                 | 50                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | financial_details.xlsx | expense_details                 | 51                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | invalid  | negative values                                   | throw an error           | financial_details.xlsx | expense_details                 | 52                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | invalid  | value more  than 100                              | throw an error           | financial_details.xlsx | expense_details                 | 53                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error           | financial_details.xlsx | expense_details                 | 54                                     | <ApplicantType> |          |     | 53   |



      #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | Field_Name | Validity | InputType                                         | Throws_notThrows         | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | financial_details.xlsx | expense_details                 | 45                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | value more than 18 digits                         | throw an error           | financial_details.xlsx | expense_details                 | 46                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | characters                                        | throw an error           | financial_details.xlsx | expense_details                 | 47                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | special characters                                | throw an error           | financial_details.xlsx | expense_details                 | 48                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | alphanumeric                                      | throw an error           | financial_details.xlsx | expense_details                 | 49                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | valid    | value between 0 to 100                            | does not throw any error | financial_details.xlsx | expense_details                 | 50                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | financial_details.xlsx | expense_details                 | 51                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | invalid  | negative values                                   | throw an error           | financial_details.xlsx | expense_details                 | 52                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | invalid  | value more  than 100                              | throw an error           | financial_details.xlsx | expense_details                 | 53                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error           | financial_details.xlsx | expense_details                 | 54                                     | <ApplicantType> |          |     | 152  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | Field_Name | Validity | InputType                                         | Throws_notThrows         | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | financial_details.xlsx | expense_details                 | 45                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | value more than 18 digits                         | throw an error           | financial_details.xlsx | expense_details                 | 46                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | characters                                        | throw an error           | financial_details.xlsx | expense_details                 | 47                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | special characters                                | throw an error           | financial_details.xlsx | expense_details                 | 48                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | alphanumeric                                      | throw an error           | financial_details.xlsx | expense_details                 | 49                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | valid    | value between 0 to 100                            | does not throw any error | financial_details.xlsx | expense_details                 | 50                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | financial_details.xlsx | expense_details                 | 51                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | invalid  | negative values                                   | throw an error           | financial_details.xlsx | expense_details                 | 52                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | invalid  | value more  than 100                              | throw an error           | financial_details.xlsx | expense_details                 | 53                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error           | financial_details.xlsx | expense_details                 | 54                                     | <ApplicantType> | <Category> |     | 152  |



       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | Field_Name | Validity | InputType                                         | Throws_notThrows         | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | financial_details.xlsx | expense_details                 | 45                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | value more than 18 digits                         | throw an error           | financial_details.xlsx | expense_details                 | 46                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | characters                                        | throw an error           | financial_details.xlsx | expense_details                 | 47                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | special characters                                | throw an error           | financial_details.xlsx | expense_details                 | 48                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Amount     | invalid  | alphanumeric                                      | throw an error           | financial_details.xlsx | expense_details                 | 49                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | valid    | value between 0 to 100                            | does not throw any error | financial_details.xlsx | expense_details                 | 50                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | financial_details.xlsx | expense_details                 | 51                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | invalid  | negative values                                   | throw an error           | financial_details.xlsx | expense_details                 | 52                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | invalid  | value more  than 100                              | throw an error           | financial_details.xlsx | expense_details                 | 53                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | <Occupation> | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error           | financial_details.xlsx | expense_details                 | 54                                     | <ApplicantType> |          |     | 53   |

  #FeatureID-ACAUTOCAS-162
  @longRun
  Scenario Outline: ACAUTOCAS-13041: Net Amount (Annual) validation based on <Frequency> in expense details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenseDetails>" and row 43
    And user fill expense details with "single" expense head
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenseDetails>" and row <FinancialDetails_expenseDetails_rowNum>
    When user fills expense details with "<Frequency>" expense frequency
    Then Net Amount (Annual) should be calculated correctly for expense details
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-manish.yadav2
    @Release @Part-1
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | Annually    | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 19                                     | <ApplicantType> |          |     | 53   |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 20                                     | <ApplicantType> |          |     | 53   |
      | Fortnightly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 21                                     | <ApplicantType> |          |     | 53   |
      | Half Yearly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 22                                     | <ApplicantType> |          |     | 53   |
      | Monthly     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 17                                     | <ApplicantType> |          |     | 53   |
      | OneTime     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 23                                     | <ApplicantType> |          |     | 53   |
      | Quarterly   | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 18                                     | <ApplicantType> |          |     | 53   |
      | Weekly      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 24                                     | <ApplicantType> |          |     | 53   |

     #${ProductType:["IAF","IHF"]}
     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | Annually    | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 19                                     | <ApplicantType> |          |     | 152  |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 20                                     | <ApplicantType> |          |     | 152  |
      | Fortnightly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 21                                     | <ApplicantType> |          |     | 152  |
      | Half Yearly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 22                                     | <ApplicantType> |          |     | 152  |
      | Monthly     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 17                                     | <ApplicantType> |          |     | 152  |
      | OneTime     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 23                                     | <ApplicantType> |          |     | 152  |
      | Quarterly   | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 18                                     | <ApplicantType> |          |     | 152  |
      | Weekly      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 24                                     | <ApplicantType> |          |     | 152  |


       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
       # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | Annually    | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 19                                     | <ApplicantType> | <Category> |     | 152  |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 20                                     | <ApplicantType> | <Category> |     | 152  |
      | Fortnightly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 21                                     | <ApplicantType> | <Category> |     | 152  |
      | Half Yearly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 22                                     | <ApplicantType> | <Category> |     | 152  |
      | Monthly     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 17                                     | <ApplicantType> | <Category> |     | 152  |
      | OneTime     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 23                                     | <ApplicantType> | <Category> |     | 152  |
      | Quarterly   | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 18                                     | <ApplicantType> | <Category> |     | 152  |
      | Weekly      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 24                                     | <ApplicantType> | <Category> |     | 152  |



     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | Annually    | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 19                                     | <ApplicantType> |          |     | 53   |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 20                                     | <ApplicantType> |          |     | 53   |
      | Fortnightly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 21                                     | <ApplicantType> |          |     | 53   |
      | Half Yearly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 22                                     | <ApplicantType> |          |     | 53   |
      | Monthly     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 17                                     | <ApplicantType> |          |     | 53   |
      | OneTime     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 23                                     | <ApplicantType> |          |     | 53   |
      | Quarterly   | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 18                                     | <ApplicantType> |          |     | 53   |
      | Weekly      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 24                                     | <ApplicantType> |          |     | 53   |



      #FeatureID-ACAUTOCAS-162
  Scenario Outline: ACAUTOCAS-13042: Net Amount (Annual) should be auto update based on <Fields> field of expense details for <Occupation> occupation at <ApplicationStage> stage in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenseDetails>" and row 43
    And user fill expense details with "single" expense head
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenseDetails>" and row <FinancialDetails_expenseDetails_rowNum>
    When user change the value of "<Fields>" field in expense details
    Then Net Amount (Annual) should be auto update correctly in expense details
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-manish.yadav2
    @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | Fields                   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ApplicationStage> | <ProductType> | Amount                   | <Occupation> | financial_details.xlsx | expense_details                 | 45                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Percentage               | <Occupation> | financial_details.xlsx | expense_details                 | 50                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Annually    | <Occupation> | financial_details.xlsx | expense_details                 | 22                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Bi-Monthly  | <Occupation> | financial_details.xlsx | expense_details                 | 19                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Fortnightly | <Occupation> | financial_details.xlsx | expense_details                 | 20                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Half Yearly | <Occupation> | financial_details.xlsx | expense_details                 | 21                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Monthly     | <Occupation> | financial_details.xlsx | expense_details                 | 22                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as OneTime     | <Occupation> | financial_details.xlsx | expense_details                 | 17                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Quarterly   | <Occupation> | financial_details.xlsx | expense_details                 | 23                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Weekly      | <Occupation> | financial_details.xlsx | expense_details                 | 18                                     | <ApplicantType> |          |     | 53   |


       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ProductType:["IAF","IHF"]}
    # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Fields                   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ApplicationStage> | <ProductType> | Amount                   | <Occupation> | financial_details.xlsx | expense_details                 | 45                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | Percentage               | <Occupation> | financial_details.xlsx | expense_details                 | 50                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Annually    | <Occupation> | financial_details.xlsx | expense_details                 | 22                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Bi-Monthly  | <Occupation> | financial_details.xlsx | expense_details                 | 19                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Fortnightly | <Occupation> | financial_details.xlsx | expense_details                 | 20                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Half Yearly | <Occupation> | financial_details.xlsx | expense_details                 | 21                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Monthly     | <Occupation> | financial_details.xlsx | expense_details                 | 22                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as OneTime     | <Occupation> | financial_details.xlsx | expense_details                 | 17                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Quarterly   | <Occupation> | financial_details.xlsx | expense_details                 | 23                                     | <ApplicantType> |          |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Weekly      | <Occupation> | financial_details.xlsx | expense_details                 | 18                                     | <ApplicantType> |          |     | 152  |

      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ProductType:["IPF"]}
    # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Fields                   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | <ApplicationStage> | <ProductType> | Amount                   | <Occupation> | financial_details.xlsx | expense_details                 | 45                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | Percentage               | <Occupation> | financial_details.xlsx | expense_details                 | 50                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Annually    | <Occupation> | financial_details.xlsx | expense_details                 | 22                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Bi-Monthly  | <Occupation> | financial_details.xlsx | expense_details                 | 19                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Fortnightly | <Occupation> | financial_details.xlsx | expense_details                 | 20                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Half Yearly | <Occupation> | financial_details.xlsx | expense_details                 | 21                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Monthly     | <Occupation> | financial_details.xlsx | expense_details                 | 22                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as OneTime     | <Occupation> | financial_details.xlsx | expense_details                 | 17                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Quarterly   | <Occupation> | financial_details.xlsx | expense_details                 | 23                                     | <ApplicantType> | <Category> |     | 152  |
      | <ApplicationStage> | <ProductType> | Frequency as Weekly      | <Occupation> | financial_details.xlsx | expense_details                 | 18                                     | <ApplicantType> | <Category> |     | 152  |



       # ${ProductType:["FAS","GL","JLG","SHG"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
 # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Fields                   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ApplicationStage> | <ProductType> | Amount                   | <Occupation> | financial_details.xlsx | expense_details                 | 45                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Percentage               | <Occupation> | financial_details.xlsx | expense_details                 | 50                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Annually    | <Occupation> | financial_details.xlsx | expense_details                 | 22                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Bi-Monthly  | <Occupation> | financial_details.xlsx | expense_details                 | 19                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Fortnightly | <Occupation> | financial_details.xlsx | expense_details                 | 20                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Half Yearly | <Occupation> | financial_details.xlsx | expense_details                 | 21                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Monthly     | <Occupation> | financial_details.xlsx | expense_details                 | 22                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as OneTime     | <Occupation> | financial_details.xlsx | expense_details                 | 17                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Quarterly   | <Occupation> | financial_details.xlsx | expense_details                 | 23                                     | <ApplicantType> |          |     | 53   |
      | <ApplicationStage> | <ProductType> | Frequency as Weekly      | <Occupation> | financial_details.xlsx | expense_details                 | 18                                     | <ApplicantType> |          |     | 53   |

  #Bug:CAS-174066
  #FeatureID-ACAUTOCAS-162,CAS-174066
  @FixedExp
    @Perishable
  Scenario Outline: ACAUTOCAS-13043: <Field> field validation in expense details for <Occupation> occupation  at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenseDetails>" and row <FinancialDetails_expenseDetails_rowNum>
    When user fill expense details with "single" expense head to caret cursor in "<Field>"
    Then in expense details filled values of "<Field>" should comes in left of caret cursor
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-manish.yadav2
    @Release @Part-1
    Examples:
      | Field      | ProductType   | ApplicationStage   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | Amount     | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 53   |
      | Percentage | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 53   |

       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IAF","IHF"]}
    # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Field      | ProductType   | ApplicationStage   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | Amount     | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 152  |
      | Percentage | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 152  |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
     #${Category:["bonds"]}
    # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Field      | ProductType   | ApplicationStage   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | Amount     | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> | <Category> |     | 152  |
      | Percentage | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> | <Category> |     | 152  |




       # ${ProductType:["FAS","GL","JLG","SHG"]}
       # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
       # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Field      | ProductType   | ApplicationStage   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | Amount     | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 53   |
      | Percentage | <ProductType> | <ApplicationStage> | <Occupation> | financial_details.xlsx | expense_details                 | 43                                     | <ApplicantType> |          |     | 53   |



# Below outline will be implemented in upcoming release after validating "CAS-112851" issue in current environment
# CAS-112851	Mutual Marketplace Pty Ltd Logged By: PRIYA.SAXENA - PCCU || More than 11 Expenses are Not Getting Saved in Expense Details
  #FeatureID-ACAUTOCAS-162
  @Deferred
   @Sanity
  Scenario Outline: ACAUTOCAS-13849: Adding <NoOfHead> details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 3      | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_expenseDetails>" and row <FinancialDetails_expenseDetails_rowNum>
    When user add "<NoOfHead>" details
    Then "<NoOfHead>" details should be added successfully
      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    Examples:
      | NoOfHead              | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category   | key   | Row1 |
      | more than 11 expenses | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 44                                     | <ApplicantType> | <Category> | <key> | 53   |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
   #${ProductType:["IAF","IHF"]}
    @Islamic
    Examples:
      | NoOfHead              | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category   | key   | Row1 |
      | more than 11 expenses | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 44                                     | <ApplicantType> | <Category> | <key> | 152  |


       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
   #${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    Examples:
      | NoOfHead              | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category   | key   | Row1 |
      | more than 11 expenses | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 44                                     | <ApplicantType> | <Category> | <key> | 152  |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
      # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | NoOfHead              | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_expenseDetails | FinancialDetails_expenseDetails_rowNum | ApplicantType   | Category   | key   | Row1 |
      | more than 11 expenses | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | expense_details                 | 44                                     | <ApplicantType> | <Category> | <key> | 53   |

    