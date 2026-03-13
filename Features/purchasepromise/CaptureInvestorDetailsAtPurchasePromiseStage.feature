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
Feature: Capture Investor Details at Purchase Promise Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @TestPQMStories
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-22_CAS-187834,51_CAS-186309,16_CAS-186309
  #PMG-31_CAS-184745
  #ST-23_CAS-184745
  #UT-49_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14739:  Add investor details at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row <rowNum>
    And user open investor details tab
    When user fills all fields to add investor details
    And user clicks on done button in investor details
    Then investor details should be added successfully
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

  @TestPQMStories
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-27_CAS-187834
  #PMG-31_CAS-184745
  #ST-23_CAS-184745
  #UT-49_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14740:  Add <SingleOrMultiple> investor details at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row <rowNum1>
    And user open investor details tab
    When user add "<SingleOrMultiple>" investor details by reading data from
      | purchase_promise.xlsx | home | <rowNum1> |
      | purchase_promise.xlsx | home | <rowNum2> |
    Then "<SingleOrMultiple>" investor details should be added successfully
    Examples:
      | SingleOrMultiple | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | rowNum1 | rowNum2 | FinalStage       |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 0       | 1       | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 0       | 1       | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 50      | 51      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 50      | 51      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 52      | 53      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 52      | 53      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 54      | 55      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 54      | 55      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 56      | 57      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 56      | 57      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 58      | 59      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 58      | 59      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 60      | 61      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 60      | 61      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 62      | 63      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 62      | 63      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 64      | 65      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 64      | 65      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 66      | 67      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 66      | 67      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 68      | 69      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 68      | 69      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 70      | 71      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 70      | 71      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 72      | 73      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 72      | 73      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 74      | 75      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 74      | 75      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 76      | 77      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 76      | 77      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 78      | 79      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 78      | 79      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 80      | 81      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 80      | 81      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 82      | 83      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 82      | 83      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 84      | 85      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 84      | 85      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 86      | 87      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 86      | 87      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 88      | 89      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 88      | 89      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 90      | 91      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 90      | 91      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 92      | 93      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 92      | 93      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 94      | 95      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 94      | 95      | Purchase Promise |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 96      | 97      | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | 96      | 97      | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-27_CAS-187834
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14741:  Add <SingleOrMultiple> investor details for <OrderType> order type at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user add "<SingleOrMultiple>" investor details for "<OrderType>" order type by reading data from
      | purchase_promise.xlsx | home | 0 | Market Share Price    |
      | purchase_promise.xlsx | home | 1 | Market Share Price    |
      | purchase_promise.xlsx | home | 2 | Requested Share Price |
      | purchase_promise.xlsx | home | 3 | Requested Share Price |
    Then "<SingleOrMultiple>" investor details should be added successfully
    Examples:
      | SingleOrMultiple | OrderType             | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       | FinalStage       |
      | Single           | Market Share Price    | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise | Purchase Promise |
      | Multiple         | Market Share Price    | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise | Purchase Promise |
      | Single           | Requested Share Price | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise | Purchase Promise |
      | Multiple         | Requested Share Price | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-33_CAS-187834
  #PMG-41_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14742:  Add <Multiple> investor details with <Condition> at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user add "<Multiple>" investor details with "<Condition>" by reading data from
      | purchase_promise.xlsx | home | <Row1> |
      | purchase_promise.xlsx | home | <Row2> |
    Then "<Multiple>" investor details should be added successfully
    Examples:
      | Multiple | ProductType   | ApplicationStage   | Row1 | Row2 | Condition         | ApplicantType   | Category | Key                | FinalStage       |
      | Multiple | <ProductType> | <ApplicationStage> | 4    | 5    | Same Order Type   | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | Multiple | <ProductType> | <ApplicationStage> | 2    | 3    | Different Company | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | Multiple | <ProductType> | <ApplicationStage> | 0    | 1    | Same Platform     | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | Multiple | <ProductType> | <ApplicationStage> | 6    | 7    | Same Client Id    | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-26_CAS-187834
  #PMG-37_CAS-184745,3_CAS-186309
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14743:  unable to add <Multiple> investor details with <Condition> at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user add "<Multiple>" investor details with "<Condition>" by reading data from
      | purchase_promise.xlsx | home | <Row1> |
      | purchase_promise.xlsx | home | <Row2> |
    Then an error message will be thrown on investor details screen
    Examples:
      | Multiple | ProductType   | ApplicationStage   | Row1 | Row2 | Condition            | ApplicantType   | Category | Key                | FinalStage       |
      | Multiple | <ProductType> | <ApplicationStage> | 0    | 3    | Different Order Type | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | Multiple | <ProductType> | <ApplicationStage> | 0    | 16   | Same Company         | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | Multiple | <ProductType> | <ApplicationStage> | 0    | 5    | Different Platform   | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | Multiple | <ProductType> | <ApplicationStage> | 4    | 13   | Different Client Id  | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |


  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-28_CAS-187834
  #PMG-34_CAS-184745
  #ST-26_CAS-184745, 37_CAS-184745, 38_CAS-184745
  #UT-47_CAS-184745
  #FeatureID-ACAUTOCAS-11316
  Scenario Outline: ACAUTOCAS-14744:  Delete <SingleOrMultiple> investor details at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open investor details tab
    When user delete "<SingleOrMultiple>" investor details
    Then "<SingleOrMultiple>" investor details should be deleted successfully
    Examples:
      | SingleOrMultiple | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | Single           | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |
      | Multiple         | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |