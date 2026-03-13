@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-
@TechReviewedBy-
@Release3
@Reconciled
Feature:Liability Details in financial details for Non Individual Applicant

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #  In default workflow Recommendation stage is not applicable for all LoBs. Please add comment for Recommendation stage - check workflow for recommendation stage and implement.

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13558: Required <Field> field validation of liability details for non individual applicant in financial details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    When user clicks on Required to check all required fields of liability details
    Then Required "<Field>" field should be present in required field of liability details
    Examples:
      | Field                 | ApplicationStage   | ProductType   |
      | Internal/External     | <ApplicationStage> | <ProductType> |
      | Source System         | <ApplicationStage> | <ProductType> |
      | Liability Type        | <ApplicationStage> | <ProductType> |
      | Loan Type             | <ApplicationStage> | <ProductType> |
      | Institution Name      | <ApplicationStage> | <ProductType> |
      | Principal Outstanding | <ApplicationStage> | <ProductType> |
      | Installment Frequency | <ApplicationStage> | <ProductType> |
      | Installment Amount    | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13559: <Field> field validation in all fields of liability details for non individual applicant in financial details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    When user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 88
    And user fill liability type
    Then "<Field>" field should be present in All Fields of liability details
    Examples:
      | Field                             | ApplicationStage   | ProductType   |
      | Internal/External                 | <ApplicationStage> | <ProductType> |
      | Source System                     | <ApplicationStage> | <ProductType> |
      | Liability Type                    | <ApplicationStage> | <ProductType> |
      | Loan Type                         | <ApplicationStage> | <ProductType> |
      | Institution Name                  | <ApplicationStage> | <ProductType> |
      | Principal Outstanding             | <ApplicationStage> | <ProductType> |
      | Joint Liability Percentage        | <ApplicationStage> | <ProductType> |
      | Joint Liability check box         | <ApplicationStage> | <ProductType> |
      | Account Number                    | <ApplicationStage> | <ProductType> |
      | Sanction Amount                   | <ApplicationStage> | <ProductType> |
      | EMI Start Date                    | <ApplicationStage> | <ProductType> |
      | MOB(Months on Book)               | <ApplicationStage> | <ProductType> |
      | Maturity Date                     | <ApplicationStage> | <ProductType> |
      | Installment Frequency             | <ApplicationStage> | <ProductType> |
      | Installment Amount                | <ApplicationStage> | <ProductType> |
      | ROI Percentage                    | <ApplicationStage> | <ProductType> |
      | No.of Defaults                    | <ApplicationStage> | <ProductType> |
      | Consider for obligation check box | <ApplicationStage> | <ProductType> |
      | Is Balance Transfer               | <ApplicationStage> | <ProductType> |
      | Closure Amount                    | <ApplicationStage> | <ProductType> |
      | End Use of Loan                   | <ApplicationStage> | <ProductType> |
      | Security Given(If any)            | <ApplicationStage> | <ProductType> |
      | Description                       | <ApplicationStage> | <ProductType> |
      | Closure Date                      | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","DDE"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13560:  Field type validation of <Field> field of liability details for non individual applicant in financial details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    When user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 176
    Then "<Field>" field of liability should be "<Field_Type>" field
    Examples:
      | Field                      | Field_Type     | ApplicationStage   | ProductType   |
      | Internal/External          | drop down      | <ApplicationStage> | <ProductType> |
      | Source System              | drop down      | <ApplicationStage> | <ProductType> |
      | Liability Type             | drop down      | <ApplicationStage> | <ProductType> |
      | Loan Type                  | list of values | <ApplicationStage> | <ProductType> |
      | Institution Name           | list of values | <ApplicationStage> | <ProductType> |
      | Principal Outstanding      | input          | <ApplicationStage> | <ProductType> |
      | Joint Liability Percentage | non editable   | <ApplicationStage> | <ProductType> |
      | Joint Liability            | checkbox      | <ApplicationStage> | <ProductType> |
      | Account Number             | input          | <ApplicationStage> | <ProductType> |
      | Sanction Amount            | input          | <ApplicationStage> | <ProductType> |
      | EMI Start Date             | input          | <ApplicationStage> | <ProductType> |
      | MOB(Months on Book)        | non editable   | <ApplicationStage> | <ProductType> |
      | Maturity Date              | input          | <ApplicationStage> | <ProductType> |
      | Installment Frequency      | drop down      | <ApplicationStage> | <ProductType> |
      | Installment Amount         | input          | <ApplicationStage> | <ProductType> |
      | ROI Percentage             | input          | <ApplicationStage> | <ProductType> |
      | No.of Defaults             | input          | <ApplicationStage> | <ProductType> |
      | Consider for obligation    | checkbox      | <ApplicationStage> | <ProductType> |
      | Is Balance Transfer/Top Up | checkbox      | <ApplicationStage> | <ProductType> |
      | Closure Amount             | input          | <ApplicationStage> | <ProductType> |
      | End Use of Loan            | list of values | <ApplicationStage> | <ProductType> |
      | Security Given(If any)     | input          | <ApplicationStage> | <ProductType> |
      | Description                | textarea      | <ApplicationStage> | <ProductType> |
      | Closure Date               | input          | <ApplicationStage> | <ProductType> |
      | Internal/External          | drop down      | <ApplicationStage> | <ProductType> |
      | Source System              | drop down      | <ApplicationStage> | <ProductType> |
      | Liability Type             | drop down      | <ApplicationStage> | <ProductType> |
      | Loan Type                  | list of values | <ApplicationStage> | <ProductType> |
      | Institution Name           | list of values | <ApplicationStage> | <ProductType> |
      | Principal Outstanding      | input          | <ApplicationStage> | <ProductType> |
      | Joint Liability Percentage | non editable   | <ApplicationStage> | <ProductType> |
      | Joint Liability            | checkbox       | <ApplicationStage> | <ProductType> |
      | Account Number             | input          | <ApplicationStage> | <ProductType> |
      | Sanction Amount            | input          | <ApplicationStage> | <ProductType> |
      | EMI Start Date             | input          | <ApplicationStage> | <ProductType> |
      | MOB(Months on Book)        | non editable   | <ApplicationStage> | <ProductType> |
      | Maturity Date              | input          | <ApplicationStage> | <ProductType> |
      | Installment Frequency      | drop down      | <ApplicationStage> | <ProductType> |
      | Installment Amount         | input          | <ApplicationStage> | <ProductType> |
      | ROI Percentage             | input          | <ApplicationStage> | <ProductType> |
      | No.of Defaults             | input          | <ApplicationStage> | <ProductType> |
      | Consider for obligation    | checkbox       | <ApplicationStage> | <ProductType> |
      | Is Balance Transfer/Top Up | checkbox       | <ApplicationStage> | <ProductType> |
      | Closure Amount             | input          | <ApplicationStage> | <ProductType> |
      | End Use of Loan            | list of values | <ApplicationStage> | <ProductType> |
      | Security Given(If any)     | input          | <ApplicationStage> | <ProductType> |
      | Description                | textarea       | <ApplicationStage> | <ProductType> |
      | Closure Date               | input          | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13561: <Field_Name> field validation in liability detail with <Validity> <InputType> for non individual applicant in financial details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in liability details
    Then "<Field_Name>" field in liability details with "<InputType>" "<Throws_notThrows>"
    Examples:
      | Field_Name            | Validity | InputType                                         | Throws_notThrows | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Loan Type             | valid    | mapped loan type                                  | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 88                                       |
      | Loan Type             | invalid  | unmapped loan type                                | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 89                                       |
      | Institution Name      | valid    | mapped institution name                           | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 90                                       |
      | Institution Name      | invalid  | unmapped institution name                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 91                                       |
      | Principal Outstanding | invalid  | more than 18 digits                               | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 92                                       |
      | Principal Outstanding | valid    | less than 18 digits                               | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 93                                       |
      | Principal Outstanding | invalid  | character                                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 94                                       |
      | Principal Outstanding | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 95                                       |
      | Principal Outstanding | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 96                                       |
      | Principal Outstanding | invalid  | character with space                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 97                                       |
      | Principal Outstanding | invalid  | digits with space                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 98                                       |
      | Principal Outstanding | valid    | positive values and Upto 18 digits                | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 99                                       |
      | Principal Outstanding | valid    | max length 43 characters                          | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 100                                      |
      | Account Number        | valid    | numeric values                                    | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 101                                      |
      | Account Number        | valid    | underscore with numeric values                    | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 102                                      |
      | Account Number        | valid    | underscore with character                         | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 103                                      |
      | Account Number        | valid    | alphanumeric values                               | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 104                                      |
      | Account Number        | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 105                                      |
      | Account Number        | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 106                                      |
      | Account Number        | invalid  | character with space                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 107                                      |
      | Account Number        | invalid  | digits with space                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 108                                      |
      | Account Number        | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 109                                      |
      | Sanction Amount       | invalid  | more than 18 digits                               | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 110                                      |
      | Sanction Amount       | valid    | less than 18 digits                               | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 111                                      |
      | Sanction Amount       | invalid  | character                                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 112                                      |
      | Sanction Amount       | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 113                                      |
      | Sanction Amount       | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 114                                      |
      | Sanction Amount       | valid    | positive values and Upto 18 digits                | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 115                                      |
      | Sanction Amount       | invalid  | character with space                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 116                                      |
      | Sanction Amount       | invalid  | digits with space                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 117                                      |
      | Sanction Amount       | valid    | max length 43 characters                          | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 118                                      |
      | Issue Date            | valid    | valid date                                        | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 119                                      |
      | Issue Date            | invalid  | invalid date                                      | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 120                                      |
      | Issue Date            | valid    | more than current date                            | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 121                                      |
      | Issue Date            | invalid  | before 1942                                       | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 122                                      |
      | Expiry Date           | valid    | valid date                                        | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 123                                      |
      | Expiry Date           | invalid  | invalid date                                      | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 124                                      |
      | Expiry Date           | valid    | more than current date                            | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 125                                      |
      | Expiry Date           | invalid  | before 1942                                       | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 126                                      |
      | Installment Amount    | invalid  | more than 18 digits                               | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 127                                      |
      | Installment Amount    | valid    | less than 18 digits                               | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 128                                      |
      | Installment Amount    | invalid  | character                                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 129                                      |
      | Installment Amount    | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 130                                      |
      | Installment Amount    | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 131                                      |
      | Installment Amount    | valid    | positive values and Upto 18 digits                | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 132                                      |
      | Installment Amount    | invalid  | character with space                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 133                                      |
      | Installment Amount    | invalid  | digits with space                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 134                                      |
      | Installment Amount    | valid    | max length 43 characters                          | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 135                                      |
      | ROI Percentage        | valid    | value between 0 to 100                            | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 136                                      |
      | ROI Percentage        | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 137                                      |
      | ROI Percentage        | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 138                                      |
      | ROI Percentage        | invalid  | value more  than 100                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 139                                      |
      | ROI Percentage        | invalid  | value between 0 to 100 more than 2 decimal places | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 140                                      |
      | ROI Percentage        | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 141                                      |
      | No.of Defaults        | valid    | numeric values                                    | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 142                                      |
      | No.of Defaults        | invalid  | alphanumeric values                               | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 143                                      |
      | No.of Defaults        | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 144                                      |
      | No.of Defaults        | invalid  | character                                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 145                                      |
      | No.of Defaults        | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 146                                      |
      | No.of Defaults        | invalid  | character with space                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 147                                      |
      | No.of Defaults        | invalid  | digits with space                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 148                                      |
      | No.of Defaults        | valid    | max length 9 characters                           | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 149                                      |
      | Closure Amount        | invalid  | more than 18 digits                               | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 150                                      |
      | Closure Amount        | valid    | less than 18 digits                               | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 151                                      |
      | Closure Amount        | invalid  | character                                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 152                                      |
      | Closure Amount        | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 153                                      |
      | Closure Amount        | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 154                                      |
      | Closure Amount        | valid    | positive values and Upto 18 digits                | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 155                                      |
      | Closure Amount        | invalid  | character with space                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 156                                      |
      | Closure Amount        | invalid  | digits with space                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 157                                      |
      | Closure Amount        | valid    | max length 43 characters                          | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 158                                      |
      | End Use of Loan       | valid    | mapped End Use of Loan                            | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 159                                      |
      | End Use of Loan       | invalid  | unmapped End Use of Loan                          | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 160                                      |
      | Security Given        | valid    | numeric values                                    | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 161                                      |
      | Security Given        | valid    | alphanumeric values                               | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 162                                      |
      | Security Given        | valid    | negative values                                   | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 163                                      |
      | Security Given        | valid    | character                                         | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 164                                      |
      | Security Given        | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 165                                      |
      | Security Given        | valid    | character with space                              | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 166                                      |
      | Security Given        | valid    | digits with space                                 | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 167                                      |
      | Security Given        | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 168                                      |
      | Security Given        | invalid  | digits with underscore                            | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 169                                      |
      | Security Given        | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 170                                      |
      | Closure Date          | valid    | valid date                                        | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 171                                      |
      | Closure Date          | invalid  | invalid date                                      | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 172                                      |
      | Closure Date          | valid    | more than current date                            | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 173                                      |
      | Closure Date          | invalid  | before 1942                                       | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 174                                      |
      | Description           | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 175                                      |

  #Squash:03_CAS_50614P
  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454,CAS_50614
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13562:  <DependentField> field should be <DependentFieldsBehaviour> which depends on <Fields> field in liability details for non individual applicant in financial details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user selects "<Fields>" field in liability details
    Then "<DependentField>" of liability details should be "<DependentFieldsBehaviour>"
    Examples:
      | Fields                            | DependentField                                | DependentFieldsBehaviour     | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Liability as Internal             | Source System                                 | display                      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 177                                      |
      | Liability as Internal             | Source System                                 | mandatory                    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 177                                      |
      | Liability as External             | Source System                                 | hide                         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 178                                      |
      | Liability Type as Loan            | Joint Liability Percentage                    | display in non editable mode | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 177                                      |
      | Liability Type as Loan            | MOB(Months on Book)                           | display in non editable mode | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 178                                      |
      | Loan Type as Auto Loan            | Loan Category                                 | display in editable mode     | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 177                                      |
      | Loan Type as Auto Loan            | Assessment Rate                               | display in non editable mode | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 178                                      |
      | Loan Type as Auto Loan            | Assessment Rate Margin                        | display in editable mode     | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 179                                      |
      | Loan Type as Auto Loan            | Assessment Based Installment amount (Monthly) | display in non editable mode | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 180                                      |
      | Loan Type as Home Loan            | Loan Category                                 | display in editable mode     | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 181                                      |
      | Loan Type as Home Loan            | Assessment Rate                               | display in non editable mode | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 182                                      |
      | Loan Type as Home Loan            | Assessment Rate Margin                        | display in editable mode     | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 183                                      |
      | Loan Type as Home Loan            | Assessment Based Installment amount (Monthly) | display in non editable mode | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 184                                      |
      | Joint Liability check box         | Joint Liability Percentage                    | editable                     | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 176                                      |
      | Consider for obligation check box | Reason                                        | hide                         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 176                                      |
      | Consider for obligation check box | Reason Description                            | hide                         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 176                                      |
      | Consider for obligation check box | Comments on Reason                            | hide                         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 176                                      |
      | Is Balance Transfer check box     | Reason                                        | hide                         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 176                                      |
      | Is Balance Transfer check box     | Reason Description                            | hide                         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 176                                      |
      | Is Balance Transfer check box     | Comments on Reason                            | hide                         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 176                                      |
      | EMI Start Date and Expiry Date    | MOB(Months on Book)                           | autofill                     | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 177                                      |
      | Liability as Internal             | Institution Name                              | autofill                     | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 177                                      |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13563: Field validation after uncheck Consider for obligation with Is Balance Transfer checkbox in liability details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 176
    When user uncheck Consider for obligation checkbox with Is Balance Transfer checkbox in liability details
    Then following fields of liability details should be display
      | Fields             |
      | Reason             |
      | Comments           |
      | Reason Description |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13564: Add <Single_Multiple> Reason in liability details of financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 185
    And user uncheck Consider for obligation checkbox with Is Balance Transfer checkbox in liability details
    When user add "<Single_Multiple>" Reason
    Then "<Single_Multiple>" Reason should be added successfully
    Examples:
      | Single_Multiple | ApplicationStage   | ProductType   |
      | single          | <ApplicationStage> | <ProductType> |
      | multiple        | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13565:  Delete the added Reason in liability details of financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 185
    And user uncheck Consider for obligation checkbox with Is Balance Transfer checkbox in liability details
    And user add "multiple" Reason
    When user delete the added Reason
    Then added reason should be deleted successfully
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13566: <Field_Name> validation in Liability Detail of financial details for non individual applicant after uncheck Consider for obligation with Is Balance Transfer at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user uncheck Consider for obligation checkbox with Is Balance Transfer checkbox in liability details
    When user fills "<Field_Name>" field with "<Characters>" in liability details
    Then "<Left_Characters>" should be remaining to fill in "<Field_Name>" field of liability details
    Examples:
      | Field_Name | Characters | Left_Characters | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Comments   | 100        | 900             | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 209                                      |
      | Comments   | 500        | 500             | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 210                                      |
      | Comments   | 1000       | 0               | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 211                                      |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13567:  <Field_Name> validation in Liability Detail with <Validity> <InputType> after uncheck Consider for obligation with Is Balance Transfer checkbox at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 208
    And user uncheck Consider for obligation checkbox with Is Balance Transfer checkbox in liability details
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in liability details
    Then "<Field_Name>" field in liability details with "<InputType>" "<Throws_notThrows>"
    Examples:
      | Field_Name         | Validity | InputType                 | Throws_notThrows | ApplicationStage   | ProductType   |
      | Reason Description | valid    | max length 255 characters | not throw any    | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","DDE"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13568: Field type validation of <Field> field of liability details after uncheck Consider for obligation with Is Balance Transfer checkbox for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 177
    When user uncheck Consider for obligation checkbox with Is Balance Transfer checkbox in liability details
    Then "<Field>" field of liability should be "<Field_Type>" field
    Examples:
      | Field              | Field_Type | ApplicationStage   | ProductType   |
      | Reason             | drop down  | <ApplicationStage> | <ProductType> |
      | Reason Description | input      | <ApplicationStage> | <ProductType> |
      | Comments           | textarea   | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13569: New liability detail Header validation for non individual applicant in financial details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 207
    When user clicks on Add Liability
    Then liability details header should be display as "New Liability Detail"
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13570: <Close_Cancel> the new liability detail pop up screen in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    When user "<Close_Cancel>" the new liability detail pop up screen
    Then new liability detail pop up screen should be "<Close_Cancel>"
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   |
      | close        | <ApplicationStage> | <ProductType> |
      | cancel       | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13571: Minimize the new liability detail pop up screen in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    When user "minimize" the new liability detail pop up screen
    Then new liability detail pop up screen should be "minimize"
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13572:  Maximize the minimized new liability detail pop up screen in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    When user "maximize" the new liability detail pop up screen
    Then new liability detail pop up screen should be "maximize"
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

