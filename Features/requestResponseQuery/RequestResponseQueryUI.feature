@AuthoredBy-Yuvraj.Raghuwanshi
@ReviewedBy-Sajja.Ravikumar
@ImplementedBy-aqib.war
@TechReviewedBy-Rishabh.Garg
@DevTrack
@Release
@Conventional
@Epic-QueryModule
#FeatureID-CAS-234897
#StoryID-CAS-234897

@RequestResponseQuery
Feature: CAS_234897 Validation task on Raise and Response Query event

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


#${ProductType:["PF"]}
#${ApplicationStage:["DDE"]}
#${ApplicantType:["indiv"]}

  Scenario Outline: Application is in <ApplicationStage> and try to raise query inside workflow when validation rule is false
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When user selects raise query option from more actions list of "<ApplicationStage>" "<key>"
    And user reads data from the excel file "document.xlsx" under sheet "raise_query" and row 0
    And user raise query before "<Query_Status>" at "<ApplicationStage>"
    Then proper validation message "<Error>" should be visible
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | Query_Status   | Error                |
      | PF          | indiv         | DDE              |          |     | Response Query | defaultFalse : Error |

  Scenario Outline: Try to raise query outside workflow when validation rule is false
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigate to raise query page
    And user search application in raise query page of "<ApplicationStage>"
    And user reads data from the excel file "document.xlsx" under sheet "raise_query" and row 0
    When user raise query before "<Query_Status>" at "<ApplicationStage>"
    Then proper validation message "<Error>" should be visible
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | Query_Status   | Error                |
      | PF          | indiv         | DDE              |          |     | Response Query | defaultFalse : Error |

  Scenario Outline: Try to respond query outside workflow when validation rule is false
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigate to raise query page
    And user search application in raise query page of "<ApplicationStage>"
    And user reads data from the excel file "document.xlsx" under sheet "raise_query" and row 0
    And user raise query before "<Query_Status>" at "<ApplicationStage>"
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "ChildBrowserSheet" and 0
    And user reads data from the excel file "response_query.xlsx" under sheet "home" and row 5
    And user navigates to response query page
    And user search and open application to respond to query
    When user forward the response to team for selected application
    And user clicks on submit response button on screen
    Then proper validation message "<Error>" should be visible
    Examples:
      | ProductType | ApplicantType | ApplicationStage | Category | Key | Query_Status   | Error                |
      | PF          | indiv         | DDE              |          |     | Response Query | defaultFalse : Error |