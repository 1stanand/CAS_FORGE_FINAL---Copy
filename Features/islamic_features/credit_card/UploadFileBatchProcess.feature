@Epic-CreditCardNumberThroughFileGeneration
@AuthoredBy-shivam.agarwal
@ReviewedBy-Atul.bhardwaj
@TechReviewedBy-
@ImplementedBy
@DevTrack
#EpicID-CAS-224897
#StoryID-CAS-224907

# ${ProductType:["IOMNI","ICC","CC","OMNI"]}
# ${ApplicationStage:["Card Management System"]}
# ${ApplicantType:["indiv"]}
#Pre-requisite: Response file uploaded successfully

Feature: Credit Card number generation via file upload process

  Background:
    Given user is on the CAS Login Page
    And user logs in to CAS with valid credentials present in "LoginDetailsCAS.xlsx" under "LoginData" and row 0

  @DevTrack
  Scenario Outline: Validate Credit Card Number in the applications in batch process & Archive queue based on Response File
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to send to card management grid in Batch process queue
    When the response file is uploaded with the associated scheduler
    Then validate the credit card number in the applications based on the number provided in the response file

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

    #Pre-requisite: In the uploaded response file, anyone record should have error response
  @DevTrack
  Scenario Outline: Validate Application Activity with Error Response from uploaded response File
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to send to card management grid in Batch process queue
    When the response file is uploaded with the associated scheduler
    Then validate the error message in the application's activity log based on the error message contained in the response file

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |

  @DevTrack
  Scenario Outline: Validate the movement of Applications with Valid Card Numbers to Archive Queue
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to send to card management grid in Batch process queue
    When the response file is uploaded with the associated scheduler
    Then validate the applications for which valid credit card numbers are provided in the response file must be transitioned from the batch process queue to the archive queue

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