#Squash:06_CAS_50614

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454,CAS_50614
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
    @Sanity
  Scenario Outline: ACAUTOCAS-13573: Add <NoOfLiability> liability with <Checked_Unchecked> Consider for obligation in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 204
    When user fills "<NoOfLiability>" liability details with "<Checked_Unchecked>" Balance Transfer
    Then "<NoOfLiability>" liability details should be added successfully
    Examples:
      | NoOfLiability | Checked_Unchecked | ApplicationStage   | ProductType   |
      | single        | checked           | <ApplicationStage> | <ProductType> |
      | multiple      | unchecked         | <ApplicationStage> | <ProductType> |
      | single        | checked           | <ApplicationStage> | <ProductType> |
      | multiple      | unchecked         | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13574: Liability details grid validation in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 207
    When user fill all fields of liability details
    Then liability details should be added in liability details grid successfully
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13575: New liability detail pop up screen validation in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 204
    When user save liability details marked as create another after this one
    Then New Liability Detail pop up screen should be popped up
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13576:  Create another <NoOfLiability> liability details after this one liability details in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 204
    And user save liability details marked as create another after this one
    When user fills another "<NoOfLiability>" liability details
    Then "<NoOfLiability>" another liability details should be added successfully
    Examples:
      | NoOfLiability | ApplicationStage   | ProductType   |
      | single        | <ApplicationStage> | <ProductType> |
      | multiple      | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13577: Edit new liability detail Header validation in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 206
    And user fill all fields of liability details
    When user open the saved liability details to edit the details
    Then liability details header should be display as "Edit Liability Detail"
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13578: <Close_Cancel> the edit liability detail pop up screen in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 204
    And user fill all fields of liability details
    And user open the saved liability details to edit the details
    When user "<Close_Cancel>" the edit liability detail pop up screen
    Then edit liability detail pop up screen should be "<Close_Cancel>"
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   |
      | close        | <ApplicationStage> | <ProductType> |
      | cancel       | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13579: Minimize the edit liability detail pop up screen in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 204
    And user fill all fields of liability details
    And user open the saved liability details to edit the details
    When user "minimize" the edit liability detail pop up screen
    Then edit liability detail pop up screen should be "minimize"
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13580:  Maximize the minimized edit liability detail pop up screen in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "financial_details.xlsx" under sheet "liability_details" and row 204
    And user fill all fields of liability details
    And user open the saved liability details to edit the details
    When user "maximize" the edit liability detail pop up screen
    Then edit liability detail pop up screen should be "maximize"
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  @LoggedBug
  Scenario Outline: ACAUTOCAS-13581: Edit <Field> field of liability details in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill all fields of liability details
    When user edit "<Field>" field of liability details
    Then "<Field>" field should be edited successfully in liability details
    Examples:
      | Field                                | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Internal/External                    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Source System                        | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Liability Type                       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Loan Type                            | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Institution Name                     | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Principal Outstanding                | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Joint Liability Percentage           | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Joint Liability check box            | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Account Number                       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Sanction Amount                      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | EMI Start Date                       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | MOB(Months on Book)                  | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Maturity Date                        | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Installment Frequency                | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Installment Amount                   | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | ROI Percentage                       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | No.of Defaults                       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Consider for obligation check box    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Is Balance Transfer/Top Up check box | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Closure Amount                       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | End Use of Loan                      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Security Given(If any)               | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Description                          | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Closure Date                         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |



  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13582:  Edit <Field_Name> field in Liability Detail with <Validity> <InputType> in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row 204
    And user fill all fields of liability details
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user open the saved liability details to edit the details
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in liability details
    Then "<Field_Name>" field in liability details with "<InputType>" "<Throws_notThrows>"
    Examples:
      | Field_Name            | Validity | InputType                                         | Throws_notThrows | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Loan Type             | valid    | mapped loan type                                  | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 88                                       |
      | Loan Type             | invalid  | unmapped loan type                                | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 89                                       |
      | Institution Name      | valid    | mapped institution name                           | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 90                                       |
      | Institution Name      | invalid  | unmapped institution name                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 91                                       |
      | Principal Outstanding | invalid  | more than 18 digits                               | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 92                                       |
      | Principal Outstanding | valid    | less than 18 digits                               | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 93                                       |
      | Principal Outstanding | invalid  | character                                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 94                                       |
      | Principal Outstanding | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 95                                       |
      | Principal Outstanding | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 96                                       |
      | Principal Outstanding | invalid  | character with space                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 97                                       |
      | Principal Outstanding | invalid  | digits with space                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 98                                       |
      | Principal Outstanding | valid    | positive values and Upto 18 digits                | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 99                                       |
      | Principal Outstanding | valid    | max length 43 characters                          | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 100                                      |
      | Account Number        | valid    | numeric values                                    | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 101                                      |
      | Account Number        | valid    | underscore with numeric values                    | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 102                                      |
      | Account Number        | valid    | underscore with character                         | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 103                                      |
      | Account Number        | valid    | alphanumeric values                               | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 104                                      |
      | Account Number        | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 105                                      |
      | Account Number        | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 106                                      |
      | Account Number        | invalid  | character with space                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 107                                      |
      | Account Number        | invalid  | digits with space                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 108                                      |
      | Account Number        | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 109                                      |
      | Sanction Amount       | invalid  | more than 18 digits                               | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 110                                      |
      | Sanction Amount       | valid    | less than 18 digits                               | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 111                                      |
      | Sanction Amount       | invalid  | character                                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 112                                      |
      | Sanction Amount       | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 113                                      |
      | Sanction Amount       | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 114                                      |
      | Sanction Amount       | valid    | positive values and Upto 18 digits                | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 115                                      |
      | Sanction Amount       | invalid  | character with space                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 116                                      |
      | Sanction Amount       | invalid  | digits with space                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 117                                      |
      | Sanction Amount       | valid    | max length 43 characters                          | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 118                                      |
      | Issue Date            | valid    | valid date                                        | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 119                                      |
      | Issue Date            | invalid  | invalid date                                      | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 120                                      |
      | Issue Date            | valid    | more than current date                            | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 121                                      |
      | Issue Date            | invalid  | before 1942                                       | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 122                                      |
      | Expiry Date           | valid    | valid date                                        | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 123                                      |
      | Expiry Date           | invalid  | invalid date                                      | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 124                                      |
      | Expiry Date           | valid    | more than current date                            | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 125                                      |
      | Expiry Date           | invalid  | before 1942                                       | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 126                                      |
      | Installment Amount    | invalid  | more than 18 digits                               | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 127                                      |
      | Installment Amount    | valid    | less than 18 digits                               | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 128                                      |
      | Installment Amount    | invalid  | character                                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 129                                      |
      | Installment Amount    | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 130                                      |
      | Installment Amount    | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 131                                      |
      | Installment Amount    | valid    | positive values and Upto 18 digits                | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 132                                      |
      | Installment Amount    | invalid  | character with space                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 133                                      |
      | Installment Amount    | invalid  | digits with space                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 134                                      |
      | Installment Amount    | valid    | max length 43 characters                          | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 135                                      |
      | ROI Percentage        | valid    | value between 0 to 100                            | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 136                                      |
      | ROI Percentage        | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 137                                      |
      | ROI Percentage        | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 138                                      |
      | ROI Percentage        | invalid  | value more  than 100                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 139                                      |
      | ROI Percentage        | invalid  | value between 0 to 100 more than 2 decimal places | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 140                                      |
      | ROI Percentage        | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 141                                      |
      | No.of Defaults        | valid    | numeric values                                    | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 142                                      |
      | No.of Defaults        | invalid  | alphanumeric values                               | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 143                                      |
      | No.of Defaults        | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 144                                      |
      | No.of Defaults        | invalid  | character                                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 145                                      |
      | No.of Defaults        | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 146                                      |
      | No.of Defaults        | invalid  | character with space                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 147                                      |
      | No.of Defaults        | invalid  | digits with space                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 148                                      |
      | No.of Defaults        | valid    | max length 9 characters                           | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 149                                      |
      | Closure Amount        | invalid  | more than 18 digits                               | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 150                                      |
      | Closure Amount        | valid    | less than 18 digits                               | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 151                                      |
      | Closure Amount        | invalid  | character                                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 152                                      |
      | Closure Amount        | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 153                                      |
      | Closure Amount        | invalid  | negative values                                   | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 154                                      |
      | Closure Amount        | valid    | positive values and Upto 18 digits                | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 155                                      |
      | Closure Amount        | invalid  | character with space                              | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 156                                      |
      | Closure Amount        | invalid  | digits with space                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 157                                      |
      | Closure Amount        | valid    | max length 43 characters                          | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 158                                      |
      | End Use of Loan       | valid    | mapped End Use of Loan                            | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 159                                      |
      | End Use of Loan       | invalid  | unmapped End Use of Loan                          | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 160                                      |
      | Security Given        | valid    | numeric values                                    | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 161                                      |
      | Security Given        | valid    | alphanumeric values                               | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 162                                      |
      | Security Given        | valid    | negative values                                   | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 163                                      |
      | Security Given        | valid    | character                                         | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 164                                      |
      | Security Given        | invalid  | special character                                 | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 165                                      |
      | Security Given        | valid    | character with space                              | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 166                                      |
      | Security Given        | valid    | digits with space                                 | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 167                                      |
      | Security Given        | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 168                                      |
      | Security Given        | invalid  | digits with underscore                            | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 169                                      |
      | Security Given        | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 170                                      |
      | Closure Date          | valid    | valid date                                        | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 171                                      |
      | Closure Date          | invalid  | invalid date                                      | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 172                                      |
      | Closure Date          | valid    | more than current date                            | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 173                                      |
      | Closure Date          | invalid  | before 1942                                       | throw an         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 174                                      |
      | Description           | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 175                                      |

    # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13583:  Conformation pop up validation while deleting added liability detail with help of <Icon_Button> in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill all fields of liability details
    When user wants to delete the added liability with help of "<Icon_Button>"
    Then confirmation pop up should be display
    Examples:
      | Icon_Button   | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Delete Button | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Delete Icon   | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |


   # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13584:  Close the conformation pop up with help of <Button_Icon> while deleting added liability detail with help of <Icon_Button> in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill all fields of liability details
    And user wants to delete the added liability with help of "<Icon_Button>"
    When user close the confirmation pop up with help of "<Button_Icon>" in liability detail
    Then confirmation pop up should be closed in liability detail
    Examples:
      | Button_Icon  | Icon_Button   | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | close icon   | Delete Button | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | close button | Delete Icon   | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |


  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13585: Minimize the conformation pop up while deleting added liability detail with help of <Icon_Button> in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill all fields of liability details
    And user wants to delete the added liability with help of "<Icon_Button>"
    When user "minimize" the confirmation pop up in liability detail
    Then confirmation pop up should be "minimize" in liability detail

    Examples:
      | Icon_Button   | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Delete Icon   | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Delete Button | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |


  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13586:  Maximize the minimized conformation pop up while deleting added liability detail with help of <Icon_Button> in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill all fields of liability details
    And user wants to delete the added liability with help of "<Icon_Button>"
    When user "maximize" the confirmation pop up in liability detail
    Then confirmation pop up should be "maximize" in liability detail
    Examples:
      | Icon_Button   | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Delete Icon   | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Delete Button | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |


  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  @LoggedBug
  Scenario Outline: ACAUTOCAS-13587: Delete the <NoOfLiability> added liability detail with help of <Icon_Button> in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill "<NoOfLiability>" liability details
    When user wants to delete the added liability with help of "<Icon_Button>"
    And user close the confirmation pop up with help of "close button" in liability detail
    Then liability details should be deleted successfully
    Examples:
      | NoOfLiability | Icon_Button | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | single        | Delete Icon | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
    @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13588: Bulk Deletion of <NoOfLiability> added liability detail in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill "<NoOfLiability>" liability details
    When user delete the added liability in bulk by checking select all check box
    And user close the confirmation pop up with help of "close button" in liability detail
    Then liability details should be deleted in bulk successfully
    Examples:
      | NoOfLiability | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | multiple      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454
  @ImplementedBy-richa.singh
  @Conventional @Release @Part-3
  Scenario Outline: ACAUTOCAS-13589:  View liability detail Header validation in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill all fields of liability details
    When user open the saved liability details to view the details
    Then liability details header should be display as "View Liability Detail"
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 205                                      |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454
  @ImplementedBy-pallavi.singh
  @Conventional @Release @Part-3
  Scenario Outline: ACAUTOCAS-13590:  <Close_Cancel> the view liability detail pop up screen in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill all fields of liability details
    And user open the saved liability details to view the details
    When user "<Close_Cancel>" the view liability detail pop up screen
    Then view liability detail pop up screen should be "<Close_Cancel>"
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | close        | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | cancel       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |


  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13591: Minimize the view liability detail pop up screen in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill all fields of liability details
    And user open the saved liability details to view the details
    When user "minimize" the view liability detail pop up screen
    Then view liability detail pop up screen should be "minimize"
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |


  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13592: Maximize the minimized view liability detail pop up screen in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill all fields of liability details
    And user open the saved liability details to view the details
    When user "maximize" the view liability detail pop up screen
    Then view liability detail pop up screen should be "maximize"
    Examples:
      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13593: View <Field> field of liability detail in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill all fields of liability details
    When user open the saved liability details to view the details
    Then "<Field>" field should be display with filled data in view mode
    Examples:
      | Field                                | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Internal/External                    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Source System                        | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Liability Type                       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Loan Type                            | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Institution Name                     | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Principal Outstanding                | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Joint Liability Percentage           | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Joint Liability check box            | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Account Number                       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Sanction Amount                      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | EMI Start Date                       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | MOB(Months on Book)                  | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Maturity Date                        | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Installment Frequency                | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Installment Amount                   | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | ROI Percentage                       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | No.of Defaults                       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Consider for obligation check box    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Is Balance Transfer/Top Up check box | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Closure Amount                       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | End Use of Loan                      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Security Given(If any)               | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Description                          | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | Closure Date                         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |



