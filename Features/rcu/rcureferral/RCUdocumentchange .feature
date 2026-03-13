@Epic-DocumentMaster
@ReviewedBy-Kamal.shaiva
@AuthoredBy-gaurav.khanna
@TechReviewedBy-
@ImplementedBy-
@DevTrack
#EpicID-CAS-233930
#StoryID-CAS-233921
Feature: Configuration of Verification Status

  Background:
    Given maker logged in "Common Masters" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And User navigates to Document master from menu
    And Common Master setup should be opened with Document master accessible to the user


# ${ApplicationStage:["Pre Approval","Post Approval","Post Disbursal","Disbursal","OPERATIONS CHECK"]}
  # ${Eligibility:["RCU Eligible"]}
  # ${Classification:["General", "Legal", "Other", "Security"]}
   #Pre-requisite - And document already maintained in document master
    # eligibility combination already exits

  Scenario Outline: Update a Document record for <ApplicationStage> with eligibility as <eligibility>
    When user navigates to Document master from menu
    And user updates Document record with ApplicationStage as "<ApplicationStage>" eligibility
    And user enters document name with description
    And user selects "<Classification>" from document classification drop down
    And user selects "<DocumentType>" from drop down
    And user selects "<Eligibility>" from drop down
    And user saves the Document record
    Then user should be able to update document record
    Examples:
      | ApplicationStage   | Classification   | Eligibility | DocumentType |
      | <ApplicationStage> | <Classification> | RCU         | Individual   |
      | <ApplicationStage> | <Classification> |             | Group        |
