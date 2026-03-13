@Epic-PF_Metal_Base
@PQMStory
@AuthoredBy-aryan.jain
@ImplementedBy-aryan.jain
@Islamic
@Metals
@BulkPurchaseON
@Perishable
@ReleaseIslamicMetalConfig2
@DBConfig-2
Feature:Bulk Purchase Configuration is ON for Metal Allocation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

      #Prerequisite:
      #Configuration : config.metalAllocation.bulk.purchase.enable

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-42_CAS-191764
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15769: Verify metal sell section is visible at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then "<var>" section should be displayed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | var        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-43_CAS-191764
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15770: Validate <field> button <enabled_disabled> at <ApplicationStage> of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens metal allocation tab
    Then "<field>" button is "<enabled_disabled>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | field                           | enabled_disabled |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell                      | enabled          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | view sell details               | disabled         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | metal sell generate certificate | disabled         |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-44_CAS-191764
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15771: unable to move to next stage without executing metal sell service in bulk purchase
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_metalAllocation>" and row <PostApproval_metalAllocation_rowNum>
    When user clicks on move to next stage button
    Then Application should not move to next stage for metal allocation service is not executed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | PostApprovalWB     | PostApproval_metalAllocation | PostApproval_metalAllocation_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     | post_approval.xlsx | metalAllocation              | 18                                  |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-45_CAS-191764
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15772: Validate to Move the application to the next stage after metal sell service executed
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on metal sell button
    And user generate certificates for metal sell
    And user complete document printing
    And user clicks on move to next stage button
    Then application should move to "Disbursal" stage
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |

  # ${ProductType:["IPF"]}
  # ${ApplicationStage:["Post Approval"]}
  # ${ApplicantType:["indiv"]}
  #PQM-46_CAS-191764
  #FeatureID-ACAUTOCAS-15323
Scenario Outline: ACAUTOCAS-15773: Validate Disbursal Stage after performing move to next stage at <ApplicationStage> of <ProductType> in metal
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens metal allocation tab
    When user clicks on metal sell button
    And user generate certificates for metal sell
    And user complete document printing
    And user clicks on move to next stage
    And user open that same application at "Disbursal" stage
    Then application should be on disbursal stage
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | metals   |     |
