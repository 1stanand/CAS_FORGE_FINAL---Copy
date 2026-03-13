@Epic-PF_Bond_Base
@PQMStory
@AuthoredBy-deep.maurya
@TechReviewedBy-
@ImplementedBy-deep.maurya
@ReleaseIslamicM3
@Release

@Islamic
@Bonds

  # ${ProductType:["IPF"]}

Feature:Master Workflow handling for bonds

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

 #FeatureID-ACAUTOCAS-11343,CAS-191742
  #PQM-37_CAS-191742
  Scenario Outline: ACAUTOCAS-14593: Verify seeded rule for <ProductType> application
    And user navigate to rule master
    When User searches seeded rule "<Rule>"
    Then "<Rule>" rule should be present
    Examples:
      | ProductType   | Rule                    |
      | <ProductType> | BOND_ALLOCATION_ST_RULE |

 #FeatureID-ACAUTOCAS-11343,CAS-191742
  #PQM-38_CAS-191742
  Scenario Outline: ACAUTOCAS-14594: Edit the seeded rule and modify for <ProductType> application
    And user navigate to rule master
    And User searches seeded rule "<Rule>"
    When user edits the seeded rule
    Then user should be able to edit seeded rule "<Rule>"
    Examples:
      | ProductType   | Rule                    |
      | <ProductType> | BOND_ALLOCATION_ST_RULE |


  #FeatureID-ACAUTOCAS-11343,CAS-191742
  #PQM-39_CAS-191742
  Scenario Outline: ACAUTOCAS-14595: Verify seeded condition for <ProductType> application
    And user navigate to condition master
    When User searches seeded condition "<Condition>"
    Then "<Condition>" condition should be present in condition master
    Examples:
      | ProductType   | Condition                    |
      | <ProductType> | BOND_ALLOCATION_ST_CONDITION |

  #FeatureID-ACAUTOCAS-11343,CAS-191742
  #PQM-39_CAS-191742
  Scenario Outline: ACAUTOCAS-14596: User is at condition master for <ProductType> application
    And user navigate to condition master
    When User searches seeded condition "<Condition>"
    And user edit "<Condition>" in condition master
    Then "<Condition>" condition should be present along with rule should be attached in the condition
    Examples:
      | ProductType   | Condition                    |
      | <ProductType> | BOND_ALLOCATION_ST_CONDITION |


  #PQM-27_CAS-191742
  #FeatureID-ACAUTOCAS-11343
  # ${ApplicationStage:["Post Approval"]}
  Scenario Outline: ACAUTOCAS-14597: Create new event with code as Bond Purchase as Notification Task at <ApplicationStage> for a <ProductType> application
    And user go to event definition master
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user creates new Event as a Notification Task
    Then User should be able to create new event for Bond Purchase using Notification task
    Examples:
      | ProductType   | ApplicationStage   |PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | <ProductType> | <ApplicationStage> |post_approval.xlsx | bondAllocation              | 0                                  |

    #PQM-28_CAS-191742
  #FeatureID-ACAUTOCAS-11343
  # ${ApplicationStage:["Post Approval"]}
  Scenario Outline: ACAUTOCAS-14597: Create new event with code as Bond Purchase as Notification Task at <ApplicationStage> for a <ProductType> application
    And user go to event definition master
    And user reads data from the excel file "<PostApprovalWB>" under sheet "<PostApproval_BondAllocation>" and row <PostApproval_BondAllocation_rowNum>
    When user creates new Event as a Notification Task
    Then user should be able to create new event for Bond Transfer using Notification task
    Examples:
      | ProductType   | ApplicationStage   |PostApprovalWB     | PostApproval_BondAllocation | PostApproval_BondAllocation_rowNum |
      | <ProductType> | <ApplicationStage> |post_approval.xlsx | bondAllocation              | 0                                  |


     #PQM-31_CAS-191742
  #FeatureID-ACAUTOCAS-11343
  Scenario Outline: ACAUTOCAS-14599: Make Bond Purchase event Inactive at <ApplicationStage> for a <ProductType> application
    And user go to event definition master
    And user search the "<Event>" in event definition master
    And user edit the event
    When user makes the event Inactive
    And user saves the event definition master
    Then event should be marked Inactive and saved successfully
    Examples:
      | ProductType   | ApplicationStage   | Event                      |
      | <ProductType> | <ApplicationStage> | BOND_PURCHASE_SERVICE_TASK |



























