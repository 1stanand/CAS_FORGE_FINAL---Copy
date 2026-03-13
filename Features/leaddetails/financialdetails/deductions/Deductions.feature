@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-harshprit.kumar
@TechReviewedBy-harshprit.kumar
@AppInfoAdoption
#${ApplicantType:["indiv"]}
Feature:Deductions in financial details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


    #FeatureID:ACAUTOCAS-161
  @Sanity
  Scenario Outline: ACAUTOCAS-13026: Add <Single_Multiple> deductions details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row <FinancialDetails_DeductionDetails_rowNum>
    When user fill deduction details with "<Single_Multiple>" deduction head of "<Occupation>"
    Then "<Single_Multiple>" deductions details should be added
   # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration"]}
   #${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Release @Part-1
    @Release3
    @Conventional
    @ImplementedBy-piyush.agnihotri
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 53   |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 53   |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
   #${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 152  |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 152  |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IPF"]}
    #${Category:["bonds"]}
   #${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> | <Category> |     | 152  |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> | <Category> |     | 152  |



          # ${ProductType:["FAS","GL","JLG","SHG"]}
     #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 53   |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 53   |

    #FeatureID:ACAUTOCAS-161
  @FixedExp
  Scenario Outline: ACAUTOCAS-13027: Adding multiple deductions details with same deductions head in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row <FinancialDetails_DeductionDetails_rowNum>
    When user fill deduction details with "<Single_Multiple>" deduction head of "<Occupation>"
    Then deduction details should not be added with an error message
    #${ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Login Acceptance","DDE","Recommendation","Reconsideration"]}
    #${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Release @Part-1
    @Release3
    @Conventional
    @ImplementedBy-piyush.agnihotri
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | Single_Multiple | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | <ApplicationStage> | <ProductType> | <Occupation> | multiple        | financial_details.xlsx | deductions                        | 36                                       | <ApplicantType> | <Category> |     | 53   |



        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
     #${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | Single_Multiple | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ApplicationStage> | <ProductType> | <Occupation> | multiple        | financial_details.xlsx | deductions                        | 36                                       | <ApplicantType> |          |     | 152  |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IPF"]}
