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
Feature: Validate Dynamic Form in Investor Details at Purchase Promise Stage

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #PQM-14_CAS-187834,5_CAS-186309,6_CAS-186309
  #UT-51_CAS-184745
  #FeatureID-ACAUTOCAS-11322
  Scenario Outline: ACAUTOCAS-14779:  Validate display of dynamic form on investor details at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user open investor details tab
    Then dynamic form should be displayed on investor details

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #UT-52_CAS-184745
  #FeatureID-ACAUTOCAS-11322
  Scenario Outline: ACAUTOCAS-14780:  Add investor details with filling dynamic form at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    When user fills all fields with dynamic form to add investor details
    And user clicks on done button in investor details
    Then investor details should be added successfully

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #UT-53_CAS-184745
  #FeatureID-ACAUTOCAS-11322
  Scenario Outline: ACAUTOCAS-14781:  Verify the dynamic form data still present in dynamic form at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user fills all fields with dynamic form to add investor details
    And user clicks on done button in investor details
    When user clicks on edit button in investor details record grid
    Then data should be present in dynamic form on investor details

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #UT-56_CAS-184745
  #FeatureID-ACAUTOCAS-11322
  Scenario Outline: ACAUTOCAS-14782:  Validate success message on adding investor details with filling dynamic form at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    When user fills all fields with dynamic form to add investor details
    And user clicks on done button in investor details
    And user clicks on save button on investor details
    Then investor details record should be added with success message

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #UT-54_CAS-184745, 55_CAS-184745
  #FeatureID-ACAUTOCAS-11322
  Scenario Outline: ACAUTOCAS-14783:  Validate updating dynamic form of investor details record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user fills all fields with dynamic form to add investor details
    And user clicks on done button in investor details
    And user clicks on edit button in investor details record grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 1
    When user update data of dynamic form on investor details
    And user clicks on done button in investor details
    And user clicks on edit button in investor details record grid
    Then data should be updated in dynamic form on investor details

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Reconsideration"]}
  # ${ApplicantType:["indiv"]}
  #UT-57_CAS-184745
  #FeatureID-ACAUTOCAS-11322
  Scenario Outline: ACAUTOCAS-14784:  re open application to Validate updating dynamic form of investor details record at <FinalStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 0
    And user open investor details tab
    And user fills all fields with dynamic form to add investor details
    And user clicks on done button in investor details
    And user clicks on edit button in investor details record grid
    And user reads data from the excel file "purchase_promise.xlsx" under sheet "home" and row 1
    When user update data of dynamic form on investor details
    And user clicks on done button in investor details
    And user clicks on save button on investor details
    And user opens an application of "Purchase Promise" stage present in context from application grid
    And user open investor details tab
    And user clicks on edit button in investor details record grid
    Then data should be updated in dynamic form on investor details

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key                | FinalStage       |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | shares   | ispurchase promise | Purchase Promise |