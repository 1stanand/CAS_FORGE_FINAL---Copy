@Epic-PF_Share_Base
@PQMStory
@AuthoredBy-manish.yadav2
@ReviewedBy-nimisha.kulshrestha
@TechReviewedBy-harshprit.kumar
@ImplementedBy-manish.yadav2
@Islamic
@Shares
@ReleaseIslamicM3
@Release


#Story-CAS-184745
Feature: Investor Details validation at Purchase Promise Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-10_CAS-187834
  #PMG-19_CAS-184745
  #UT-23_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14745:  Verify order type dropdown values at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user click to select order type
    Then below values should present in dropdown of order type
      | Market Share Price    |
      | Requested Share Price |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-5_CAS-187834
  #PMG-12_CAS-184745
  #UT-8_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14746:  Verify platform dropdown values at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user click to select platform
    Then below values should present in dropdown of platform
      | Tadawul Direct   |
      | Tadawul Standard |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-11_CAS-187834, 12_CAS-187834
  #PMG-21_CAS-184745
  #UT-28_CAS-184745, 29_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14747:  In selection of <FieldName> as <var> <DependentFieldName> value populate as <var2> at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user select "<FieldName>" as "<var>" in investor details tab
    Then System should populate "<DependentFieldName>" value as "<var2>" in investor details tab
    Examples:
      | ProductType   | ApplicationStage   | FieldName  | var                   | DependentFieldName | var2                         | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Order Type | Market Share Price    | Share Validity     | One Day                      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type | Requested Share Price | Share Validity     | Rest of the week till Friday | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type |                       | Share Validity     | Select One Option            | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-13_CAS-187834, 6_CAS-187834
  #PMG-26_CAS-184745
  #ST-10_CAS-184745, 11_CAS-184745
  #UT-10_CAS-184745, 13_CAS-184745, 36_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14748:  In selection of <FieldName> as <var> <DependentFieldName> will behave <Behaviour> at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user select "<FieldName>" as "<var>" in investor details tab
    Then "<DependentFieldName>" will behave "<Behaviour>" in investor details tab
    Examples:
      | ProductType   | ApplicationStage   | FieldName       | var                   | DependentFieldName    | Behaviour     | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Order Type      | Market Share Price    | Requested Share Price | non mandatory | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type      | Requested Share Price | Requested Share Price | mandatory     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type      | Market Share Price    | Requested Share Price | non editable  | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type      | Requested Share Price | Requested Share Price | editable      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Platform        | Tadawul Direct        | Client ID             | non editable  | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Platform        | Tadawul Standard      | Client ID             | editable      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Exchange Market | ADX Investor No       | ADX Investor No       | displayed     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Exchange Market | ADX Investor No       | ADX Investor No       | editable      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Exchange Market | ADX Investor No       | DFM Investor No       | not displayed | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Exchange Market | DFM Investor No       | DFM Investor No       | displayed     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Exchange Market | DFM Investor No       | DFM Investor No       | editable      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Exchange Market | DFM Investor No       | ADX Investor No       | not displayed | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-3_CAS-187834
  #ST-6_CAS-184745, 8_CAS-184745, 9_CAS-184745, 10_CAS-184745, 15_CAS-184745, 17_CAS-184745, 18_CAS-184745, 19_CAS-184745, 20_CAS-184745
  #UT-7_CAS-184745, 9_CAS-184745, 10_CAS-184745, 18_CAS-184745, 22_CAS-184745, 26_CAS-184745, 30_CAS-184745, 35_CAS-184745, 38_CAS-184745, 39_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14749:  Validation of <FieldName> as <FieldNature> at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user open investor details tab
    Then "<FieldName>" should be "<FieldNature>" field on investor details tab
    Examples:
      | ProductType   | ApplicationStage   | FieldName             | FieldNature   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Platform              | mandatory     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Platform              | editable      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Platform              | displayed     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | non mandatory | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | non editable  | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | displayed     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Exchange Market       | mandatory     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Exchange Market       | displayed     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | ADX Investor No       | editable      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | ADX Investor No       | displayed     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Company Name          | mandatory     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Company Name          | editable      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Company Name          | displayed     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type            | mandatory     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type            | editable      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type            | displayed     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Share Validity        | mandatory     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Share Validity        | non editable  | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Share Validity        | displayed     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | non mandatory | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | non editable  | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | displayed     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | mandatory     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | editable      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | displayed     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Quantity    | non mandatory | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Quantity    | non editable  | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Quantity    | displayed     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-15_CAS-187834, 16_CAS-187834
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14750:  Validate base currency of <FieldName> at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    When user change the base currency of "<FieldName>"
    Then base currency of "<FieldName>" should be in "non editable" mode

    Examples:
      | ProductType   | ApplicationStage   | FieldName             | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Requested Share Price | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-17_CAS-187834
  #PMG-23_CAS-184745, 25_CAS-184745
  #UT-33_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14751:  Validate value of Requested Quantity at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user select "Order Type" as "<OrderType>" in investor details tab
    When user fill Requested Share Price as "<var1>"
    And user fill Max Original Cost as "<var2>"
    Then value of Requested Quantity should be "<var3>"

    Examples:
      | ProductType   | ApplicationStage   | OrderType             | var1 | var2  | var3 | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Requested Share Price | 200  | 20000 | 100  | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | 2    | 100   | 50   | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | 100  | 2     |      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Market Share Price    |      | 2     |      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-17_CAS-187834
  #PMG-24_CAS-184745
  #UT-34_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14752:  Validate calculated value of Requested Quantity at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row <rowNum>
    And user open investor details tab
    And user select "Order Type" as "Requested Share Price" in investor details tab
    When user fill Requested Share Price
    And user fill Max Original Cost
    Then calculated value of Requested Quantity should be correct
    @LoggedBug-CAS-231844
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | rowNum | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 0      | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 51     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 52     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 53     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 54     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 55     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 56     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 57     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 58     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 59     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 60     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 61     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 62     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 63     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 64     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 65     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 66     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 67     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 68     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 69     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 70     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 71     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 72     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 73     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 74     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 75     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 76     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 77     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 78     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 79     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 80     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 81     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 82     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 83     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 84     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 85     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 86     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 87     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 88     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 89     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 90     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 91     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 92     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 93     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 94     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 95     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 96     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 97     | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-18_CAS-187834, 19_CAS-187834, 21_CAS-187834,21_CAS-186309
  #PMG-27_CAS-184745, 29_CAS-184745
  #ST-14_CAS-184745
  #UT-37_CAS-184745, 40_CAS-184745, 41_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14753:  Validate <FieldName> with input value <var> at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row <purchase_promise_home_rowNum>
    And user open investor details tab
    And user select "Platform" as "Tadawul Standard" in investor details tab
    And user select "Order Type" as "Requested Share Price" in investor details tab
    When user fills "<FieldName>" with "<var>" in investor details tab
    Then "<FieldName>" "<ThrowsNotThrows>" with proper message in investor details tab

    Examples:
      | ProductType   | ApplicationStage   | FieldName             | var                                          | ThrowsNotThrows                    | purchase_promise_home_rowNum | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Requested Share Price | more than 18 digits                          | throws an error with error message | 17                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | 18 digits                                    | does not throw any error           | 98                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | less than 18 digits                          | does not throw any error           | 18                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | character                                    | throws an error with error message | 19                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | special character                            | throws an error with error message | 20                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | negative values                              | throws an error with error message | 21                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | character with space                         | throws an error with error message | 22                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | digits with space                            | throws an error with error message | 23                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | special characters with hyphen               | throws an error with error message | 24                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | digits with hyphen                           | throws an error with error message | 25                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | Both numeric and alphabet                    | throws an error with error message | 26                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | positive values Upto 18 digits               | does not throw any error           | 27                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | valid amount with upto 2 decimal places      | does not throw any error           | 28                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | valid amount with more than 2 decimal places | does not throw any error           | 29                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | more than 18 digits                          | throws an error with error message | 17                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | 18 digits                                    | does not throw any error           | 98                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | less than 18 digits                          | does not throw any error           | 18                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | character                                    | throws an error with error message | 19                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | special character                            | throws an error with error message | 20                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | negative values                              | throws an error with error message | 21                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | character with space                         | throws an error with error message | 22                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | digits with space                            | throws an error with error message | 23                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | special characters with hyphen               | throws an error with error message | 24                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | digits with hyphen                           | throws an error with error message | 25                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | Both numeric and alphabet                    | throws an error with error message | 26                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | positive values Upto 18 digits               | does not throw any error           | 27                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | valid amount with upto 2 decimal places      | does not throw any error           | 28                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | valid amount with more than 2 decimal places | does not throw any error           | 29                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | character                                    | does not throw any error           | 30                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | alphanumeric                                 | does not throw any error           | 31                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | valid with more than 10 length               | does not throw any error           | 99                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | valid with 10 length                         | does not throw any error           | 100                          | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | valid with less than 10 length               | does not throw any error           | 101                          | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | number                                       | does not throw any error           | 32                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | character with space                         | throws an error with error message | 33                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | character with dot                           | throws an error with error message | 34                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | character with apostrophe                    | throws an error with error message | 35                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | character with underscore                    | throws an error with error message | 36                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | character with hyphen                        | throws an error with error message | 37                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | negative number                              | throws an error with error message | 38                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | special character                            | throws an error with error message | 39                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | digit with space                             | throws an error with error message | 40                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | digit with dot                               | throws an error with error message | 41                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | digit with apostrophe                        | throws an error with error message | 42                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | digit with underscore                        | throws an error with error message | 43                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | digit with hyphen                            | throws an error with error message | 44                           | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-19_CAS-187834
  #PMG-28_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14754:  Validate entering max orginal cost more than sanction amount at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 45
    And user open investor details tab
    When user fills all fields to add investor details with max orginal cost more than sanction amount
    And user clicks on done button in investor details
    Then Proper validation should come for max original cost more than sanction amount

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PMG-30_CAS-184745
  #ST-13_CAS-184745
  #FeatureID-ACAUTOCAS-11316

  Scenario Outline: ACAUTOCAS-14755:  Validate hover on <FieldName> at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user hover on "<FieldName>" in investor details
    Then tooltip should be displayed for "<FieldName>" in investor details

    Examples:
      | ProductType   | ApplicationStage   | FieldName             | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Platform              | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | ADX Investor No       | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | DFM Investor No       | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Company Name          | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type            | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Share Validity        | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Quantity    | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PMG-30_CAS-184745
  #ST-13_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14756:  Validate tooltip name by hover on <FieldName> at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user hover on "<FieldName>" in investor details
    Then tooltip name should be same as "<FieldName>" in investor details

    Examples:
      | ProductType   | ApplicationStage   | FieldName             | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Platform              | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | ADX Investor No       | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | DFM Investor No       | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Company Name          | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type            | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Share Validity        | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Quantity    | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-23_CAS-187834
  #ST-24_CAS-184745
  #UT-43_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14757:  Validate edit button for investor details at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user add investor details
    When user clicks on edit button in investor details record grid
    Then investor details should be opened in edit mode

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-11316
  #PQM-CAS-184745
  Scenario Outline: ACAUTOCAS-14758:  Validate delete confirmation warning modal window in investor details at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user add investor details
    When user clicks on delete button in investor details record grid
    Then delete confirmation warning modal window should be displayed

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-29_CAS-187834
  #ST-30_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14759:  Validate read only mode of investor details record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user add investor details
    And user clicks on save button on investor details
    When user clicks on unique ID hyperlink in investor details record grid
    Then investor details should be opened in read only mode

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-44_CAS-187834,35_CAS-186309
  #PMG-45_CAS-184745
  #ST-32_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14760:  Verify investor details in view mode from enquiry screen at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens an "<ProductType>" application at "Purchase Promise" stage from enquiry screen
    Then application will get open on Purchase Promise stage in view mode

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-24_CAS-187834
  #PMG-33_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14761:  unable to update <FieldName> of existing investor details record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 6
    And user open investor details tab
    And user add investor details
    And user clicks on edit button in investor details record grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 46
    When user update "<FieldName>" of that investor details record
    And user clicks on cancel button in investor details
    Then "<FieldName>" in investor details record should not get updated

    Examples:
      | ProductType   | ApplicationStage   | FieldName             | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Platform              | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | ADX Investor No       | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | DFM Investor No       | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Company Name          | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type            | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-25_CAS-187834,18_CAS-186309
  #PMG-32_CAS-184745
  #ST-25_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14762:  Validate update <FieldName> of existing investor details record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 6
    And user open investor details tab
    And user add investor details
    And user clicks on edit button in investor details record grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 46
    When user update "<FieldName>" of that investor details record
    And user clicks on done button in investor details
    Then "<FieldName>" in investor details record should get updated

    Examples:
      | ProductType   | ApplicationStage   | FieldName             | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Platform              | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | ADX Investor No       | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | DFM Investor No       | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Company Name          | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type            | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-31_CAS-187834, 41_CAS-187834
  #PMG-38_CAS-184745
  #ST-36_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14763:  Maximum investor details record adding validation at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user add "<Multiple>" investor details by reading data from
      | purchase_promise.xlsx | home | 0 |
      | purchase_promise.xlsx | home | 1 |
      | purchase_promise.xlsx | home | 8 |
      | purchase_promise.xlsx | home | 9 |
    Then Proper validation should come for Maximum records that can be added

    Examples:
      | Multiple | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | Multiple | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-32_CAS-187834, 34_CAS-187834,29_CAS-186309
  #PMG-40_CAS-184745, 43_CAS-184745
  #ST-29_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14764:  Validate warning pop up on performing <Action> at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 6
    And user open investor details tab
    And user add investor details
    When user perform "<Action>" on investor details
    Then warning pop up should be displayed in investor details

    Examples:
      | ProductType   | ApplicationStage   | Action     | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Cancel     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Tab Switch | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-36_CAS-187834
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14765:  Validate investor details record addition without any success message at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 6
    And user open investor details tab
    When user add "Multiple" investor details by reading data from
      | purchase_promise.xlsx | home | 0 |
      | purchase_promise.xlsx | home | 1 |
    Then investor details record should be added without any success message

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-37_CAS-187834
  #PMG-39_CAS-184745
  #ST-21_CAS-184745, 28_CAS-184745
  #UT-42_CAS-184745, 44_CAS-184745, 48_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14766:  Validate investor details record addition with success message at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 6
    And user open investor details tab
    When user add investor details
    And user clicks on save button on investor details
    Then investor details record should be added with success message

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-38_CAS-187834
  #PMG-44_CAS-184745
  #ST-33_CAS-184745
  #UT-14_CAS-184745, 16_CAS-184745, 19_CAS-184745, 25_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14767:  Validate save without adding any investor details record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 10
    And user open investor details tab
    And user delete all investor details
    When user clicks on save button on investor details
    Then Proper validation should come in investor details

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-4_CAS-187834
  #PMG-10_CAS-184745
  #ST-7_CAS-184745
  #UT-11_CAS-184745, 24_CAS-184745, 27_CAS-184745, 32_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14768:  Validate required option in investor details at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user clicks on required option button on investor details
    Then all required fields with conditional mandatory fields should displayed on investor details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-3_CAS-187834
  #PMG-11_CAS-184745
  #ST-7_CAS-184745
  #UT-24_CAS-184745, 27_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14769:  Validate all fields option in investor details at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user clicks on all fields option button on investor details
    Then all mandatory and non mandatory fields should displayed on investor details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-7_CAS-187834
  #ST-12_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14770:  Validate required field error in investor details at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 11
    And user open investor details tab
    When user clicks on done button in investor details
    Then validation should come for all required fields on investor details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-3_CAS-187834
  #PMG-17_CAS-184745
  #UT-19_CAS-184745, 22_CAS-184745, 31_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14771:  Validate <FieldName> should of <FieldType> type in investor details at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user open investor details tab
    Then "<FieldName>" should of "<FieldType>" type on investor details

    Examples:
      | ProductType   | ApplicationStage   | FieldName             | FieldType     | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Platform              | dropdown      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | input         | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | ADX Investor No       | input         | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | DFM Investor No       | input         | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Company Name          | input         | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Company Name          | auto complete | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type            | dropdown      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Share Validity        | dropdown      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | input         | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | input         | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Quantity    | input         | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14772:  Validate <ColumnName> present in investor details record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user open investor details tab
    Then "<ColumnName>" should be present in investor details record

    Examples:
      | ProductType   | ApplicationStage   | ColumnName            | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Unique ID             | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Platform              | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Company Name          | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type            | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max. Original Cost    | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Actions               | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-35_CAS-187834
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14773:  Validate <OrderType> order sorting for <ColumnName> in investor details record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    And user add "Multiple" investor details by reading data from
      | purchase_promise.xlsx | home | 0 |
      | purchase_promise.xlsx | home | 1 |
    And user clicks on save button on investor details
    When user sort "<ColumnName>" column in "<OrderType>" order in investor details record
    Then investor details record should be sort in "<OrderType>" order basis of "<ColumnName>"

    Examples:
      | ProductType   | ApplicationStage   | ColumnName   | OrderType  | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Unique ID    | Ascending  | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Company Name | Ascending  | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Unique ID    | Descending | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Company Name | Descending | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-7_CAS-187834
  #PMG-13_CAS-184745, 14_CAS-184745, 16_CAS-184745, 18_CAS-184745, 20_CAS-184745, 26_CAS-184745
  #ST-12_CAS-184745
  #UT-12_CAS-184745, 14_CAS-184745, 16_CAS-184745, 19_CAS-184745, 25_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14774:  Validate <FieldName> if it is not captured in investor details at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row <RowNum>
    And user open investor details tab
    When user fills all fields except "<FieldName>" to add investor details
    And user clicks on done button in investor details
    Then error validation will be displayed for "<FieldName>" on investor details

    Examples:
      | ProductType   | ApplicationStage   | FieldName             | RowNum | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Platform              | 14     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Client ID             | 14     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | ADX Investor No       | 6      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | DFM Investor No       | 6      | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Company Name          | 14     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Order Type            | 14     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | 14     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | 14     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-1_CAS-187834,1_CAS-186309
  #PMG-1_CAS-184745
  #ST-1_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  @Perishable
  Scenario Outline: ACAUTOCAS-14775:  Validate Purchase Promise Stage after performing move to next stage at <ApplicationStage> of <ProductType>
    And user reads data from the excel file "shares.xlsx" under sheet "background" and row 0
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "<Category>" with key "<Key>"
    When user moves an application from "Reconsideration" Stage to "Purchase Promise" Stage
    And user opens an application of "Purchase Promise" stage present in context from application grid
    Then application should be on Purchase Promise stage

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #ST-39_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14776:  Validate cancel after deleting investor details record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user delete "Single" investor details
    And user cancel the changes in investor details
    Then investor details record should not be deleted

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #ST-27_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14777:  Validate max length of <FieldName> at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 47
    And user open investor details tab
    And user select "Platform" as "Tadawul Standard" in investor details tab
    And user select "Order Type" as "Requested Share Price" in investor details tab
    When user fills "<FieldName>" with more than max length in investor details tab
    Then length of "<FieldName>" data should be equal to max length in investor details

    Examples:
      | ProductType   | ApplicationStage   | FieldName             | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | Client ID             | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | ADX Investor No       | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | DFM Investor No       | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Requested Share Price | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | <ProductType> | <ApplicationStage> | Max Original Cost     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-46_CAS-187834
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14778:  Validate calculated value of Requested Quantity when the base currency differs from the scheme currency at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user select "Order Type" as "Requested Share Price" in investor details tab
    When user fill Requested Share Price
    And user fill Max Original Cost
    Then calculated value of Requested Quantity should be correct

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #FeatureID-ACAUTOCAS-11316
Scenario Outline: ACAUTOCAS-18116: validate data consistency in investor details <var> at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row <rowNum>
    And user open investor details tab
    When user fills all fields to add investor details
    And user stores investor details data in context
    And user clicks on done button in investor details
    And user clicks on save button on investor details
    And user clicks on unique ID hyperlink in investor details record grid
    Then investor details data should be same as filled in "<var>"

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | var         | rowNum | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 0      | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 0      | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 50     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 50     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 51     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 51     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 52     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 52     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 53     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 53     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 54     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 54     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 55     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 55     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 56     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 56     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 57     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 57     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 58     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 58     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 59     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 59     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 60     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 60     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 61     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 61     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 62     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 62     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 63     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 63     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 64     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 64     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 65     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 65     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 66     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 66     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 67     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 67     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 68     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 68     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 69     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 69     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 70     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 70     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 71     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 71     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 72     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 72     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 73     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 73     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 74     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 74     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 75     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 75     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 76     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 76     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 77     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 77     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 78     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 78     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 79     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 79     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 80     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 80     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 81     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 81     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 82     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 82     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 83     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 83     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 84     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 84     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 85     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 85     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 86     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 86     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 87     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 87     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 88     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 88     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 89     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 89     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 90     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 90     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 91     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 91     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 92     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 92     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 93     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 93     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 94     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 94     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 95     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 95     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 96     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 96     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 97     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 97     | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-25_CAS-187834,18_CAS-186309
  #PMG-32_CAS-184745
  #ST-25_CAS-184745
  #FeatureID-ACAUTOCAS-11316
