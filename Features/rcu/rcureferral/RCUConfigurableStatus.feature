@Epic-RCU
@ReviewedBy-Kamal.shaiva
@AuthoredBy-gaurav.khanna
@TechReviewedBy-
@ImplementedBy-
@DevTrack
#EpicID-CAS-233930
#StoryID-CAS-233995


#FeatureID-CAS-233995
Feature: Configurable Verification and Sampling Status in RCU Process
   #  Pre-Requisites---
# Validate user has configured the assignment matrix
 #User must have RCU authority
  Background:
    Given user logged in cas with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And the user navigates to the RCU stage for application "<applicationId>"
    And generic parameters have been set for verification statuses
    And assignment matrix is configured for some statuses

     #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:[" DDE", "Credit Approval",]}
   #${ApplicantType:{"indiv"}]

  Scenario Outline: Verification status should be visible at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    When the user views the verification status dropdown
    Then the following verification status should be visible:
      | Cancel   |
      | Neutral  |
      | Positive |
      | Negative |
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage |
      | <ProductType> | <ApplicantType> | RCU              |


 #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan", "Consumer Durable"]}
 #${ApplicationStage:["RCU",]}
   #${ApplicantType:{"indiv"}]

  Scenario Outline: Save selected verification status
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And the user selects "<selectedStatus>" from verification dropdown
    When the user saves the application
    Then the application should be saved successfully with movement to "<nextStage>"
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | selectedStatus | nextStage |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Positive       | Sampling  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Neutral        | Sampling  |

 #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:[" DDE", "Credit Approval",]}
   #${ApplicantType:{"indiv"}]

  Scenario Outline: Sampling status should auto-populate based on assignment matrix

    And assignment matrix has sampling status "<expectedSamplingStatus>" for "<selectedStatus>"
    When the user selects verification status as "<Status>"
    And user save verification status
    Then  sampling status should be display as "<SamplingStatus>"

    Examples:
      | Status   | SamplingStatus |
      | Positive | Okay           |
      | Negative | Not Okay       |

 #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:[" DDE", "Credit Approval",]}
   #${ApplicantType:{"indiv"}]
  @DevTrack
  Scenario: Sampling status defaults to Sampling Okay if not in assignment matrix
    And the user selects a verification status not mapped in the assignment matrix
    When the user saves the application
    Then the sampling status should default to as Sampling Okay

     #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:[" RCU Referral",]}
   #${ApplicantType:{"indiv"}]

  Scenario Outline: Final decision should be saved with sampling status
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And the user selects "<selectedStatus>"  along with sampling as "<samplingStatus>"
    When user saves the application status along with sampling status
    Then user should be able to proceed with "<decision>"

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | samplingStatus | decision |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | NotOkay      | Rejection |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Okay       | Approval  |


     #${ProductType:["Commercial Vehicle", "Education Loan", "Consumer Loan"]}
 #${ApplicationStage:[" RCU Initiation",]}
   #${ApplicantType:{"indiv"}]

  Scenario Outline: View version information in RCU history
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And a <version> is defined for a document
    When the user clicks "View Status" in RCU history
    Then the system should display <Version>
    Examples:
      | version |
      | 1       |
      | 2       |
      | 3       |