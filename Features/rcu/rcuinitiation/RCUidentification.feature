@Epic-RCU
@ReviewedBy-kamal.shaiva
@AuthoredBy-gaurav.khanna
@TechReviewedBy-
@ImplementedBy-
@DevTrack
#EpicID-CAS-233930
#StoryID-CAS-233921


#FeatureID-CAS-233921
Feature: RCU: Introduction of New Mapping Code and Identification
   #  Pre-Requisites---
# Validate user has authority of document master
 #User must have different stages authority
  #User must have authority to upload documents
#User has access to create or view documents in the application

#${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:["Login Acceptance"," DDE", "Credit Approval", "Cancellation", "Rejection", "Disbursal", "TI","TA", "Collateral Investigation"]}
   #${ApplicantType:{"indiv"}]

  Background:
    Given the system is enabled for RCU document tagging

  Scenario Outline: Mark a document as RCU eligible during creation
    When the user checks the RCU eligibility checkbox
    And RCU label should appear next to the document on the document screen
    And it should be visible in <Applicationstage>
    And saves the document
    Then the document should be marked as RCU eligible


    Examples:
      | DocumentType      | ReferenceType  |
      | Income Proof      | Customer       |
      | Property Document | Collateral     |
      | Loan Agreement    | Loan           |
      | KYC Document      | Others         |

   #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
   #${ApplicantType:{"indiv"}]

  Scenario Outline: Mark a document as RCU eligible during creation
    When the user checks the RCU eligibility checkbox
    And RCU label should appear next to the document on the document screen
    And it should be visible in "<Screen>"
    And saves the document
    Then the document should be marked as RCU eligible


    Examples:
      | DocumentType      | Screen |
      | Income Proof      | Document Collection, Release & Printing|

   #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:["Login Acceptance"," DDE", "Credit Approval", "Cancellation", "Rejection", "Disbursal", "TI","TA", "Collateral Investigation"]}
   #${ApplicantType:{"indiv"}]

  Scenario: RCU documents should be visible in ECM
    And a document is created with RCU checkbox enabled
    When the user views the document in ECM
    Then the document should display RCU for identification

#${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:["Login Acceptance"," DDE", "Credit Approval", "Cancellation", "Rejection", "Disbursal", "TI","TA", "Collateral Investigation"]}
   #${ApplicantType:{"indiv"}]

  Scenario: RCU marking should apply to documents collected through additional documents
    And the user adds a document through the "Add Additional Document" button
    When the RCU checkbox is enabled
    Then the document should be marked as RCU
    And the label RCU should be shown on the document screen

#${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:["Login Acceptance"," DDE", "Credit Approval", "Cancellation", "Rejection", "Disbursal", "TI","TA", "Collateral Investigation"]}
   #${ApplicantType:{"indiv"}]

  Scenario Outline: RCU documents collected through specific stages should display properly
    And the user collects a document at "<Stage>" stage using additional document functionality
    When the RCU checkbox is selected
    Then the document should be marked as RCU
    And the label RCU should be displayed in the UI for "<Stage>" stage

    Examples:
      | Stage              |
      | RCU                |
      | FI                 |
      | Collateral Validation |

#${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:["Login Acceptance"," DDE", "Credit Approval", "Cancellation", "Rejection", "Disbursal", "TI","TA", "Collateral Investigation"]}
   #${ApplicantType:{"indiv"}]

  Scenario: Filter documents by RCU eligibility
    And multiple documents exist with and without RCU eligibility
    When the user applies the RCU filter on the document screen
    Then only the documents marked with RCU should be shown

#${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:["Login Acceptance"," DDE", "Credit Approval", "Cancellation", "Rejection", "Disbursal", "TI","TA", "Collateral Investigation"]}
   #${ApplicantType:{"indiv"}]

  Scenario: Non-RCU documents should not display the "(RCU)" label
    And a document is created without selecting the RCU checkbox
    When the document is saved
    Then the document should not show RCU label in any document view or screen