#======================= Liability detail grid validation================
  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13594: Liability detail grid validation with <Field> field in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    When user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill all fields of liability details
    Then liability details should be display in grid with filled "<Field>" field
    Examples:
      | Field                          | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Liability Type                 | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Loan Type                      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Institution Name               | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Account Number/ Application ID | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Principal Outstanding          | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |


  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13595: Show the <NumberOfRows> rows of income sharing details in grid of other income details in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill "multiple" liability details
    When user selects "<NumberOfRows>" number of rows to show liability details in grid
    Then selected "<NumberOfRows>" rows "<Display>" in case total entries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | 10           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 208                                      |
      | 25           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 209                                      |
      | 50           | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 210                                      |
      | 100          | display                                 | more      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 211                                      |
      | 10           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 208                                      |
      | 25           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 209                                      |
      | 50           | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 210                                      |
      | 100          | not display only available rows display | less      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 211                                      |


  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13596: Validation of pagination in liability details in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fills multiple liability details
    When "<Page>" page of liability details grid is open
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for "<Page>"
    Examples:
      | Page  | Paginate_Btn             | Disable_Enable | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | first | paginate_button previous | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 208                                      |
      | first | paginate_button next     | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 208                                      |
      | last  | paginate_button previous | enable         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 208                                      |
      | last  | paginate_button next     | disable        | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 208                                      |


  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13597: Validating all Pagination in liability details for non individual applicant in financial details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fills multiple liability details
    When "<Page>" page of liability details grid is open
    And user click on "<Paginate_Btn>" of liability details
    Then "<Page>" should work successfully in liability details
    Examples:
      | Page  | Paginate_Btn             | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | first | paginate_button next     | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 208                                      |
      | last  | paginate_button previous | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 208                                      |

    # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13598: Sorting liability details in ascending order by <Field> column in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill "multiple" liability details
    When user sort the liability details by "<Field>" column in "ascending" order
    Then liability details grid "<Field>" should be sort in "ascending" order
    Examples:
      | Field                          | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Liability Type                 | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Loan Type                      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Institution Name               | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Account Number/ Application ID | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Principal Outstanding          | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13599: Sorting liability details in descending order by <Field> column in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill "multiple" liability details
    When user sort the liability details by "<Field>" column in "descending" order
    Then liability details grid "<Field>" should be sort in "descending" order
    Examples:
      | Field                          | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Liability Type                 | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Loan Type                      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Institution Name               | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Account Number/ Application ID | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | Principal Outstanding          | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |



  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13600: <DependentField> field should be <DependentFieldsBehaviour> field in liability details of financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user selects Source System as Neo LMS
    And Is Balance Transfer Top Up check box is checked
    Then "<DependentField>" of liability details should be "<DependentFieldsBehaviour>"
    Examples:
      | DependentField        | DependentFieldsBehaviour | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Principal Outstanding | non editable             | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 203                                      |
      | Sanction Amount       | non editable             | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 203                                      |
      | Maturity Date         | non editable             | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 203                                      |
      | Installment Frequency | non editable             | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 203                                      |
      | Installment Amount    | non editable             | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 203                                      |

