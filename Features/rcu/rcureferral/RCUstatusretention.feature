@Epic-RCU
@ReviewedBy-Kamal.shaiva
@AuthoredBy-gaurav.khanna
@TechReviewedBy-
@ImplementedBy-
@DevTrack
#EpicID-CAS-233930
#StoryID-CAS-233940

#FeatureID-CAS-233940
Feature: RCU: Status retention on reject
#  Pre-Requisites--- Validate user has authority to cancel and reject
# User must have RCU authority
#${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
# ${ApplicationStage:[" DDE", "Credit Approval", "Cancellation", "Rejection", "Disbursal"]}
   #${ApplicantType:{"indiv"}]
  #${FinalStatus:{"Cancelled", "Rejected"}]
  #${ExpectedRCUResult:{"Cancelled", "Rejected"}]
  #${ExpectedTaskStatus:{"Completed"}]
  #${ExpectedRCUState:{"Initiated"}]

  Background:
    Given the application exists in the system

  Scenario Outline: Application is cancelled or rejected - RCU result is updated accordingly
    And the application is in <Stage> stage
    And the application RCU task has been initiated
    When the application status is changed to "<FinalStatus>"
    And the RCU task should be marked as "<ExpectedTaskStatus>"
    Then the RCU result should be updated to "<ExpectedRCUResult>"


    Examples:
      | Stage         |FinalStatus|ExpectedRCUResult  |ExpectedTaskStatus|
      | DDE           |Cancelled  |Cancelled          |Completed         |
      | CreditApproval|Rejected   |Rejected           |Completed         |

     #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:[" DDE", "Credit Approval", "Cancellation", "Rejection", "Disbursal"]}
   #${ApplicantType:{"indiv"}]
  #${FinalStatus:{"Cancelled", "Rejected"}]
  #${ExpectedRCUResult:{"Cancelled", "Rejected"}]
  #${ExpectedTaskStatus:{"Completed"}]
  #${ExpectedRCUState:{"Initiated"}]

  Scenario Outline: RCU task is re-initiated only when application is sent back to Processing Activity
    And the application was previously in "<PreviousStatus>" with RCU task marked as "Completed"
    When the user sends the application to "<ProcessingActivity>"
    Then the RCU task should be "<ExpectedRCUState>"

    Examples:
      | PreviousStatus | ProcessingActivity | ExpectedRCUState   |
      | Rejected       | CreditApproval     | Initiated          |
      | Cancelled      | Disbursal          | Initiated          |