#${Category:["bonds"]}
     #${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | Single_Multiple | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | <ApplicationStage> | <ProductType> | <Occupation> | multiple        | financial_details.xlsx | deductions                        | 36                                       | <ApplicantType> | <Category> |     | 152  |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
     #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | Single_Multiple | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ApplicationStage> | <ProductType> | <Occupation> | multiple        | financial_details.xlsx | deductions                        | 36                                       | <ApplicantType> |          |     | 53   |

    #FeatureID:ACAUTOCAS-161
  Scenario Outline: ACAUTOCAS-13028: Delete the <Single_Multiple> added deductions details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row <FinancialDetails_DeductionDetails_rowNum>
    When user fill deduction details with "<Single_Multiple>" deduction head of "<Occupation>"
    And user deletes deductions
    Then added deductions are deleted successfully
      #${ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Release @Part-1
    @Release3
    @Conventional
    @ImplementedBy-piyush.agnihotri
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 53   |

       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
     #${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 152  |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IPF"]}
    #${Category:["bonds"]}
     #${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> | <Category> |     | 152  |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
     #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Occupation:["Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 53   |

    #FeatureID:ACAUTOCAS-161

  Scenario Outline: ACAUTOCAS-13029: Save deductions details without filling <Field> field in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | <Row1> | Salaried |
      | employment_details.xlsx | home | 69     | Others   |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row <FinancialDetails_DeductionDetails_rowNum>
    When user fills all fields except "<Field>" field with save deductions details
    Then "<Field>" field "<Throws_notThrows>" in Expense Details
     #${ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration"]}
   # ${Occupation:["Salaried","Others"]}
    @Release @Part-1
    @Release3
    @Conventional
    @ImplementedBy-piyush.agnihotri
    Examples:
      | Field               | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 | Throws_notThrows                   |
      | Deduction Head      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> |          |     | 91   | throws an error with error message |
      | Deduction Frequency | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> |          |     | 91   | throws an error with error message |
      | Frequency           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> |          |     | 91   | throws an error with error message |
      | Currency            | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 61                                       | <ApplicantType> |          |     | 91   | throws an error with error message |
      | Amount              | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> |          |     | 91   | throws an error with error message |

      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
     # ${Occupation:["Salaried","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Field               | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 | Throws_notThrows                   |
      | Deduction Head      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> |          |     | 153  | throws an error with error message |
      | Deduction Frequency | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> |          |     | 153  | throws an error with error message |
      | Frequency           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> |          |     | 153  | throws an error with error message |
      | Currency            | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 61                                       | <ApplicantType> |          |     | 153  | throws an error with error message |
      | Amount              | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> |          |     | 153  | throws an error with error message |


       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IPF"]}
     #${Category:["bonds"]}
     # ${Occupation:["Salaried","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Field               | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category   | key | Row1 | Throws_notThrows                   |
      | Deduction Head      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> | <Category> |     | 153  | throws an error with error message |
      | Deduction Frequency | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> | <Category> |     | 153  | throws an error with error message |
      | Frequency           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> | <Category> |     | 153  | throws an error with error message |
      | Currency            | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 61                                       | <ApplicantType> | <Category> |     | 153  | throws an error with error message |
      | Amount              | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> | <Category> |     | 153  | throws an error with error message |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
     #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${Occupation:["Salaried","Others"]}
    @NotImplemented
    Examples:
      | Field               | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 | Throws_notThrows                   |
      | Deduction Head      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> |          |     | 91   | throws an error with error message |
      | Deduction Frequency | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> |          |     | 91   | throws an error with error message |
      | Frequency           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> |          |     | 91   | throws an error with error message |
      | Currency            | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> |          |     | 91   | throws an error with error message |
      | Amount              | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 50                                       | <ApplicantType> |          |     | 91   | throws an error with error message |

    #FeatureID:ACAUTOCAS-161
  Scenario Outline: ACAUTOCAS-13030: Field type validation of <Field> in deductions details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | <Row1> | Salaried |
      | employment_details.xlsx | home | 69     | Others   |
    And user fill employment details with Occupation Type as "<Occupation>"
    When user open deductions details accordion
    Then "<Field>" field should be "<Field_Type>" in deductions details tab
   
    #${ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE"]}
    # ${Occupation:["Salaried","Others"]}
    @Release @Part-1
    @Release3
    @Conventional
    @ImplementedBy-piyush.agnihotri
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | key | Row1 |
      | Deduction Head      | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 91   |
      | Deduction Frequency | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 91   |
      | Currency            | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 91   |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 91   |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 91   |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 91   |

      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
     # ${Occupation:["Salaried","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | key | Row1 |
      | Deduction Head      | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 153  |
      | Deduction Frequency | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 153  |
      | Currency            | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 153  |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 153  |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 153  |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 153  |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ProductType:["IPF"]}
       #${Category:["bonds"]}
     # ${Occupation:["Salaried","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category   | key | Row1 |
      | Deduction Head      | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 153  |
      | Deduction Frequency | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 153  |
      | Currency            | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 153  |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 153  |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 153  |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 153  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
     #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${Occupation:["Salaried","Others"]}
    @NotImplemented
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | key | Row1 |
      | Deduction Head      | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 91   |
      | Deduction Frequency | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 91   |
      | Currency            | dropdown   | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 91   |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 91   |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 91   |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 91   |

     
    #FeatureID:ACAUTOCAS-161
  Scenario Outline: ACAUTOCAS-13031: <Field_Name> field validation with <Validity> <InputType> in deductions details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | <Row1> | Salaried |
      | employment_details.xlsx | home | 69     | Others   |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row <FinancialDetails_DeductionDetails_rowNum>
    When user open deductions details accordion
    And user fills "<Validity>" "<Field_Name>" with "<InputType>" in deductions details
    Then "<Field_Name>" field will "<Throws_notThrows>" in deductions details
     #${ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration"]}
  # ${Occupation:["Salaried","Others"]}
    @Release @Part-1
    @Release3
    @Conventional
    @ImplementedBy-piyush.agnihotri
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows         | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 51                                       | <ApplicantType> |          |     | 91   |
      | Amount     | invalid  | value more than 18 digits                         | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 52                                       | <ApplicantType> |          |     | 91   |
      | Amount     | invalid  | characters                                        | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 53                                       | <ApplicantType> |          |     | 91   |
      | Amount     | invalid  | special characters                                | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 54                                       | <ApplicantType> |          |     | 91   |
      | Amount     | invalid  | alphanumeric                                      | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 55                                       | <ApplicantType> |          |     | 91   |
      | Percentage | valid    | value between 0 to 100                            | does not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 56                                       | <ApplicantType> |          |     | 91   |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 57                                       | <ApplicantType> |          |     | 91   |
      | Percentage | invalid  | negative values                                   | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 58                                       | <ApplicantType> |          |     | 91   |
      | Percentage | invalid  | value more  than 100                              | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 59                                       | <ApplicantType> |          |     | 91   |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 60                                       | <ApplicantType> |          |     | 91   |

       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ProductType:["IAF","IHF"]}
       # ${Occupation:["Salaried","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows         | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 51                                       | <ApplicantType> |          |     | 153  |
      | Amount     | invalid  | value more than 18 digits                         | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 52                                       | <ApplicantType> |          |     | 153  |
      | Amount     | invalid  | characters                                        | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 53                                       | <ApplicantType> |          |     | 153  |
      | Amount     | invalid  | special characters                                | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 54                                       | <ApplicantType> |          |     | 153  |
      | Amount     | invalid  | alphanumeric                                      | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 55                                       | <ApplicantType> |          |     | 153  |
      | Percentage | valid    | value between 0 to 100                            | does not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 56                                       | <ApplicantType> |          |     | 153  |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 57                                       | <ApplicantType> |          |     | 153  |
      | Percentage | invalid  | negative values                                   | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 58                                       | <ApplicantType> |          |     | 153  |
      | Percentage | invalid  | value more  than 100                              | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 59                                       | <ApplicantType> |          |     | 153  |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 60                                       | <ApplicantType> |          |     | 153  |

      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ProductType:["IPF"]}
      #${Category:["bonds"]}
       # ${Occupation:["Salaried","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows         | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 51                                       | <ApplicantType> | <Category> |     | 153  |
      | Amount     | invalid  | value more than 18 digits                         | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 52                                       | <ApplicantType> | <Category> |     | 153  |
      | Amount     | invalid  | characters                                        | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 53                                       | <ApplicantType> | <Category> |     | 153  |
      | Amount     | invalid  | special characters                                | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 54                                       | <ApplicantType> | <Category> |     | 153  |
      | Amount     | invalid  | alphanumeric                                      | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 55                                       | <ApplicantType> | <Category> |     | 153  |
      | Percentage | valid    | value between 0 to 100                            | does not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 56                                       | <ApplicantType> | <Category> |     | 153  |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 57                                       | <ApplicantType> | <Category> |     | 153  |
      | Percentage | invalid  | negative values                                   | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 58                                       | <ApplicantType> | <Category> |     | 153  |
      | Percentage | invalid  | value more  than 100                              | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 59                                       | <ApplicantType> | <Category> |     | 153  |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 60                                       | <ApplicantType> | <Category> |     | 153  |



      # ${ProductType:["FAS","GL","JLG","SHG"]}
     #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Salaried","Others"]}
    @NotImplemented
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows         | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | Amount     | valid    | numbers upto 18 digits                            | does not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 51                                       | <ApplicantType> |          |     | 91   |
      | Amount     | invalid  | value more than 18 digits                         | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 52                                       | <ApplicantType> |          |     | 91   |
      | Amount     | invalid  | characters                                        | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 53                                       | <ApplicantType> |          |     | 91   |
      | Amount     | invalid  | special characters                                | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 54                                       | <ApplicantType> |          |     | 91   |
      | Amount     | invalid  | alphanumeric                                      | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 55                                       | <ApplicantType> |          |     | 91   |
      | Percentage | valid    | value between 0 to 100                            | does not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 56                                       | <ApplicantType> |          |     | 91   |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | does not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 57                                       | <ApplicantType> |          |     | 91   |
      | Percentage | invalid  | negative values                                   | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 58                                       | <ApplicantType> |          |     | 91   |
      | Percentage | invalid  | value more  than 100                              | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 59                                       | <ApplicantType> |          |     | 91   |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 60                                       | <ApplicantType> |          |     | 91   |



   # FeatureID:ACAUTOCAS-161
  Scenario Outline: ACAUTOCAS-13032: Net Amount (Annual) validation based on <Frequency> in deductions details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | <Row1> | Salaried |
      | employment_details.xlsx | home | 69     | Others   |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row 4
    And user fill deduction details with "single" deduction head
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row <FinancialDetails_DeductionDetails_rowNum>
    When user fills deductions details with "<Frequency>" deductions frequency
    Then Net Amount (Annual) should be calculated correctly for deductions details
   #${ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration"]}
   # ${Occupation:["Salaried","Others"]}
    @Release @Part-1
    @Release3
    @Conventional
    @ImplementedBy-piyush.agnihotri
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | Annually    | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 29                                       | <ApplicantType> |          |     | 91   |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 30                                       | <ApplicantType> |          |     | 91   |
      | Fortnightly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 31                                       | <ApplicantType> |          |     | 91   |
      | Half Yearly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 32                                       | <ApplicantType> |          |     | 91   |
      | Monthly     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 91   |
      | OneTime     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 33                                       | <ApplicantType> |          |     | 91   |
      | Weekly      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 34                                       | <ApplicantType> |          |     | 91   |


     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ProductType:["IAF","IHF"]}
    # ${Occupation:["Salaried","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | Annually    | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 29                                       | <ApplicantType> |          |     | 153  |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 30                                       | <ApplicantType> |          |     | 153  |
      | Fortnightly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 31                                       | <ApplicantType> |          |     | 153  |
      | Half Yearly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 32                                       | <ApplicantType> |          |     | 153  |
      | Monthly     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 153  |
      | OneTime     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 33                                       | <ApplicantType> |          |     | 153  |
      | Weekly      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 34                                       | <ApplicantType> |          |     | 153  |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
     #${Category:["bonds"]}
     # ${Occupation:["Salaried","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | Annually    | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 29                                       | <ApplicantType> | <Category> |     | 153  |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 30                                       | <ApplicantType> | <Category> |     | 153  |
      | Fortnightly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 31                                       | <ApplicantType> | <Category> |     | 153  |
      | Half Yearly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 32                                       | <ApplicantType> | <Category> |     | 153  |
      | Monthly     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> | <Category> |     | 153  |
      | OneTime     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 33                                       | <ApplicantType> | <Category> |     | 153  |
      | Weekly      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 34                                       | <ApplicantType> | <Category> |     | 153  |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
     #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${Occupation:["Salaried","Others"]}
    @NotImplemented
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | Annually    | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 29                                       | <ApplicantType> |          |     | 91   |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 30                                       | <ApplicantType> |          |     | 91   |
      | Fortnightly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 31                                       | <ApplicantType> |          |     | 91   |
      | Half Yearly | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 32                                       | <ApplicantType> |          |     | 91   |
      | Monthly     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 91   |
      | OneTime     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 33                                       | <ApplicantType> |          |     | 91   |
      | Weekly      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | deductions                        | 34                                       | <ApplicantType> |          |     | 91   |

    #FeatureID:ACAUTOCAS-161
  Scenario Outline: ACAUTOCAS-13033: Net Amount (Annual) should be auto update based on <Fields> field of deductions details for <Occupation> occupation at <ApplicationStage> stage in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | <Row1> | Salaried |
      | employment_details.xlsx | home | 69     | Others   |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row 4
    And user fill deduction details with "single" deduction head
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row <FinancialDetails_DeductionDetails_rowNum>
    When user change the value of "<Fields>" field in deductions details
    Then Net Amount (Annual) should be calculated correctly for deductions details
          #${ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
       # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${Occupation:["Salaried","Others"]}
    @Release @Part-1
    @Release3
    @Conventional
    @ImplementedBy-piyush.agnihotri
    Examples:
      | ApplicationStage   | ProductType   | Fields                   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ApplicationStage> | <ProductType> | Amount                   | <Occupation> | financial_details.xlsx | deductions                        | 27                                       | <ApplicantType> |          |     | 91   |
      | <ApplicationStage> | <ProductType> | Percentage               | <Occupation> | financial_details.xlsx | deductions                        | 28                                       | <ApplicantType> |          |     | 91   |
      | <ApplicationStage> | <ProductType> | Frequency as Annually    | <Occupation> | financial_details.xlsx | deductions                        | 29                                       | <ApplicantType> |          |     | 91   |
      | <ApplicationStage> | <ProductType> | Frequency as Bi-Monthly  | <Occupation> | financial_details.xlsx | deductions                        | 30                                       | <ApplicantType> |          |     | 91   |
      | <ApplicationStage> | <ProductType> | Frequency as Fortnightly | <Occupation> | financial_details.xlsx | deductions                        | 31                                       | <ApplicantType> |          |     | 91   |
      | <ApplicationStage> | <ProductType> | Frequency as Half Yearly | <Occupation> | financial_details.xlsx | deductions                        | 32                                       | <ApplicantType> |          |     | 91   |
      | <ApplicationStage> | <ProductType> | Frequency as Monthly     | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 91   |
      | <ApplicationStage> | <ProductType> | Frequency as OneTime     | <Occupation> | financial_details.xlsx | deductions                        | 33                                       | <ApplicantType> |          |     | 91   |
      | <ApplicationStage> | <ProductType> | Frequency as Quarterly   | <Occupation> | financial_details.xlsx | deductions                        | 28                                       | <ApplicantType> |          |     | 91   |
      | <ApplicationStage> | <ProductType> | Frequency as Weekly      | <Occupation> | financial_details.xlsx | deductions                        | 34                                       | <ApplicantType> |          |     | 91   |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    # ${Occupation:["Salaried","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Fields                   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ApplicationStage> | <ProductType> | Amount                   | <Occupation> | financial_details.xlsx | deductions                        | 27                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Percentage               | <Occupation> | financial_details.xlsx | deductions                        | 28                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Annually    | <Occupation> | financial_details.xlsx | deductions                        | 29                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Bi-Monthly  | <Occupation> | financial_details.xlsx | deductions                        | 30                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Fortnightly | <Occupation> | financial_details.xlsx | deductions                        | 31                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Half Yearly | <Occupation> | financial_details.xlsx | deductions                        | 32                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Monthly     | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as OneTime     | <Occupation> | financial_details.xlsx | deductions                        | 33                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Quarterly   | <Occupation> | financial_details.xlsx | deductions                        | 28                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Weekly      | <Occupation> | financial_details.xlsx | deductions                        | 34                                       | <ApplicantType> |          |     | 153  |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IPF"]}
    #${Category:["bonds"]}
    # ${Occupation:["Salaried","Others"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Fields                   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | <ApplicationStage> | <ProductType> | Amount                   | <Occupation> | financial_details.xlsx | deductions                        | 27                                       | <ApplicantType> | <Category> |     | 153  |
      | <ApplicationStage> | <ProductType> | Percentage               | <Occupation> | financial_details.xlsx | deductions                        | 28                                       | <ApplicantType> | <Category> |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Annually    | <Occupation> | financial_details.xlsx | deductions                        | 29                                       | <ApplicantType> | <Category> |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Bi-Monthly  | <Occupation> | financial_details.xlsx | deductions                        | 30                                       | <ApplicantType> | <Category> |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Fortnightly | <Occupation> | financial_details.xlsx | deductions                        | 31                                       | <ApplicantType> | <Category> |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Half Yearly | <Occupation> | financial_details.xlsx | deductions                        | 32                                       | <ApplicantType> | <Category> |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Monthly     | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> | <Category> |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as OneTime     | <Occupation> | financial_details.xlsx | deductions                        | 33                                       | <ApplicantType> | <Category> |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Quarterly   | <Occupation> | financial_details.xlsx | deductions                        | 28                                       | <ApplicantType> | <Category> |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Weekly      | <Occupation> | financial_details.xlsx | deductions                        | 34                                       | <ApplicantType> | <Category> |     | 153  |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
     #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${Occupation:["Salaried","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Fields                   | Occupation   | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ApplicationStage> | <ProductType> | Amount                   | <Occupation> | financial_details.xlsx | deductions                        | 27                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Percentage               | <Occupation> | financial_details.xlsx | deductions                        | 28                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Annually    | <Occupation> | financial_details.xlsx | deductions                        | 29                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Bi-Monthly  | <Occupation> | financial_details.xlsx | deductions                        | 30                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Fortnightly | <Occupation> | financial_details.xlsx | deductions                        | 31                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Half Yearly | <Occupation> | financial_details.xlsx | deductions                        | 32                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Monthly     | <Occupation> | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as OneTime     | <Occupation> | financial_details.xlsx | deductions                        | 33                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Quarterly   | <Occupation> | financial_details.xlsx | deductions                        | 28                                       | <ApplicantType> |          |     | 153  |
      | <ApplicationStage> | <ProductType> | Frequency as Weekly      | <Occupation> | financial_details.xlsx | deductions                        | 34                                       | <ApplicantType> |          |     | 153  |

     #Bug:CAS-174066
    #FeatureID:ACAUTOCAS-161,CAS-174066
