@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
#CreateDate: 31st Aug 2023
#ScriptedBy:
#ReviewedBy:
#Scenarios: = 2
@ImplementedBy-pallavi.singh
@TypeInsurance @SubTypeInsurance @Viewer
@Release
@Perishable
Feature: Insurance Viewer

#  Pre-Requisites---
#  In this feature we will view a Insurance attached to the loan application.

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["Post Approval","Application Renewal Recommendation","Application Renewal Approval"]}
  #${CollType:["Insurance"]}
  Scenario Outline: ACAUTOCAS-1330:  Insurance data reconcile to validate if data was saved properly
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "dde" without adding New Collateral
    When user adds collateral details with data from:
      | collateral.xlsx | insurance_details | 581 |
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    Then collateral should saved successfully
    Examples:
      | ProductType   | ApplicationStage   | applicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <applicantType> |          |     |

  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["Post Approval","Application Renewal Recommendation","Application Renewal Approval"]}
  #${CollType:["Insurance"]}
  Scenario Outline: ACAUTOCAS-1331:  CollateralPage should not be allowed to modify data in viewer mode
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "dde" without adding New Collateral
    When user adds collateral details with data from:
      | collateral.xlsx | insurance_details | 581 |
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    And user views the "Insurance"
    Then user should not be able to modify the data of saved collateral
    Examples:
      | ProductType   | ApplicationStage   | applicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <applicantType> |          |     |

  #FeatureID-ACAUTOCAS-238
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["Post Approval","Application Renewal Recommendation","Application Renewal Approval"]}
  #${CollType:["Insurance"]}
  Scenario Outline: ACAUTOCAS-16817: At "<ApplicationStage>" stage user should not be able to modify security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "dde" without adding New Collateral
    When user adds collateral details with data from:
      | collateral.xlsx | insurance_details | 581 |
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    And user modifies the "Insurance"
    Then user should not be able to modify the data of saved collateral
    Examples:
      | ProductType   | ApplicationStage   | applicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <applicantType> |          |     |

  #${ApplicationStage:["Post Approval","Application Renewal Recommendation","Application Renewal Approval"]}
  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${CollType:["Insurance"]}
  #FeatureID-ACAUTOCAS-238
  Scenario Outline: ACAUTOCAS-16818: At "<ApplicationStage>" stage user should not be able to delink security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "dde" without adding New Collateral
    When user adds collateral details with data from:
      | collateral.xlsx | insurance_details | 581 |
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    Then user should not be able to delink collateral
    Examples:
      | ProductType | ApplicationStage | applicantType | category | key |
      | pl          | Post Approval    | indiv         |          |     |


  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["Post Approval","Application Renewal Recommendation","Application Renewal Approval"]}
  #${CollType:["Insurance"]}
  #FeatureID-ACAUTOCAS-238
  Scenario Outline: ACAUTOCAS-16820: At "<ApplicationStage>" stage user should be able to view same data of "<CollSubType>" attached to "<ProductType>" application as originally entered
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "dde" without adding New Collateral
    When user adds collateral details with data from:
      | collateral.xlsx | insurance_details | 591 |
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "<ApplicationStage>" without adding New Collateral
    When user views the collateral "Insurance"
    Then user should be able to reconcile the data for "Insurance" collateral successfully
    Examples:
      | ProductType   | ApplicationStage   | applicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <applicantType> |          |     |

  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["Disbursal Author"]}
  #${CollType:["Insurance"]}
  #FeatureID-ACAUTOCAS-238
  Scenario Outline: ACAUTOCAS-16821: At Disbursal Author stage user should not be able to modify security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "dde" without adding New Collateral
    When user adds collateral details with data from:
      | collateral.xlsx | insurance_details | 581 |
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user navigates to the collateral page at disbursal stage
    Then user should not be able to modify collateral
    Examples:
      | ProductType   | ApplicationStage   | applicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <applicantType> |          |     |

  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["Disbursal Author"]}
  #${CollType:["Insurance"]}
  #FeatureID-ACAUTOCAS-238
  Scenario Outline: ACAUTOCAS-16822: At Disbursal Author stage user should not be able to delink security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "dde" without adding New Collateral
    When user adds collateral details with data from:
      | collateral.xlsx | insurance_details | 581 |
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user navigates to the collateral page at disbursal stage
    Then user should not be able to delink collateral
    Examples:
      | ProductType   | ApplicationStage   | applicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <applicantType> |          |     |

  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["Disbursal Author"]}
  #${CollType:["Insurance"]}
  #FeatureID-ACAUTOCAS-238
  Scenario Outline: ACAUTOCAS-16823: At Disbursal Author stage user should not be able to add security collateral attached to "<ProductType>" application
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "dde" without adding New Collateral
    When user adds collateral details with data from:
      | collateral.xlsx | insurance_details | 581 |
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    When user navigates to the collateral page at disbursal stage
    Then user should not be able to add the collateral
    Examples:
      | ProductType   | ApplicationStage   | applicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <applicantType> |          |     |

  #${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
  #${ApplicationStage:["Disbursal Author"]}
  #${CollType:["Insurance"]}
  #FeatureID-ACAUTOCAS-238
  Scenario Outline: ACAUTOCAS-16824: At Disbursal Author stage user should be able to view same data of "<CollSubType>" attached to "<ProductType>" application as originally entered
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "dde" for "<category>" with "<key>" from application grid
    And user opens Collateral Page on "dde" without adding New Collateral
    When user adds collateral details with data from:
      | collateral.xlsx | insurance_details | 591 |
    And user moves application from "dde" stage to application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" stage without opening it
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to the collateral page at disbursal stage
    When user views the collateral "Insurance"
    Then user should be able to reconcile the data for "Insurance" collateral successfully
    Examples:
      | ProductType   | ApplicationStage   | applicantType   | category | key |
      | <ProductType> | <ApplicationStage> | <applicantType> |          |     |
