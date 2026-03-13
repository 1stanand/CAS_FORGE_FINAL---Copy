@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-deep.maurya
@TechReviewedBy-
@ImplementedBy-deep.maurya
@ReleaseIslamicM3
@Release
@Islamic
@Bonds
@Perishable


# ${ProductType:["IPF"]}
# ${ApplicationStage:["Post Approval"]}
# ${ApplicantType:["indiv"]}
Feature:Bulk Purchase Configuration is OFF for Bond Allocation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #FeatureID-ACAUTOCAS-11342,CAS-191742
  #PQM-5_CAS-191742
  #bond purchanse button name change
  Scenario Outline: ACAUTOCAS-14600:  Verify Bond Allocation Tab for Bond Purchase section while Bulk Purchase Configuration is OFF at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    Then Bond purchase section along with Bond Transfer section should be visible
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |


        #FeatureID-ACAUTOCAS-11342,CAS-191742
  #PQM-6_CAS-191742
  Scenario Outline: ACAUTOCAS-14601: Bond Purchase successfully while Bulk Purchase Configuration is OFF at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    When user clicks on initiate bond purchase
    Then Bond purchase should happen successfully
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |

 #FeatureID-ACAUTOCAS-11342,CAS-191742
 #PQM-6_CAS-191742
  Scenario Outline: ACAUTOCAS-14602: Bond Transfer successfully while Bulk Purchase Configuration is OFF at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    When user click on initiate bond transfer
    Then Bond transfer should happen successfully
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |



  #FeatureID-ACAUTOCAS-11342,CAS-191742
   #PQM-7_CAS-191742
  Scenario Outline: ACAUTOCAS-14603: Move to Next stage while Bulk Purchase Configuration is OFF at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens bond allocation tab
    And user clicks on initiate bond purchase
    And user click on initiate bond transfer
    And user clicks on Document Tab on Post Approval Stage
    And user select All document
    And user submit the document
    And user complete document printing tab
    When user click on move to next stage
    And user opens an "<ProductType>" application at "<VarStage>" stage from application grid
    Then Application should be move to "<VarStage>" stage
    Examples:
       | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | VarStage  |
       | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     | DISBURSAL |

  #FeatureID-ACAUTOCAS-11342,CAS-191742
   #PQM-8_CAS-191742
  Scenario Outline: ACAUTOCAS-14604: Move to Next stage without initiating Bond Purchase and Bond Transfer while Bulk Purchase Configuration is OFF at <ApplicationStage> for a <ProductType> application
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user clicks on Document Tab on Post Approval Stage
    And user select All document
    And user submit the document
    And user opens bond allocation tab
    When user click on move to next stage
    Then The application should not proceed to the next stage unless the bond purchase service has been executed
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | bonds    |     |





