#  Scenario Outline:<Field> field validation in deductions details for <Occupation> occupation  at "<ApplicationStage>" in "<ProductType>"
#    And user open an application of "<ProductType>" for individual applicant at "<ApplicationStage>" stage
#    And user fills and saves employment details for occupation type as "<Occupation>"
#    And user open financial details
#    And user open deductions accordion
#    When user fills "<Field>" field in deductions details
#    Then filled values should comes in left of caret cursor
#        @Release @Part-1
#    @Conventional
#    @ImplementedBy-piyush.agnihotri
#    Examples:
#      | Field      | ProductType   | ApplicationStage   | Occupation   |
#      | Amount     | <ProductType> | <ApplicationStage> | <Occupation> |
#      | Percentage | <ProductType> | <ApplicationStage> | <Occupation> |


## ======= Only for SEP And SENP==========
  
     #StoryId:CAS-63446
    #FeatureID:ACAUTOCAS-161,CAS-63446
  @FixedExp
  @Sanity
  Scenario Outline: ACAUTOCAS-13034: Save deduction details without filling data for "<Years>" year for <Occupation> occupation in financial details at <ApplicationStage> stage for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_DeductionDetails>" and row <FinancialDetails_DeductionDetails_rowNum>
    When user fills deduction details without filling data for "<Years>" year of "<Occupation>"
    Then deduction details should be saved successfully
     #${ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Release @Part-1
    @Release3
    @Conventional
    @ImplementedBy-piyush.agnihotri
    Examples:
      | ProductType   | ApplicationStage   | Occupation   | Years | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ProductType> | <ApplicationStage> | <Occupation> | Three | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 53   |
      | <ProductType> | <ApplicationStage> | <Occupation> | Two   | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 53   |
      | <ProductType> | <ApplicationStage> | <Occupation> | One   | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 53   |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
     #${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicationStage   | Occupation   | Years | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ProductType> | <ApplicationStage> | <Occupation> | Three | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 152  |
      | <ProductType> | <ApplicationStage> | <Occupation> | Two   | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 152  |
      | <ProductType> | <ApplicationStage> | <Occupation> | One   | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 152  |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
      #${Category:["bonds"]}
       #${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @Release
    @Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicationStage   | Occupation   | Years | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category   | key | Row1 |
      | <ProductType> | <ApplicationStage> | <Occupation> | Three | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> | <Category> |     | 152  |
      | <ProductType> | <ApplicationStage> | <Occupation> | Two   | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> | <Category> |     | 152  |
      | <ProductType> | <ApplicationStage> | <Occupation> | One   | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> | <Category> |     | 152  |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
     #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Occupation   | Years | FinancialDetailsWB     | FinancialDetails_DeductionDetails | FinancialDetails_DeductionDetails_rowNum | ApplicantType   | Category | key | Row1 |
      | <ProductType> | <ApplicationStage> | <Occupation> | Three | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 53   |
      | <ProductType> | <ApplicationStage> | <Occupation> | Two   | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 53   |
      | <ProductType> | <ApplicationStage> | <Occupation> | One   | financial_details.xlsx | deductions                        | 35                                       | <ApplicantType> |          |     | 53   |
