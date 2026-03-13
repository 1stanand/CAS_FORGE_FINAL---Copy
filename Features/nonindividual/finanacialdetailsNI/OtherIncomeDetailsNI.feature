@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
  # ${ApplicantType:["nonindiv"]}
Feature:Other income details in financial details for non individual applicant

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#  In default workflow Recommendation stage is not applicable for all LoBs. Please add comment for Recommendation stage - check workflow for recommendation stage and implement.

     #FeatureID-ACAUTOCAS-11455
  @Sanity
  Scenario Outline: ACAUTOCAS-13610: Add <Single_Multiple> other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>" <Mannual>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user open other income details accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user add "<Single_Multiple>" other income details
    Then "<Single_Multiple>" other income details should be added successfully

    # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | key |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | key |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> |          |     |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category   | key |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> | <Category> |     |
      | multiple        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 123                                        | <ApplicantType> | <Category> |     |

     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13611:  Adding multiple other income details with same income head in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    When user fill other income details with "multiple" income head
    And user save the other income details accordian
    Then other income details not saved with an error message
     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |



      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> | <Category> |     |

     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13612:  Delete the <Single_Multiple> added other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    When user fill other income details with "<Single_Multiple>" income head
    And user save the other income details
    And user open financial details for non individual
    And user opens file upload accordion
    And user open other income details accordion
    And user deletes other income detail
    Then other income detail should be deleted successfully

      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | key |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | key |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> |          |     |


        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | key |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 151                                        | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13613: Save other income details without filling <Field> field in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user open other income details accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    When user fills all fields except "<Field>" field to save other income details
    And user save the other income details
    Then other income details not saved with an error message
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Field         | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | key |
      | Income Head   | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> |          |     |
      | Income Source | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> |          |     |
      | Frequency     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> |          |     |
      | Amount        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> |          |     |
      | Percentage    | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> |          |     |
      | Sharing %     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> |          |     |



      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field         | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | key |
      | Income Head   | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> |          |     |
      | Income Source | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> |          |     |
      | Frequency     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> |          |     |
      | Amount        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> |          |     |
      | Percentage    | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> |          |     |
      | Sharing %     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> |          |     |



        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field         | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | key |
      | Income Head   | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 124                                        | <ApplicantType> | <Category> |     |
      | Income Source | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 125                                        | <ApplicantType> | <Category> |     |
      | Frequency     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 126                                        | <ApplicantType> | <Category> |     |
      | Amount        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 127                                        | <ApplicantType> | <Category> |     |
      | Percentage    | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 128                                        | <ApplicantType> | <Category> |     |
      | Sharing %     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 129                                        | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13614: Field type validation of <Field> in other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    When user open other income details accordion
    Then "<Field>" field of other details should be "<Field_Type>"
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field               | Field_Type | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Income Head         | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Income Source       | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Frequency           | drop down  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Amount              | input      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Percentage          | input      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sharing %           | input      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Net Amount (Annual) | input      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13615: <Field_Name> field validation with <Validity> <InputType> in other income details of financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in other income details
    Then "<Field_Name>" field "<Throws_notThrows>" in other income details
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Amount     | valid    | numbers upto 18 digits                            | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | value more than 18 digits                         | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | characters                                        | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | special characters                                | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | alphanumeric                                      | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100                            | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> |          |     |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Amount     | valid    | numbers upto 18 digits                            | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | value more than 18 digits                         | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | characters                                        | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | special characters                                | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> |          |     |
      | Amount     | invalid  | alphanumeric                                      | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100                            | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> |          |     |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> |          |     |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> |          |     |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> |          |     |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field_Name | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | Amount     | valid    | numbers upto 18 digits                            | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 130                                        | <ApplicantType> | <Category> |     |
      | Amount     | invalid  | value more than 18 digits                         | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 131                                        | <ApplicantType> | <Category> |     |
      | Amount     | invalid  | characters                                        | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 132                                        | <ApplicantType> | <Category> |     |
      | Amount     | invalid  | special characters                                | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 133                                        | <ApplicantType> | <Category> |     |
      | Amount     | invalid  | alphanumeric                                      | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 134                                        | <ApplicantType> | <Category> |     |
      | Percentage | valid    | value between 0 to 100                            | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 135                                        | <ApplicantType> | <Category> |     |
      | Percentage | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 136                                        | <ApplicantType> | <Category> |     |
      | Percentage | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 137                                        | <ApplicantType> | <Category> |     |
      | Percentage | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 138                                        | <ApplicantType> | <Category> |     |
      | Percentage | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 139                                        | <ApplicantType> | <Category> |     |
      | Sharing    | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 140                                        | <ApplicantType> | <Category> |     |
      | Sharing    | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 141                                        | <ApplicantType> | <Category> |     |
      | Sharing    | invalid  | value more  than 100                              | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 142                                        | <ApplicantType> | <Category> |     |
      | Sharing    | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 143                                        | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13616: Dependent field <DependentFields> should be <Expected_Behaviour> based on <Fields> in other income details of financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user open other income details accordion
    When user fills income details with "<Frequency>" income frequency
    Then Net Amount (Annual) should be calculated correctly
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Annually    | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Fortnightly | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Half Yearly | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |
      | Monthly     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 148                                        | <ApplicantType> |          |     |
      | OneTime     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 149                                        | <ApplicantType> |          |     |
      | Weekly      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 150                                        | <ApplicantType> |          |     |



      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Annually    | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Fortnightly | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Half Yearly | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |
      | Monthly     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 148                                        | <ApplicantType> |          |     |
      | OneTime     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 149                                        | <ApplicantType> |          |     |
      | Weekly      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 150                                        | <ApplicantType> |          |     |



        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Frequency   | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | Annually    | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> | <Category> |     |
      | Bi-Monthly  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> | <Category> |     |
      | Fortnightly | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> | <Category> |     |
      | Half Yearly | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> | <Category> |     |
      | Monthly     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 148                                        | <ApplicantType> | <Category> |     |
      | OneTime     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 149                                        | <ApplicantType> | <Category> |     |
      | Weekly      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 150                                        | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13617: Net Amount should be changed based on <Fields> changes in other income details of financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    When user change the "<Field>" value
    Then Net Amount (Annual) should be calculated correctly
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Field      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Frequency  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Amount     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Percentage | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Sharing %  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |




      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Frequency  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> |          |     |
      | Amount     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> |          |     |
      | Percentage | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> |          |     |
      | Sharing %  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> |          |     |


        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | Frequency  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 144                                        | <ApplicantType> | <Category> |     |
      | Amount     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 145                                        | <ApplicantType> | <Category> |     |
      | Percentage | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 146                                        | <ApplicantType> | <Category> |     |
      | Sharing %  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 147                                        | <ApplicantType> | <Category> |     |



     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13618: Adding more details in other income details of financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    When user add more details in other income details
    Then more details should be add in other income details
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 152                                        | <ApplicantType> |          |     |


	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13619: <NonMandateField> field validation in new income detail pop up screen of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user open other income details accordion
    When user click on add more details in other income details
    Then "<NonMandateField>" should be non editable field
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | NonMandateField       | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Net Amount            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | NonMandateField       | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Net Amount            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | NonMandateField       | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | Effective Tax Rate(%) | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Net Amount            | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13620: Required <Field> field validation in new income detail pop up screen of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    And user fills other income details
    When user open new income detail pop up screen to add more details in other income details
    Then following field should be present in All "<Field>"

       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | Field          | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Applicant type | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Name           | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Sharing %      | <ApplicantType> |          |     |



      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | Field          | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Applicant type | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Name           | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Sharing %      | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | Field          | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Applicant type | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Name           | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Sharing %      | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13621: <Field> field validation in all fields in new income detail pop up screen of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    When user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    And user fills other income details
    And user open new income detail pop up screen to add more details in other income details
    Then following field should be present in All "<Field>"
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | Field                 | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Net Amount            | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Mode Of Payment       | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Effective Tax Rate(%) | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Applicant type        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Name                  | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Sharing %             | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | Field                 | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Net Amount            | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Mode Of Payment       | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Effective Tax Rate(%) | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Applicant type        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Name                  | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Sharing %             | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | Field                 | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Net Amount            | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Mode Of Payment       | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Effective Tax Rate(%) | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Applicant type        | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Name                  | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | Sharing %             | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13622: Field type validation of <Field> in new income detail pop up screen of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    When user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    And user fills other income details
    And user open new income detail pop up screen to add more details in other income details
    Then "<Field>" field of other details should be "<Field_Type>"
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Field           | Field_Type | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Mode Of Payment | drop down  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     |
      | Applicant type  | drop down  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     |
      | Name            | input      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     |
      | Sharing %       | input      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field           | Field_Type | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Mode Of Payment | drop down  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     |
      | Applicant type  | drop down  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     |
      | Name            | input      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     |
      | Sharing %       | input      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field           | Field_Type | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | Mode Of Payment | drop down  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> | <Category> |     |
      | Applicant type  | drop down  | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> | <Category> |     |
      | Name            | input      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> | <Category> |     |
      | Sharing %       | input      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 0                                          | <ApplicantType> | <Category> |     |

     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13623: <Field_Name> field validation with <Validity> <InputType> in new income detail pop up screen of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in new income detail of other income details
    Then "<Field_Name>" field in other details with "<InputType>" "<Throws_notThrows>"
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> |          |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with underscore                         | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with hyphen                             | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> |          |     |
      | Name           | invalid  | negative number                                   | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> |          |     |
      | Name           | invalid  | special character                                 | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> |          |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> |          |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 44                                         | <ApplicantType> |          |     |
      | Sharing %      | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 47                                         | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value more than 100                               | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 45                                         | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 9                                          | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> |          |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> |          |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with underscore                         | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> |          |     |
      | Name           | invalid  | character with hyphen                             | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> |          |     |
      | Name           | invalid  | negative number                                   | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> |          |     |
      | Name           | invalid  | special character                                 | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> |          |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> |          |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 44                                         | <ApplicantType> |          |     |
      | Sharing %      | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 47                                         | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value more than 100                               | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 45                                         | <ApplicantType> |          |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 9                                          | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field_Name     | Validity | InputType                                         | Throws_notThrows    | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | Applicant type | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | character                                         | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | alphanumeric                                      | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 157                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | number                                            | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 158                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | character with space                              | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 159                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | character with dot                                | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 160                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | character with apostrophe                         | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 161                                        | <ApplicantType> | <Category> |     |
      | Name           | invalid  | character with underscore                         | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 162                                        | <ApplicantType> | <Category> |     |
      | Name           | invalid  | character with hyphen                             | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 163                                        | <ApplicantType> | <Category> |     |
      | Name           | invalid  | negative number                                   | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 164                                        | <ApplicantType> | <Category> |     |
      | Name           | invalid  | special character                                 | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 165                                        | <ApplicantType> | <Category> |     |
      | Name           | valid    | max length 255 characters                         | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 166                                        | <ApplicantType> | <Category> |     |
      | Sharing %      | valid    | value between 0 to 100 upto 2 decimal places      | not throw any error | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 44                                         | <ApplicantType> | <Category> |     |
      | Sharing %      | invalid  | negative values                                   | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 47                                         | <ApplicantType> | <Category> |     |
      | Sharing %      | invalid  | value more than 100                               | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 45                                         | <ApplicantType> | <Category> |     |
      | Sharing %      | invalid  | value between 0 to 100 more than 2 decimal places | throw an error      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 9                                          | <ApplicantType> | <Category> |     |



     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13624: Close the new income detail pop up screen of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user open other income details accordion
    And user open new income detail pop up screen to add more details in other income details
    When user close the new income detail pop up screen
    Then new income detail pop up screen should be closed
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |



      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13625: Minimize the new income detail pop up screen of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user open other income details accordion
    And user open new income detail pop up screen to add more details in other income details
    When user minimize the new income detail pop up screen
    Then new income detail pop up screen should be minimized
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13626: Maximize the minimized new income detail pop up screen of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user open other income details accordion
    And user click on add more details in other income details
    When user "<Action>" the new income detail pop up screen
    Then new income detail pop up screen should be "<Action>"
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | ApplicationStage   | ProductType   | Action   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | maximize | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | Action   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | maximize | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | Action   | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | maximize | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13627: Sum of sharing percent should be <Less_Equal> in other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    When user add more details in other income details
    Then income sharing details with "<Less_Equal>" sharing percent should "<Added>" successfully
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> |          |     |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> |          |     |



      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> |          |     |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> |          |     |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> |          |     |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> |          |     |


        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Less_Equal    | Added   | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> | <Category> |     |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> | <Category> |     |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> | <Category> |     |
      | less than 100 | add     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 153                                        | <ApplicantType> | <Category> |     |
      | equal to 100  | add     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 154                                        | <ApplicantType> | <Category> |     |
      | more than 100 | not add | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 155                                        | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13628:  Primary applicant sharing percentage validation in new income detail pop up screen of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user open other income details accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    When user click on add more details in other income details
    Then primary applicant sharing should be display same as filled in other income details
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13629:  Add <Single_Multiple> income sharing details of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    When user click on add more details in other income details
    Then "<Single_Multiple>" income sharing details should be added in other income details
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |




      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | multiple        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | multiple        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | multiple        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13630: Delete <Single> income sharing details of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    When user add "<Single_Multiple>" income sharing details in more details
    And user delete the added income sharing details in more details
    Then added income sharing details should be deleted in more details
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |


        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | single          | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |

     #FeatureID-ACAUTOCAS-11455