#Squash:07_CAS_50614
    # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454,CAS_50614
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
    @Sanity
  Scenario Outline: ACAUTOCAS-13601: Add <NoOfLiability> liability with "<Checked_Unchecked>" Balance Transfer in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills "<NoOfLiability>" liability details with "<Checked_Unchecked>" Balance Transfer
    Then "<NoOfLiability>" liability details should be added successfully
    Examples:
      | NoOfLiability | Checked_Unchecked | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | single        | checked           | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | multiple      | unchecked         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | single        | checked           | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |
      | multiple      | unchecked         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 204                                      |

  # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  @LoggedBug
  Scenario Outline: ACAUTOCAS-13602: Add liability details with <Source_System> source system along with checked Balance Transfer in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And Is Balance Transfer Top Up check box is checked
    When user fill all fields of liability details for "<Source_System>"
    Then liability details should be added successfully
    Examples:
      | Source_System | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Core Banking  | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 202                                      |
      | Neo LMS       | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 203                                      |



  # StoryID:CAS-44995
    # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454,CAS-44995
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13603: MOB(Months on Book) field validation of liability details in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And user fill fields of liability details
    And user fills EMI Start Date field of liability details
    And user selects frequency as "<Frequency>"
    And user fills No.of Defaults field "<More_Equal>" to "<MOM>" of liability details
    When user clicks on done button to save liability details
    Then an error message "<PoppedUp>" in liability details
    Examples:
      | Frequency   | More_Equal | MOM                   | PoppedUp  | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Monthly     | max        | Months on Books       | popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 212                                      |
      | bi-monthly  | max        | Months on Books/2     | popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 213                                      |
      | Quarterly   | max        | Months on Books/3     | popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 214                                      |
      | Half-Yearly | max        | Months on Books/6     | popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 215                                      |
      | Annually    | max        | Months on Books/12    | popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 216                                      |
      | Weekly      | max        | (Months on Books*4)+3 | popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 217                                      |
      | Daily       | max        | (Months on Books*2)+1 | popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 218                                      |
    @LoggedBug
    Examples:
      | Frequency   | More_Equal | MOM                   | PoppedUp      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Monthly     | equal      | Months on Books       | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 219                                      |
      | bi-monthly  | equal      | Months on Books/2     | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 220                                      |
      | Quarterly   | equal      | Months on Books/3     | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 221                                      |
      | Half-Yearly | equal      | Months on Books/6     | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 222                                      |
      | Annually    | equal      | Months on Books/12    | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 223                                      |
      | Weekly      | equal      | (Months on Books*4)+3 | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 224                                      |
      | Daily       | equal      | (Months on Books*2)+1 | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 225                                      |
      | Monthly     | less       | Months on Books       | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 226                                      |
      | bi-monthly  | less       | Months on Books/2     | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 227                                      |
      | Quarterly   | less       | Months on Books/3     | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 228                                      |
      | Half-Yearly | less       | Months on Books/6     | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 229                                      |
      | Annually    | less       | Months on Books/12    | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 230                                      |
      | Weekly      | less       | (Months on Books*4)+3 | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 231                                      |
      | Daily       | less       | (Months on Books*2)+1 | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 232                                      |

     #    Input                                                                        |
