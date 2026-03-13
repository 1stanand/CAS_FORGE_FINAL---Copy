# Commented by Raja.Pallela on 13th August as these feature files should not be included in CAS ATDD Suite scenarios count#@AuthoredBy-himanshi.sharma
#@ReviewedBy-Atul.bhardwaj
#@ImplementedBy-hrushikesh.patra
#@TechReviewedBy-
#@DevTrack
#@Epic-OmniFinance
#@Islamic
#
#@Perishable
#@Release
#@OmniServiceTaskFailure
#
##FeatureID-CAS-233021
#Feature: CAS-233021 Service Task For Omni Finance
#
## Pre-Requisites---
## In this scenario we will validate failure of service task of Omni Finance with sub loans IPF,ICC of commodity type Metal, Bond
## Commodity Allocation tab is added on Disbursal Stage
#
#  Background:
#    Given user is on SSO login page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicantType:["indiv"]}
##${ApplicationStage:["Application Curing"]}
#  Scenario Outline: Validate application of <ProductType> product is present at <ApplicationStage>
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    Then application should be present at "<ApplicationStage>"
#
#    Examples:
#      | ProductType | ApplicationStage   | ApplicantType | Category | Key |
#      | IOMNI       | Application Curing | indiv         |          |     |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicantType:["indiv"]}
##${ApplicationStage:["Application Curing"]}
#  Scenario Outline: Validate message "Application restored successfully" from pnotify when user click on restore button for the application of  <ProductType> product type from <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user clicks on Restore button for the application
#    Then message "Application restored successfully" should appear in pnotify
#
#
#    Examples:
#      | ProductType | ApplicationStage   | ApplicantType | Category | Key |
#      | IOMNI       | Application Curing | indiv         |          |     |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicantType:["indiv"]}
##${ApplicationStage:["Application Curing"]}
#  Scenario Outline: Validate via application manager application of <ProductType> product type lands on non curing stage after successfully being restored from <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user clicks on Restore button for the application
#    And  message "Application restored successfully" should appear in pnotify
#    And user open application manager
#    And user search application using application number
#    Then user validate "non curing" stage is present in stage column
#
#
#    Examples:
#      | ProductType | ApplicationStage   | ApplicantType | Category | Key |
#      | IOMNI       | Application Curing | indiv         |          |     |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicantType:["indiv"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${ApplicationStage:["Application Curing"]}
#  Scenario Outline: Validate consolidated error message appear in curing logs for all the <SubLoan> sub loan in which failure occurred for application of <ProductType> product type
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user search application on curing grid
#    When user opens the curing message for the application
#    Then user validates the error message in curing message
#
#    @Skip
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | SubLoan   | Category | Key |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | <SubLoan> |          |     |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicantType:["indiv"]}
##${ApplicationStage:["Application Curing"]}
#  Scenario Outline: Validate on click of retry button of application of <ProductType> product type application lands on Post Approval stage from <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user clicks on Retry button for the application
#    And user open application manager
#    And user search application using application number
#    Then user validate "Post Approval" stage is present in stage column
#
#
#    Examples:
#      | ProductType | ApplicationStage   | ApplicantType | Category | Key |
#      | IOMNI       | Application Curing | indiv         |          |     |
#
#
#
