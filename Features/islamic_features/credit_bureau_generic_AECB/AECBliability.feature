@Epic-AECB
@AuthoredBy-shivam.agarwal
@ReviewedBy-Atul.bhardwaj
@TechReviewedBy-
@ImplementedBy-gaurav.agarwal
@DevTrack
@Islamic
#EpicID-CAS-210148
#StoryID-CAS-234190
@Release

# ${ProductType:["IOMNI","ICC","IAF","IHF","IPF","PF","HL","CV","CEQ","CC","OMNI"]}
# ${ApplicationStage:["Credit Approval"]}
# ${ApplicantType:["indiv"]}

Feature: Credit Bureau Generic Integration

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #Pre-requisite: Credit Bureau service has not been triggered
  @DevTrack
  Scenario Outline: Validate display of unticked consent checkbox in Credit Bureau column at <ApplicationStage> Stage for productType <ProductType>
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user moves to main tab of "<ApplicationStage>"
    When user view the Credit Bureau details
    Then an unticked consent checkbox should be displayed in the Credit Bureau Check column

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


  #Pre-requisite: Credit Bureau service has not been triggered
  @DevTrack
  Scenario Outline: Validate the validation message over consent checkbox before initiating Credit Bureau Check at <ApplicationStage> Stage for productType <ProductType>
    And user creates an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user moves to main tab of "<ApplicationStage>"
    And user view the Credit Bureau details
    When user click initiate Credit Bureau details in popover
    Then "<Validation_Message>" comes in notification message

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |  Tab                 | Validation_Message                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |  Applicant's Profile | Customer Consent for Credit Bureau is not taken. |