#Monthly and Months on Books = 12, then Number of Defaults can be at max = 12 |
#Months on Books = 12, then Number of Defaults can be at max = 6              |
#Months on Books = 12, then Number of Defaults can be at max = 4              |
#Months on Books = 12, then Number of Defaults can be at max = 2              |
#Months on Books = 12, then Number of Defaults can be at max = 1              |
#Months on Books = 12, then Number of Defaults can be at max = 48+3           |
#Months on Books = 12, then Number of Defaults can be at max = 24+1           |
#Monthly and Months on Books = 12, then Number of Defaults can be at max = 12 |
#Months on Books = 12, then Number of Defaults can be at max = 6              |
#Months on Books = 12, then Number of Defaults can be at max = 4              |
#Months on Books = 12, then Number of Defaults can be at max = 2              |
#Months on Books = 12, then Number of Defaults can be at max = 1              |
#Months on Books = 12, then Number of Defaults can be at max = 48+3           |
#Months on Books = 12, then Number of Defaults can be at max = 24+1           |
#Monthly and Months on Books = 12, then Number of Defaults can be at max = 12 |
#Months on Books = 12, then Number of Defaults can be at max = 6              |
#Months on Books = 12, then Number of Defaults can be at max = 4              |
#Months on Books = 12, then Number of Defaults can be at max = 2              |
#Months on Books = 12, then Number of Defaults can be at max = 1              |
#Months on Books = 12, then Number of Defaults can be at max = 48+3           |
#Months on Books = 12, then Number of Defaults can be at max = 24+1           |

