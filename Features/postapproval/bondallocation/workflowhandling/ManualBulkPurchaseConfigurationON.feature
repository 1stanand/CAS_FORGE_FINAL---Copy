@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-deep.maurya
@ImplementedBy-deep.maurya
@Islamic
@Bonds
@ReleaseBondManual_BP_ON

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Post Approval"]}
# ${ApplicantType:["indiv"]}
Feature:Manual Bulk Purchase Configuration is ON for Bond Allocation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-11342,CAS-191742
  #PQM-1_CAS-191742
  Scenario Outline: ACAUTOCAS-14588: Manual mode configuration and bulk purchase mode both are ON for Bonds at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then system should allow configuration for both manual along with bulk purchase modes
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


 #FeatureID-ACAUTOCAS-11342,CAS-191742
  #PQM-10_CAS-191742
  Scenario Outline: ACAUTOCAS-14589:  Verify Bond Allocation Tab for Bond Purchase section while Bulk Purchase Configuration and Manual Mode configuration is ON for<fieldName> at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then only bond transfer section should be visible with editable "<fieldName>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | fieldName             | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Deal Reference Number | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Unit Number Start     | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Unit Number End       | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bond Number           | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bond Expiry Date      | bonds    |     |

  #FeatureID-ACAUTOCAS-11342,CAS-191742
  #PQM-10_CAS-191742
  Scenario Outline: ACAUTOCAS-14590:  Verify Bond Allocation Tab for Bond Purchase section while Bulk Purchase Configuration and Manual Mode configuration is ON for non editable <fieldName> at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then only bond transfer section should be visible with non editable "<fieldName>"
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | fieldName | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Amount    | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Quantity  | bonds    |     |


  #PQM-11_CAS-191742
 #FeatureID-ACAUTOCAS-11342,CAS-191742
  Scenario Outline: ACAUTOCAS-14591: Fill data in bond transfer section when Bulk Purchase Configuration and Manual Mode configuration is ON at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    And user opens bond allocation tab
    And user fills the bond transfer details excluding field name
    When user saves the bond allocation details
    Then UI should display validation messages for all mandatory "<Fields>"
    Examples:
      | Fields                | PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | Deal Reference Number | post_approval.xlsx | bondAllocation              | 0                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number Start     | post_approval.xlsx | bondAllocation              | 1                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Unit Number End       | post_approval.xlsx | bondAllocation              | 2                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Number           | post_approval.xlsx | bondAllocation              | 3                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |
      | Bond Expiry Date      | post_approval.xlsx | bondAllocation              | 4                                  | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

 #FeatureID-ACAUTOCAS-11342,CAS-191742
  #PQM-12_CAS-191742
  #then should be correct and verify
  Scenario Outline: ACAUTOCAS-14592: Move to Next stage without saving details on bond allocation tab while Bulk Purchase Configuration and Manual Mode configuration is ON at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user click on move to next stage
    Then The application should not proceed to the next stage unless the bond purchase service has been executed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |



