#  Scenario Outline:Search income sharing details on the basis of "<Grid>" of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
#       And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
#    And user open financial details
#    And user open file upload accordion for file upload
#    And user open other income details accordion
#    And user fills other income details
#    And user open new income detail pop up screen to add more details in other income details
#    When user add multiple income sharing details
#    And user search  details on the basis of "<Grid>"
#    Then user should be able to search on the basis of "<Grid>"
#       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    @Conventional
#    @Release
#    @Part-3
#    @ImplementedBy-aniket.tripathi
#    Examples:
#      | Grid           | ApplicationStage   | ProductType   |
#      | Applicant type | <ApplicationStage> | <ProductType> |
#      | Name           | <ApplicationStage> | <ProductType> |
#      | Sharing %      | <ApplicationStage> | <ProductType> |




     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13631:  Show the "<NumberOfRows>" rows of income sharing details in grid of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    And user add "multiple" income sharing details in more details
    When user selects "<NumberOfRows>" number of rows to show income sharing details in grid
    Then selected "<NumberOfRows>" rows "<Display>" in case total entries are "<More_Less>" than selected number in sharing detail
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |



      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 156                                        | <ApplicantType> | <Category> |     |


     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13632: Validation of pagination in income sharing details of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    And user fills multiple income sharing details for pagination
    When "<Page>" page of grid is open in other income details
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for "<Page>" in other income details
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button first    | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button last     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |

     #FeatureID-ACAUTOCAS-11455
  Scenario Outline: ACAUTOCAS-13633: Validating all Pagination in income sharing details of other income details in financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open financial details for non individual
    And user opens file upload accordion
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_otherIncomeDetails>" and row <FinancialDetails_otherIncomeDetails_rowNum>
    And user fills other income details
    And user click on add more details in other income details
    And user fills multiple income sharing details for pagination
    When "<Page>" page of grid is open in other income details
    And user click on "<Paginate_Btn>" of sharing details
    Then "<Page>" page should work successfully in income detail
       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-aniket.tripathi
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button last     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button first    | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category | Key |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | first | paginate_button last     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button first    | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> |          |     |

        #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_otherIncomeDetails | FinancialDetails_otherIncomeDetails_rowNum | ApplicantType   | Category   | Key |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | first | paginate_button last     | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button first    | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | financial_details.xlsx | other_income_details                | 171                                        | <ApplicantType> | <Category> |     |