#  Go to Lead details >> financial Details >> liability Screen and select flag as N	Validation message "Closure amount cannot be less than Principle O/S" should  appear in Liabilities modal window for regional version.
#  Go to Lead details >> financial Details >> liability Screen and (Flag=Y & Mode/Source System =Manual	Validation message "Closure amount cannot be less than Principle O/S" should  appear in Liabilities modal window for regional version.

#  StoryID:CAS-27618
    # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13604: Fill Closure amount <Less_More> Principal Outstanding in liability details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user clicks on sourcing details page of "<ApplicationStage>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 280
    And user fills mandatory sourcing details with balance transfer application type for "<ProductType>"
    And user clicks on save button
    And user back to main page of "<ApplicationStage>"
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills Closure amount "<Less_More>" Principal Outstanding
    Then an alert message "<PoppedUp>" in liability details
    Examples:
      | Less_More | PoppedUp  | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | less than | popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 188                                      |
    @LoggedBug
    Examples:
      | Less_More | PoppedUp      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | equal to  | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | more than | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 187                                      |

  #  StoryID:CAS-33636
    # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454,CAS-33636
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13605: Default selection of Consider for Obligation checkbox in liability details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    When user clicks on Add Liability
    Then Consider for Obligation checkbox should be auto selected
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


    # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13606: Save liability details without filling <Field> field in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fill all fields except "<Field>" field to save liability details
    Then liability details not saved with an error message for "<Field>"
    Examples:
      | Field                 | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Internal/External     | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 195                                      |
      | Source System         | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 196                                      |
      | Liability Type        | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 197                                      |
      | Loan Type             | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 198                                      |
      | Principal Outstanding | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 199                                      |
      | Installment Frequency | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 200                                      |
      | Installment Amount    | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 201                                      |

    # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13607: Save liability details without filling <Field> field in case of Loan type is <LoanType> in financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fill all fields of liability Details except "<Field>" field to save liability details
    Then liability details did not save with an error message
    Examples:
      | Field                                                                                         | LoanType  | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Principal outstanding, Balance Tenure, Loan Category and ROI Percentage or Installment Amount | Home Loan | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 233                                      |
      | Principal outstanding, Balance Tenure, Loan Category and ROI Percentage or Installment Amount | Auto Loan | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 233                                      |


