@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@AppInfoAdoption
#${ApplicantType:["indiv"]}
Feature:Other income details in financial details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #FeatureID-ACAUTOCAS-160
  @Perishable
  @Sanity
  Scenario Outline: ACAUTOCAS-13353: Add <Single_Multiple> other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType> <Mannual>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user open other income details accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user add "<Single_Multiple>" other income details
    Then "<Single_Multiple>" other income details should be added successfully

      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | multiple        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <Occupation> | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | multiple        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <Occupation> | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | Occupation   | ApplicantType   | Category   | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | multiple        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | multiple        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <Occupation> | <ApplicantType> |          |     | 53   | 126  |




  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13354: Adding multiple other income details with same income head in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    When user fill other income details with "multiple" income head
    And user save_compute the other income details
    Then other income details not saved with an error message
        #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     | 53   | 126  |


        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     | 152  | 136  |


       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> | <Category> |     | 152  | 136  |



     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     | 53   | 126  |



  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13355: Delete the <Single_Multiple> added other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    When user fill other income details with "<Single_Multiple>" income head
    And user save_compute the other income details
    And user open other income details accordion
    And user deletes other income detail
    Then other income detail should be deleted successfully

      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     | 53   | 126  |


  #FeatureID-ACAUTOCAS-160
  @AppInfoFixed5
  @Perishable
  Scenario Outline: ACAUTOCAS-13356: Save other income details without filling <Field> field in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user open other income details accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    When user fills all fields except "<Field>" field to save other income details
    And user save_compute the other income details
    Then other income details not saved with an error message

        #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | Field         | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Income Head   | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> |          |     | 53   | 126  |
      | Income Source | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> |          |     | 53   | 126  |
      | Frequency     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> |          |     | 53   | 126  |
      | Amount        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> |          |     | 53   | 126  |
      | Percentage    | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing %     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field         | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Income Head   | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> |          |     | 152  | 136  |
      | Income Source | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> |          |     | 152  | 136  |
      | Frequency     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> |          |     | 152  | 136  |
      | Amount        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> |          |     | 152  | 136  |
      | Percentage    | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> |          |     | 152  | 136  |
      | Sharing %     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field         | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | Income Head   | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Income Source | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Frequency     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Amount        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Percentage    | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Sharing %     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Field         | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Income Head   | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> |          |     | 53   | 126  |
      | Income Source | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> |          |     | 53   | 126  |
      | Frequency     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> |          |     | 53   | 126  |
      | Amount        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> |          |     | 53   | 126  |
      | Percentage    | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing %     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> |          |     | 53   | 126  |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13357: Field type validation of <Field> in other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    When user open other income details accordion
    Then "<Field>" field of other details should be "<Field_Type>"

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category   | Key | Row1 | Row2 |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13358: <Field_Name> field validation with <Validity> <InputType> in other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    When user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    And user fills "<Validity>" "<Field_Name>" with "<InputType>" in other income details
    Then "<Field_Name>" field "<Throws_notThrows>" in other income details

  #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Amount     | valid    | numbers upto 18 digits                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> |          |     | 53   | 126  |
      | Amount     | invalid  | value more than 18 digits                         | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> |          |     | 53   | 126  |
      | Amount     | invalid  | characters                                        | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> |          |     | 53   | 126  |
      | Amount     | invalid  | special characters                                | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> |          |     | 53   | 126  |
      | Amount     | invalid  | alphanumeric                                      | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> |          |     | 53   | 126  |
      | Percentage | valid    | value between 0 to 100                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> |          |     | 53   | 126  |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> |          |     | 53   | 126  |
      | Percentage | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> |          |     | 53   | 126  |
      | Percentage | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> |          |     | 53   | 126  |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing    | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing    | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Amount     | valid    | numbers upto 18 digits                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> |          |     | 152  | 136  |
      | Amount     | invalid  | value more than 18 digits                         | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> |          |     | 152  | 136  |
      | Amount     | invalid  | characters                                        | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> |          |     | 152  | 136  |
      | Amount     | invalid  | special characters                                | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> |          |     | 152  | 136  |
      | Amount     | invalid  | alphanumeric                                      | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> |          |     | 152  | 136  |
      | Percentage | valid    | value between 0 to 100                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> |          |     | 152  | 136  |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> |          |     | 152  | 136  |
      | Percentage | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> |          |     | 152  | 136  |
      | Percentage | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> |          |     | 152  | 136  |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> |          |     | 152  | 136  |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> |          |     | 152  | 136  |
      | Sharing    | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> |          |     | 152  | 136  |
      | Sharing    | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> |          |     | 152  | 136  |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | Amount     | valid    | numbers upto 18 digits                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Amount     | invalid  | value more than 18 digits                         | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Amount     | invalid  | characters                                        | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Amount     | invalid  | special characters                                | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Amount     | invalid  | alphanumeric                                      | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Percentage | valid    | value between 0 to 100                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Percentage | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Percentage | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Sharing    | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Sharing    | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Amount     | valid    | numbers upto 18 digits                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> |          |     | 53   | 126  |
      | Amount     | invalid  | value more than 18 digits                         | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> |          |     | 53   | 126  |
      | Amount     | invalid  | characters                                        | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> |          |     | 53   | 126  |
      | Amount     | invalid  | special characters                                | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> |          |     | 53   | 126  |
      | Amount     | invalid  | alphanumeric                                      | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> |          |     | 53   | 126  |
      | Percentage | valid    | value between 0 to 100                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> |          |     | 53   | 126  |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> |          |     | 53   | 126  |
      | Percentage | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> |          |     | 53   | 126  |
      | Percentage | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> |          |     | 53   | 126  |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing    | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing    | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> |          |     | 53   | 126  |



  #FeatureID-ACAUTOCAS-160
  @FixedTest28
  Scenario Outline: ACAUTOCAS-13359: Net Amount (Annual) validation based on <Frequency> in other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "financial_details.xlsx" under sheet "other_income_details" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user fills other income details
    Then net Amount should be calculated "<calculation_type>"

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | attribute                | calculation_type | FinancialDetails_OtherIncomeDetails_rowNum | ProductType   | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | frequency as monthly     | correctly        | 110                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as quarterly   | correctly        | 111                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as annually    | correctly        | 112                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as bi-monthly  | correctly        | 113                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as fortnighly  | correctly        | 114                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as half-yearly | correctly        | 115                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as one time    | correctly        | 116                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as weekly      | correctly        | 117                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as monthly     | automatically    | 110                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as quarterly   | automatically    | 111                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as annually    | automatically    | 112                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as bi-monthly  | automatically    | 113                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as fortnighly  | automatically    | 114                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as half-yearly | automatically    | 115                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as one time    | automatically    | 116                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as weekly      | automatically    | 117                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | attribute                | calculation_type | FinancialDetails_OtherIncomeDetails_rowNum | ProductType   | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | frequency as monthly     | correctly        | 110                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as quarterly   | correctly        | 111                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as annually    | correctly        | 112                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as bi-monthly  | correctly        | 113                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as fortnighly  | correctly        | 114                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as half-yearly | correctly        | 115                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as one time    | correctly        | 116                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as weekly      | correctly        | 117                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as monthly     | automatically    | 110                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as quarterly   | automatically    | 111                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as annually    | automatically    | 112                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as bi-monthly  | automatically    | 113                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as fortnighly  | automatically    | 114                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as half-yearly | automatically    | 115                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as one time    | automatically    | 116                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | frequency as weekly      | automatically    | 117                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | attribute                | calculation_type | FinancialDetails_OtherIncomeDetails_rowNum | ProductType   | ApplicationStage   | Occupation   | ApplicantType   | Category   | Key | Row1 | Row2 |
      | frequency as monthly     | correctly        | 110                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as quarterly   | correctly        | 111                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as annually    | correctly        | 112                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as bi-monthly  | correctly        | 113                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as fortnighly  | correctly        | 114                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as half-yearly | correctly        | 115                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as one time    | correctly        | 116                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as weekly      | correctly        | 117                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as monthly     | automatically    | 110                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as quarterly   | automatically    | 111                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as annually    | automatically    | 112                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as bi-monthly  | automatically    | 113                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as fortnighly  | automatically    | 114                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as half-yearly | automatically    | 115                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as one time    | automatically    | 116                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | frequency as weekly      | automatically    | 117                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | attribute                | calculation_type | FinancialDetails_OtherIncomeDetails_rowNum | ProductType   | ApplicationStage   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | frequency as monthly     | correctly        | 110                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as quarterly   | correctly        | 111                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as annually    | correctly        | 112                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as bi-monthly  | correctly        | 113                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as fortnighly  | correctly        | 114                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as half-yearly | correctly        | 115                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as one time    | correctly        | 116                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as weekly      | correctly        | 117                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as monthly     | automatically    | 110                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as quarterly   | automatically    | 111                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as annually    | automatically    | 112                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as bi-monthly  | automatically    | 113                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as fortnighly  | automatically    | 114                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as half-yearly | automatically    | 115                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as one time    | automatically    | 116                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | frequency as weekly      | automatically    | 117                                        | <ProductType> | <ApplicationStage> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |



  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13361: Adding more details in other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    When user add more details in other income details
    Then more details should be add in other income details

      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> |          |     | 53   | 126  |



  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13362: <NonMandateField> field validation in new income detail pop up screen of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user open other income details accordion
    When user click on add more details in other income details
    Then "<NonMandateField>" should be non editable field


    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | NonMandateField       | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Net Amount            | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | NonMandateField       | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |
      | Net Amount            | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | NonMandateField       | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category   | Key | Row1 | Row2 |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |
      | Net Amount            | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | NonMandateField       | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |
      | Net Amount            | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |



  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13363: Required field validation in new income detail pop up screen of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    And user fills other income details
    When user open new income detail pop up screen to add more details in other income details
    Then following field should be present in All "Field"
      | Applicant type |
      | Name           |
      | Sharing %      |

      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 53   | 126  |


        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 152  | 136  |


       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> | <Category> |     | 152  | 136  |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 53   | 126  |



  #FeatureID-ACAUTOCAS-160
  @FixedTest28
  Scenario Outline: ACAUTOCAS-13364: Check All fields in new income detail pop up screen of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    When user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    And user fills other income details
    And user open new income detail pop up screen to add more details in other income details
    Then following field should be present in All "Field"
      | Net Amount            |
      | Mode Of Payment       |
      | Effective Tax Rate(%) |
      | Applicant type        |
      | Name                  |
      | Sharing %             |

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 152  | 136  |

      #${ProductType:["IPF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 53   | 126  |



  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13365: Field type validation of <Field> in new income detail pop up screen of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    When user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    And user fills other income details
    And user open new income detail pop up screen to add more details in other income details
    Then "<Field>" field of other details should be "<Field_Type>"

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | Field           | Field_Type | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Mode Of Payment | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 53   | 126  |
      | Applicant type  | input      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 53   | 126  |
      | Name            | input      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 53   | 126  |
      | Sharing %       | input      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 53   | 126  |


        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field           | Field_Type | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Mode Of Payment | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 152  | 136  |
      | Applicant type  | input      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 152  | 136  |
      | Name            | input      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 152  | 136  |
      | Sharing %       | input      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 152  | 136  |


       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field           | Field_Type | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | Mode Of Payment | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> | <Category> |     | 152  | 136  |
      | Applicant type  | input      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> | <Category> |     | 152  | 136  |
      | Name            | input      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> | <Category> |     | 152  | 136  |
      | Sharing %       | input      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> | <Category> |     | 152  | 136  |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Field           | Field_Type | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Mode Of Payment | drop down  | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 53   | 126  |
      | Applicant type  | input      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 53   | 126  |
      | Name            | input      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 53   | 126  |
      | Sharing %       | input      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     | 53   | 126  |


  #FeatureID-ACAUTOCAS-160
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-13366: <Field_Name> field validation with <Validity> <InputType> in new income detail pop up screen of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in new income detail of other income details
    Then "<Field_Name>" field in other details with "<InputType>" "<Throws_notThrows>"



      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | invalid  | character with underscore                         | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | invalid  | character with hyphen                             | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | invalid  | negative number                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | invalid  | special character                                 | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> |          |     | 152  | 153  |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 167                                        | <ApplicantType> |          |     | 152  | 153  |
      | Sharing %      | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 168                                        | <ApplicantType> |          |     | 152  | 153  |
      | Sharing %      | invalid  | value more than 100                               | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 169                                        | <ApplicantType> |          |     | 152  | 153  |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 170                                        | <ApplicantType> |          |     | 152  | 153  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | invalid  | character with underscore                         | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | invalid  | character with hyphen                             | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | invalid  | negative number                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | invalid  | special character                                 | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> |          |     | 152  | 153  |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 167                                        | <ApplicantType> |          |     | 152  | 153  |
      | Sharing %      | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 168                                        | <ApplicantType> |          |     | 152  | 153  |
      | Sharing %      | invalid  | value more than 100                               | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 169                                        | <ApplicantType> |          |     | 152  | 153  |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 170                                        | <ApplicantType> |          |     | 152  | 153  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Name           | invalid  | character with underscore                         | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Name           | invalid  | character with hyphen                             | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Name           | invalid  | negative number                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Name           | invalid  | special character                                 | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 167                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Sharing %      | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 168                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Sharing %      | invalid  | value more than 100                               | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 169                                        | <ApplicantType> | <Category> |     | 53   | 126  |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 170                                        | <ApplicantType> | <Category> |     | 53   | 126  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> |          |     | 53   | 126  |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> |          |     | 53   | 126  |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> |          |     | 53   | 126  |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> |          |     | 53   | 126  |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> |          |     | 53   | 126  |
      | Name           | invalid  | character with underscore                         | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> |          |     | 53   | 126  |
      | Name           | invalid  | character with hyphen                             | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> |          |     | 53   | 126  |
      | Name           | invalid  | negative number                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> |          |     | 53   | 126  |
      | Name           | invalid  | special character                                 | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> |          |     | 53   | 126  |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 167                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing %      | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 168                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing %      | invalid  | value more than 100                               | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 169                                        | <ApplicantType> |          |     | 53   | 126  |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 170                                        | <ApplicantType> |          |     | 53   | 126  |


   # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Reconsideration"]}
      # ${Occupation:["Self Employed Professional","Self Employed Non Professional"]}
  #FeatureID-ACAUTOCAS-160
  @Conventional
    @Release @Part-2
    @ImplementedBy-priyanshu.kashyap
  Scenario Outline: ACAUTOCAS-17146:<Field> field validation in income details for <Occupation> occupation  at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details for "<Occupation>"
    And user open financial details
    And user clicks on income details accordian of "<Occupation>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user fills "<Field>" field in other income details
    Then filled values of "<Field>" should comes in left of caret cursor
    Examples:
      | Field      | ProductType   | ApplicationStage   | Occupation   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | category | key |
      | Amount     | <ProductType> | <ApplicationStage> | <Occupation> | employment_details.xlsx | home                   | 173                           | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     |
      | Percentage | <ProductType> | <ApplicationStage> | <Occupation> | employment_details.xlsx | home                   | 173                           | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Sharing %  | <ProductType> | <ApplicationStage> | <Occupation> | employment_details.xlsx | home                   | 173                           | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13367: Close the new income detail pop up screen of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user open other income details accordion
    And user open new income detail pop up screen to add more details in other income details
    When user close the new income detail pop up screen
    Then new income detail pop up screen should be closed

      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | 153  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    @LoggedBug-CAS-230489
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category   | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 153  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13368: Minimize the new income detail pop up screen of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user open other income details accordion
    And user open new income detail pop up screen to add more details in other income details
    When user minimize the new income detail pop up screen
    Then new income detail pop up screen should be minimized



     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category   | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | <ApplicantType> |          |     | 53   | 126  |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13369: Maximize the minimized new income detail pop up screen of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user open other income details accordion
    And user click on add more details in other income details
    When user "<Action>" the new income detail pop up screen
    Then new income detail pop up screen should be "<Action>"



    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | Action   | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | maximize | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | Action   | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | maximize | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | Action   | ApplicantType   | Category   | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | maximize | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | Action   | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | maximize | <ApplicantType> |          |     | 53   | 126  |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13370: Sum of sharing percent should be <Less_Equal> in other income details in financial details for <Occupation> occupation at <ApplicationStage>" in "<ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    When user add more details in other income details
    Then income sharing details with "<Less_Equal>" sharing percent should "<Added>" successfully


    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     | 53   | 126  |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     | 53   | 126  |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     | 53   | 126  |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     | 53   | 126  |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     | 152  | 136  |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     | 152  | 136  |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     | 152  | 136  |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     | 152  | 136  |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 190                                        | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Less_Equal    | Added | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | less than 100 | add   | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | equal to 100  | add   | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | less than 100 | add   | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | equal to 100  | add   | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> | <Category> |     | 152  | 136  |

    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    @LoggedBug-CAS-229913
      #${ProductType:["IPF"]}
     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
     #${Category:["bonds"]}
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 190                                        | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     | 53   | 126  |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     | 53   | 126  |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     | 53   | 126  |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     | 53   | 126  |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> |          |     | 53   | 126  |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13371: Primary applicant sharing percentage validation in new income detail pop up screen of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    When user click on add more details in other income details
    Then primary applicant sharing should be display same as filled in other income details

      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13372: Add <Single_Multiple> income sharing details of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    When user click on add more details in other income details
    Then "<Single_Multiple>" income sharing details should be added in other income details

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |


        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |


       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | multiple        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |



  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13373: Delete <Single> income sharing details of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    When user add "<Single_Multiple>" income sharing details in more details
    And user delete the added income sharing details in more details
    Then added income sharing details should be deleted in more details

      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |


        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |


       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | single          | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |







  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-17147: Search income sharing details on the basis of "<Grid>" of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    And user add "multiple" income sharing details in more details
    When user search details on the basis of "<Grid>" in other income details
    Then user should be able to search on the basis of "<Grid>" in other income details
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    @Conventional
    Examples:
      | Grid           | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Applicant type | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 153  |
      | Sharing %      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 153  |

         #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Grid           | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Applicant type | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |
      | Name           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |
      | Sharing %      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Grid           | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | Applicant type | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Name           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | Sharing %      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |

          # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Grid           | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | Applicant type | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 153  |
      | Name           | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 153  |
      | Sharing %      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 153  |


  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13374: Show the "<NumberOfRows>" rows of income sharing details in grid of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    And user add "multiple" income sharing details in more details
    When user selects "<NumberOfRows>" number of rows to show income sharing details in grid
    Then selected "<NumberOfRows>" rows "<Display>" in case total entries are "<More_Less>" than selected number in sharing detail

     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |


        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 152  | 136  |


       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     | 152  | 136  |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     | 53   | 126  |


  #FeatureID-ACAUTOCAS-160
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-13375: Validation of pagination in income sharing details of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    And user fills multiple income sharing details for pagination
    When "<Page>" page of grid is open in other income details
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for "<Page>" in other income details


     #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |


        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 152  | 136  |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 152  | 136  |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 152  | 136  |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 152  | 136  |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 152  | 136  |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 152  | 136  |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 152  | 136  |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     | 152  | 136  |


      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |



  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-13376: Validating all Pagination in income sharing details of other income details in financial details for <Occupation> occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads employment details excel from datatable on the basis of "<Occupation>" type
      | employment_details.xlsx | home | 74     | Agriculture                    |
      | employment_details.xlsx | home | 33     | Self Employed Professional     |
      | employment_details.xlsx | home | <Row1> | Self Employed Non Professional |
      | employment_details.xlsx | home | 69     | Others                         |
      | employment_details.xlsx | home | <Row2> | Salaried                       |
    And user fill employment details with Occupation Type as "<Occupation>"
    And user open financial details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    And user fills multiple income sharing details for pagination
    When "<Page>" page of grid is open in other income details
    And user click on "<Paginate_Btn>" of sharing details
    Then "<Page>" page should work successfully in income detail

      #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Conventional
    @ImplementedBy-priyanshu.kashyap
    @Release @Part-2
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |

        #${ProductType:["IAF","IHF"]}
      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 152  | 136  |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 152  | 136  |

       #${ProductType:["IPF"]}
       #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    #${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-vipin.kishor
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key | Row1 | Row2 |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     | 152  | 136  |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     | 152  | 136  |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Occupation:["Salaried","Agriculture","Self Employed Professional","Self Employed Non Professional","Others"]}
    @NotImplemented
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | Occupation   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key | Row1 | Row2 |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | <Occupation> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     | 53   | 126  |
