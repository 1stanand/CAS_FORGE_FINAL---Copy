@Epic-RCU
@ReviewedBy-kamal.shaiva
@AuthoredBy-gaurav.khanna
@TechReviewedBy-
@ImplementedBy-
@DevTrack
#EpicID-CAS-233930
#StoryID-CAS-233983

#FeatureID-CAS-233983
  #  Pre-Requisites---
# Validate user has stage access
 #User must have RCU authority
Feature: RCU: Provision of Enabling RCU for selected documents
  #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:[" DDE", "Credit Approval", "Recommendation"]}
   #${ApplicantType:{"indiv"}]

  Background:
    Given the user is logged in as a Credit Approver


    #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:[" DDE", "Credit Approval", "Recommendation"]}
   #${ApplicantType:{"indiv"}]

  Scenario Outline: Initiate RCU for eligible documents at different stages
    When the user clicks on the Re-Initiate RCU button under the RCU tab
    And the user is on the Credit Application screen at <Credit Approval> stage
    And the application has both previously verified and newly uploaded documents
    And the documents have the following RCU statuses:
      | Document Name      | RCU Status     |
      | Income Proof       | Completed      |
      | Address Proof      | Non-Initiated  |
      | ID Proof           | In Progress    |
    And only documents with status "<EligibleStatus>" should be visible
    And the documents should appear as non editable
    And there should be no option to "Raise Query"
    Then the RCU modal screen should open

    Examples:
      | Stage            | EligibleStatus  |
      | Recommendation   | Yes      |
      | Credit Approval  | No   |
      | Reconsideration  | Yes       |

    #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:[" DDE", "Credit Approval", "Recommendation"]}
   #${ApplicantType:{"indiv"}]

  Scenario Outline: Perform RCU verification and completion
    And the user initiates RCU for document "<DocumentName>"
    When the user sets the RCU status to "<SelectedStatus>"
    Then the RCU should allow verification and completion for that document

    Examples:
      | DocumentName    | SelectedStatus |
      | Address Proof   | Sampling       |
      | Income Proof    | Verified       |

    #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:[" DDE", "Credit Approval", "Recommendation"]}
   #${ApplicantType:{"indiv"}]

  Scenario: Restriction for documents already in progress
    And the RCU is already in progress for "ID Proof"
    When the user attempts to re-initiate or act on "ID Proof" outside the RCU screen
    Then the system should restrict the action and display a message "RCU in progress – action not allowed outside RCU screen"

    #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:["Credit Approval", "Recommendation"]}
   #${ApplicantType:{"indiv"}]

  Scenario: Final status update and history tracking after RCU completion
    And the user has completed RCU for all applicable documents
    And the system should create a history log entry for each document
    And the history should be visible under RCU tab at <ApplicationStage>
    Then the final RCU status for the application should be updated


    #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:[" DDE", "Credit Approval", "Recommendation"]}
   #${ApplicantType:{"indiv"}]

  Scenario Outline: Visibility of "Re-Initiate RCU" button based on document RCU status
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And  the RCU status for "<Document>" is "<Status>"
    Then the "Re-Initiate RCU" button should be <ButtonState>

    Examples:
      | Document        | Status        | ButtonState |
      | Income Proof    | Completed     | enabled     |
      | Address Proof   | Non-Initiated | enabled     |
      | ID Proof        | In Progress   | disabled    |