Scenario Outline: ACAUTOCAS-18117: Validate updated data consistency in investor details <var> of existing investor details record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 6
    And user open investor details tab
    And user add investor details
    And user clicks on edit button in investor details record grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row <rowNum>
    When user update data of investor details record
    And user clicks on save button on investor details
    And user clicks on unique ID hyperlink in investor details record grid
    Then investor details data should be same as updated in "<var>"

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | var         | rowNum | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 0      | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 0      | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 50     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 50     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 51     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 51     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 52     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 52     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 53     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 53     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 54     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 54     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 55     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 55     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 56     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 56     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 57     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 57     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 58     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 58     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 59     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 59     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 60     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 60     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 61     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 61     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 62     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 62     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 63     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 63     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 64     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 64     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 65     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 65     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 66     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 66     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 67     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 67     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 68     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 68     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 69     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 69     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 70     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 70     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 71     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 71     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 72     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 72     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 73     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 73     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 74     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 74     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 75     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 75     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 76     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 76     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 77     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 77     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 78     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 78     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 79     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 79     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 80     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 80     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 81     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 81     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 82     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 82     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 83     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 83     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 84     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 84     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 85     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 85     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 86     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 86     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 87     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 87     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 88     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 88     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 89     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 89     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 90     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 90     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 91     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 91     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 92     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 92     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 93     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 93     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 94     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 94     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 95     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 95     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 96     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 96     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Fields      | 97     | Purchase Promise |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Record Grid | 97     | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-18_CAS-187834
  #FeatureID-ACAUTOCAS-11316