#StoryID:CAS-50614
    # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
 #FeatureID-ACAUTOCAS-11454,CAS-50614
#  Scenario Outline:Mandatory <Field> field validation in case Is Balance Transfer Top Up check box is checked with <SourceSystem> source system in liability details of financial details for non individual applicant at "<ApplicationStage>" in "<ProductType>"
  @Conventional @Release @Part-3
  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-13608: <Field> field validation in case Is Balance Transfer Top Up is checked with <SourceSystem> in liability details of financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user clicks on liability details
    And user clicks on Add Liability
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    And Is Balance Transfer Top Up check box is checked
    When user fill rest all fields except "<Field>" field for source system as "<SourceSystem>" to save liability details
    Then liability details not saved with an error message
    Examples:
      | Field                        | SourceSystem | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | Account Number/Card Number   | Core Banking | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 189                                      |
      | Sanction Amount/Credit Limit | Core Banking | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 190                                      |
      | Closure Amount               | Core Banking | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 191                                      |
      | Closure Date                 | Core Banking | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 192                                      |
      | Account Number/Card Number   | Neo LMS      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 193                                      |
      | Closure Date                 | Neo LMS      | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 194                                      |


  #  StoryID:CAS-27618
    # ${ ProductType : ["IHF","IPF","IAF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#FeatureID-ACAUTOCAS-11454,CAS-27618
  @Conventional @Release @Part-3
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-13609: Fill Closure amount <Less_More> Principal Outstanding in liability details of financial details for non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user open financial details for non individual
    And user open file upload accordion for file upload for non individual customer
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_liabilityDetails>" and row <FinancialDetails_liabilityDetails_rowNum>
    When user fills Closure amount "<Less_More>" Principal Outstanding
    Then an alert message "<PoppedUp>" in liability details
    Examples:
      | Less_More | PoppedUp  | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | less than | popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 188                                      |
    @LoggedBug
    Examples:
      | Less_More | PoppedUp      | ApplicationStage   | ProductType   | FinancialDetailsWB     | FinancialDetails_liabilityDetails | FinancialDetails_liabilityDetails_rowNum |
      | equal to  | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 186                                      |
      | more than | not popped up | <ApplicationStage> | <ProductType> | financial_details.xlsx | liability_details                 | 187                                      |






