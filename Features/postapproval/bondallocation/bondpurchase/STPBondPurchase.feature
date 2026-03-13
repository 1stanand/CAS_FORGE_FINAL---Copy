@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Islamic
@Bonds
@ReleaseIslamicM3
@Release

@Perishable
Feature: Bond Purchase with Service

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-11341
# PQM-37_CAS-185568
# PMG-3_CAS-185568,5_CAS-185568
# UT-104_CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  @26MarFix
  Scenario Outline: ACAUTOCAS-14492:  Bond Allocation tab with bond initiate button should be disabled at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on initiate bond purchase
    Then bond initiate button should be disabled
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-39_CAS-185568
#Rework
  Scenario: ACAUTOCAS-14493:  unable to move to next stage without purchase executing bonds purchase service
    And user opens an application of "IPF" product type as "indiv" applicant at "Post Approval" for "bonds" with "" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    When user clicks on move to next stage button
    Then Application should not move to next stage if bonds purchase service is not executed

#FeatureID-ACAUTOCAS-11341
#PQM-38_CAS-185568
#PMG-1_CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14494:  Bond Transfer section is visible in Bond Allocation Tab at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on initiate bond purchase
    Then bond transfer section should be visible
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
# PQM-12_CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14495:  Bond Allocation tab with purchase initiate button should be visible at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then initiate bond purchase button should be visible
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-30_CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  Scenario Outline: ACAUTOCAS-14496:  editable <fieldName> validation at <ApplicationStage> of <ProductType> for bond purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on initiate bond purchase
    Then user should be able to verify "<fieldName>" as "<EditableNonEditable>" for bond purchase
    Examples:
      | fieldName               | EditableNonEditable | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Deal Reference Number   | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number Start       | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number End         | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Price              | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Number             | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Issue Date         | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Purchase Invoice Number | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Purchase Receipt Number | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Expiry Date        | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Amount                  | No                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Quantity                | NO                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-42_CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  @26MarFix
  Scenario Outline: ACAUTOCAS-14497:  Bond Allocation TAT should be visible at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then Bond Allocation TAT should be visible
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

#FeatureID-ACAUTOCAS-11341
#PQM-43_CAS-185568
  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval","Disbursal"]}
  # ${ApplicantType:["indiv"]}
  @26MarFix
  Scenario Outline: ACAUTOCAS-14498:  Validation of bond purchase details at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then Bond purchase should happen successfully
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds   |     |