Scenario Outline: ACAUTOCAS-18118: validate <FieldName> with special character <var> at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "special_characters" and row <inputRowNum>
    And user open investor details tab
    And user select "Platform" as "Tadawul Standard" in investor details tab
    And user select "Order Type" as "Requested Share Price" in investor details tab
    When user fills "<FieldName>" with "<var>" in investor details tab
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row <errorRowNum>
    Then "<FieldName>" "<ThrowsNotThrows>" with proper message in investor details tab

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key                | FieldName             | var                  | ThrowsNotThrows                    | inputRowNum | errorRowNum | FinalStage       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Full stop            | throws an error with error message | 0           | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Comma                | throws an error with error message | 1           | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Exclamation mark     | throws an error with error message | 2           | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Double quote         | throws an error with error message | 3           | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Hash                 | throws an error with error message | 4           | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Dollar               | throws an error with error message | 5           | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Percent              | throws an error with error message | 6           | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Ampersand            | throws an error with error message | 7           | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Apostrophe           | throws an error with error message | 8           | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Left parenthesis     | throws an error with error message | 9           | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Right parenthesis    | throws an error with error message | 10          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Asterisk             | throws an error with error message | 11          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Plus                 | throws an error with error message | 12          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Hyphen               | throws an error with error message | 13          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Forward slash        | throws an error with error message | 14          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Colon                | throws an error with error message | 15          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Semicolon            | throws an error with error message | 16          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Less than            | throws an error with error message | 17          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Equal                | throws an error with error message | 18          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Greater than         | throws an error with error message | 19          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Question mark        | throws an error with error message | 20          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | At                   | throws an error with error message | 21          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Left square bracket  | throws an error with error message | 22          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Backslash            | throws an error with error message | 23          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Right square bracket | throws an error with error message | 24          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Caret                | throws an error with error message | 25          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Grave accent         | throws an error with error message | 27          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Left curly brace     | throws an error with error message | 28          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Vertical bar         | throws an error with error message | 29          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Right curly brace    | throws an error with error message | 30          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Client ID             | Tilde                | throws an error with error message | 31          | 33          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Full stop            | does not throw any error           | 0           | 18          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Comma                | throws an error with error message | 1           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Exclamation mark     | throws an error with error message | 2           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Double quote         | throws an error with error message | 3           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Hash                 | throws an error with error message | 4           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Dollar               | throws an error with error message | 5           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Percent              | throws an error with error message | 6           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Ampersand            | throws an error with error message | 7           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Apostrophe           | throws an error with error message | 8           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Left parenthesis     | throws an error with error message | 9           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Right parenthesis    | throws an error with error message | 10          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Asterisk             | throws an error with error message | 11          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Plus                 | throws an error with error message | 12          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Hyphen               | throws an error with error message | 13          | 21          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Forward slash        | throws an error with error message | 14          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Colon                | throws an error with error message | 15          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Semicolon            | throws an error with error message | 16          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Less than            | throws an error with error message | 17          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Equal                | throws an error with error message | 18          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Greater than         | throws an error with error message | 19          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Question mark        | throws an error with error message | 20          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | At                   | throws an error with error message | 21          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Left square bracket  | throws an error with error message | 22          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Backslash            | throws an error with error message | 23          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Right square bracket | throws an error with error message | 24          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Caret                | throws an error with error message | 25          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Grave accent         | throws an error with error message | 27          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Left curly brace     | throws an error with error message | 28          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Vertical bar         | throws an error with error message | 29          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Right curly brace    | throws an error with error message | 30          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Requested Share Price | Tilde                | throws an error with error message | 31          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Full stop            | does not throw any error           | 0           | 18          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Comma                | throws an error with error message | 1           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Exclamation mark     | throws an error with error message | 2           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Double quote         | throws an error with error message | 3           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Hash                 | throws an error with error message | 4           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Dollar               | throws an error with error message | 5           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Percent              | throws an error with error message | 6           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Ampersand            | throws an error with error message | 7           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Apostrophe           | throws an error with error message | 8           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Left parenthesis     | throws an error with error message | 9           | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Right parenthesis    | throws an error with error message | 10          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Asterisk             | throws an error with error message | 11          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Plus                 | throws an error with error message | 12          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Hyphen               | throws an error with error message | 13          | 21          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Forward slash        | throws an error with error message | 14          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Colon                | throws an error with error message | 15          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Semicolon            | throws an error with error message | 16          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Less than            | throws an error with error message | 17          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Equal                | throws an error with error message | 18          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Greater than         | throws an error with error message | 19          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Question mark        | throws an error with error message | 20          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | At                   | throws an error with error message | 21          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Left square bracket  | throws an error with error message | 22          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Backslash            | throws an error with error message | 23          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Right square bracket | throws an error with error message | 24          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Caret                | throws an error with error message | 25          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Grave accent         | throws an error with error message | 27          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Left curly brace     | throws an error with error message | 28          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Vertical bar         | throws an error with error message | 29          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Right curly brace    | throws an error with error message | 30          | 19          | Purchase Promise |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | shares   | ispurchase promise | Max Original Cost     | Tilde                | throws an error with error message | 31          | 19          | Purchase Promise |
