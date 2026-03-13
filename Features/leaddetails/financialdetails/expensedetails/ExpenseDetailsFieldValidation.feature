@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
#${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-191
Feature: Expense detail field validation with occupation type as Agriculture

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

   @Sanity
  Scenario Outline: ACAUTOCAS-1713: Add Expense Details with "<Mandatory_All>" fields for Agriculture at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 3
    And user fills employment details for "Agriculture"
    When user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    And user fills expense details with "<Mandatory_All>" fields
    Then Expense Details should save successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.verma
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Mandatory_All | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory     | financial_details.xlsx | expense_details         | 34                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all           | financial_details.xlsx | expense_details         | 34                             |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Mandatory_All | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory     | financial_details.xlsx | expense_details         | 55                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all           | financial_details.xlsx | expense_details         | 55                             |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Mandatory_All | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory     | financial_details.xlsx | expense_details         | 55                             | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all           | financial_details.xlsx | expense_details         | 55                             | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Mandatory_All | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | mandatory     | financial_details.xlsx | expense_details         | 34                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | all           | financial_details.xlsx | expense_details         | 34                             |          |     |


  Scenario Outline:ACAUTOCAS-1716: Saving other income detail without <Field_Name> for Agriculture at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 3
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    And user clicks on Expense Details
    When user fills the Expense Details without "<Field_Name>"
    Then "<Field_Name>" field "<Throws_notThrows>" in Expense Details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.verma
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Field_Name        | Throws_notThrows                   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 34                             | Expense Head      | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 34                             | Expense Frequency | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 34                             | Currency          | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 34                             | Amount            | throws an error with error message |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Field_Name        | Throws_notThrows                   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 28                             | Expense Head      | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 55                             | Expense Frequency | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 55                             | Currency          | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 55                             | Amount            | throws an error with error message |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Field_Name        | Throws_notThrows                   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 28                             | Expense Head      | throws an error with error message | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 55                             | Expense Frequency | throws an error with error message | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 55                             | Currency          | throws an error with error message | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 55                             | Amount            | throws an error with error message | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Field_Name        | Throws_notThrows                   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 34                             | Expense Head      | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 34                             | Expense Frequency | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 34                             | Currency          | throws an error with error message |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 34                             | Amount            | throws an error with error message |          |     |


  Scenario Outline: ACAUTOCAS-1717: Validating <Field_Name> in Expense Details with <var> for Agriculture at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 3
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    And user clicks on Expense Details
    When user fills "<Field_Name>" field with "<var>" in agriculture expense details
    Then "<Field_Name>" field "<Throws_notThrows>" in agriculture expense details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.verma
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Field_Name | Throws_notThrows                   | var                        | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | Amount     | does not throw any error           | valid value                |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 36                             | Amount     | does not throw any error           | up to 18 digits            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 37                             | Amount     | throws an error with error message | both digits and characters |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 38                             | Amount     | throws an error with error message | special characters         |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 39                             | Amount     | throws an error with error message | space                      |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 40                             | Amount     | does not throw any error           | paise format               |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 41                             | Amount     | does not throw any error           | zero value                 |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Field_Name | Throws_notThrows                   | var                        | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | Amount     | does not throw any error           | valid value                |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 36                             | Amount     | does not throw any error           | up to 18 digits            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 37                             | Amount     | throws an error with error message | both digits and characters |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 38                             | Amount     | throws an error with error message | special characters         |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 39                             | Amount     | throws an error with error message | space                      |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 40                             | Amount     | does not throw any error           | paise format               |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 41                             | Amount     | does not throw any error           | zero value                 |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Field_Name | Throws_notThrows                   | var                        | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | Amount     | does not throw any error           | valid value                | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 36                             | Amount     | does not throw any error           | up to 18 digits            | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 37                             | Amount     | throws an error with error message | both digits and characters | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 38                             | Amount     | throws an error with error message | special characters         | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 39                             | Amount     | throws an error with error message | space                      | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 40                             | Amount     | does not throw any error           | paise format               | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 41                             | Amount     | does not throw any error           | zero value                 | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Field_Name | Throws_notThrows                   | var                        | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | Amount     | does not throw any error           | valid value                |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 36                             | Amount     | does not throw any error           | up to 18 digits            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 37                             | Amount     | throws an error with error message | both digits and characters |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 38                             | Amount     | throws an error with error message | special characters         |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 39                             | Amount     | throws an error with error message | space                      |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 40                             | Amount     | does not throw any error           | paise format               |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 41                             | Amount     | does not throw any error           | zero value                 |          |     |


  Scenario Outline: ACAUTOCAS-1718: In Selection of Expense Frequency as "<Frequency>" net amount changes for Agriculture at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 3
    And user fills employment details for "Agriculture"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    And user clicks on Expense Details
    When user enters income amount with frequency as "<Frequency>" in Expense Details
    Then net amount should be evaluated as "<Times>" times of income amount in Expense Details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.verma
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Times | Frequency   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 12    | Monthly     |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 4     | Quarterly   |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 1     | Annually    |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 6     | Bi-Monthly  |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 26    | Fortnightly |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 2     | Half Yearly |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 1     | OneTime     |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 52    | Weekly      |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Times | Frequency   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 12    | Monthly     |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 4     | Quarterly   |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 1     | Annually    |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 6     | Bi-Monthly  |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 26    | Fortnightly |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 2     | Half Yearly |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 1     | OneTime     |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 52    | Weekly      |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Times | Frequency   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 12    | Monthly     | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 4     | Quarterly   | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 1     | Annually    | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 6     | Bi-Monthly  | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 26    | Fortnightly | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 2     | Half Yearly | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 1     | OneTime     | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 52    | Weekly      | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Times | Frequency   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 12    | Monthly     |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 4     | Quarterly   |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 1     | Annually    |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 6     | Bi-Monthly  |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 26    | Fortnightly |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 2     | Half Yearly |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 1     | OneTime     |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | financial_details.xlsx | expense_details         | 35                             | 52    | Weekly      |          |     |

  @Sanity
  Scenario Outline: ACAUTOCAS-1714: Add "<multiple>" Expense Details for Agriculture at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 3
    And user fills employment details for "Agriculture"
    And user clicks on Expense Details
    When user add <multiple> Expense Details "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    And user click on save and compute
    Then Expense Details should save successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.verma
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | multiple | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2        | financial_details.xlsx | expense_details         | 34                             |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | multiple | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2        | financial_details.xlsx | expense_details         | 55                             |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | multiple | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2        | financial_details.xlsx | expense_details         | 55                             | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | multiple | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2        | financial_details.xlsx | expense_details         | 34                             |          |     |


  @longRun
  Scenario Outline: ACAUTOCAS-1715: Delete "<multiple>" Expense Details for Agriculture at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 3
    And user fills employment details for "Agriculture"
    And user clicks on Expense Details
    When user add <multiple> Expense Details "<FinancialDetailsWB>" under sheet "<FinancialDetails_assets>" and row <FinancialDetails_assets_rowNum>
    Then delete Expense Details successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.verma
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | multiple | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2        | financial_details.xlsx | expense_details         | 34                             |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | multiple | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2        | financial_details.xlsx | expense_details         | 55                             |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | multiple | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2        | financial_details.xlsx | expense_details         | 55                             | <Category> |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | multiple | FinancialDetailsWB     | FinancialDetails_assets | FinancialDetails_assets_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | 2        | financial_details.xlsx | expense_details         | 34                             |          |     |
