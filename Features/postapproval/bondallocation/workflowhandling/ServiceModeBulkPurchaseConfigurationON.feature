@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-deep.maurya
@TechReviewedBy-
@ImplementedBy-deep.maurya
@Islamic
@Bonds
@ReleaseIslamicService_BP_ON

# ${ProductType:["IPF"]}
# ${ApplicationStage:["Post Approval"]}
# ${ApplicantType:["indiv"]}
Feature:Bulk Purchase Configuration is ON for Bond Allocation in Service Mode

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-11342,CAS-191742
   #PQM-2_CAS-191742
  Scenario Outline: ACAUTOCAS-14605:  Verify Bond Allocation Tab for Bond Purchase section when Bulk Purchase Configuration is ON in Service Mode at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then Bond purchase section with "<Fields>" should be hidden
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Fields                  | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Deal Reference Number   | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Unit Number Start       | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Unit Number End         | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Unit Price              | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bond Number             | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Unit Issue Date         | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Purchase Invoice Number | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Purchase Receipt Number | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Bond Expiry Date        | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Amount                  | bonds    |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Quantity                | bonds    |     |


#FeatureID-ACAUTOCAS-11342,
#CAS-189588
 #PQM-3_CAS-191742
  Scenario Outline: ACAUTOCAS-14606: Verify Bond Allocation Tab for Bond Transfer section  when Bulk Purchase Configuration is ON in Service Mode at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    Then Bond transfer section with "<Fields>" should be visible by default
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Fields                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Deal Reference Number |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number Start     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Unit Number End       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Number           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Quality               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Bond Expiry Date      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | Amount                |

  #PQM-4_CAS-191742
 #FeatureID-ACAUTOCAS-11342
  Scenario Outline: ACAUTOCAS-14607: Bond Transfer successfully when Bulk Purchase Configuration is ON in Service Mode at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user click on initiate bond transfer
    Then Bond transfer should happen successfully
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |