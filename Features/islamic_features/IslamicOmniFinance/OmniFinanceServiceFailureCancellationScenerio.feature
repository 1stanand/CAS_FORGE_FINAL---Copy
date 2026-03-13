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
#@OmniFailureCancellationScenario
#
##FeatureID-CAS-233021
#Feature: CAS_233021 Cancellation Scenario on Commodity Allocation Tab at Post Approval Stage
#
##  Pre-Requisites---
## Validate bond cancellation & metal cancellation service failure scenario with sub loans IPF,ICC of commodity type Metal, Bond
## metalCancellation & bondCancellation service triggering failed
## For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
## Commodity Allocation tab is present at Post Approval Stage
## 4 tranches two for metal and two for bonds should be visible
#
#  Background:
#    Given user is on SSO login page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${CommodityType:["Metal"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${ApplicantType:"indiv"]}
#  Scenario Outline: Validate metalCancellation service failure from pnotify on performing confirm cancellation from cancelled application grid on <ProductType> product type application with <SubLoans> of commodity Metal
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on metal purchase button
#    When user clicks on more action button
#    And user click on cancel Application
#    And User cancels an application from Post Approval Stage
#    When User is on cancelled application grid
#    And user search application on cancelled application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 1
#    And user makes action to confirm "Cancellation" the application on "Cancelled" application
#    Then proper validation message "<Message>" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | SubLoans            | Category | Key | CommodityType | Message                                      |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card |          |     | Metal         | Error occurred in Metal Cancellation service |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    |          |     | Metal         | Error occurred in Metal Cancellation service |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${CommodityType:["Bonds"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${ApplicantType:"indiv"]}
#  Scenario Outline: Validate bondCancellation service failure from pnotify on performing confirm cancellation from cancelled application grid on <ProductType> product type application with <SubLoans> of commodity Bond
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    When user clicks on more action button
#    And user click on cancel Application
#    And User cancels an application from Post Approval Stage
#    When User is on cancelled application grid
#    And user search application on cancelled application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 1
#    And user makes action to confirm "Cancellation" the application on "Cancelled" application
#    Then proper validation message "<Message>" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | SubLoans            | Category | Key | CommodityType | Message                                     |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card |          |     | Bonds         | Error occurred in Bond Cancellation service |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    |          |     | Bonds         | Error occurred in Bond Cancellation service |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${ApplicantType:"indiv"]}
#  Scenario Outline:  Validate "Send back not applicable" validation message on performing send back action after "metalCancellation service failed" pnotify along with the tranche id appears once Confirm Cancellation has been initiated for <ProductType> product type application
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "Bonds" based "<SubLoans>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    And user clicks on plus icon of action column for "Metal" based "<SubLoans>"
#    And user clicks on metal purchase button
#    When user clicks on more action button
#    And user click on cancel Application
#    And User cancels an application from Post Approval Stage
#    When User is on cancelled application grid
#    And user search application on cancelled application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 1
#    And user makes action to confirm "Cancellation" the application on "Cancelled" application
#    Then proper validation message "Error occurred in Metal Cancellation service" should be visible
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 0
#    And user makes action to confirm "Send Back" the application on "Cancelled" application
#    Then proper validation message "Send back not applicable" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | SubLoans            | Category | Key |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card |          |     |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card |          |     |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    |          |     |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    |          |     |
