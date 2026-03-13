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
#@CommodityCancellationScenario
##FeatureID-CAS-233021
#Feature: CAS_233021 Cancellation Scenario on Commodity Allocation Tab at Post Approval Stage
#
##  Pre-Requisites---
## Validate cancellation scenario for IOMNI application with sub loans IPF,ICC of commodity type Metal, Bond
## For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
## Commodity Allocation tab is present at Post Approval Stage
## 4 tranches two for metal and two for bonds should be visible
#  Background:
#    Given user is on SSO login page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${CommodityType:["Metal","Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${ApplicantType:["indiv"]}
## 4 tranches two for metal and two for bonds should be visible
#  Scenario Outline: Validate commodity allocation tab at <ApplicationStage> for <ProductType> with <SubLoans> sub loans of <CommodityType> commodity type
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens commodity allocation tab
#    Then tranche for commodity type "<CommodityType>" for sub product type "<SubLoans>" based product should be present
#    Examples:
#      | ProductType | ApplicationStage | SubLoans            | CommodityType | ApplicantType | Category | Key |
#      | IOMNI       | Post Approval    | Islamic Credit Card | Metal         | indiv         |          |     |
#      | IOMNI       | Post Approval    | Islamic Credit Card | Bonds         | indiv         |          |     |
#      | IOMNI       | Post Approval    | Personal Finance    | Metal         | indiv         |          |     |
#      | IOMNI       | Post Approval    | Personal Finance    | Bonds         | indiv         |          |     |
#
#  #PassedLocal
## When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate Cancel Application option appears in more action on <ApplicationStage> for <ProductType> application
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user clicks on more action button
#    Then Cancel Application option should be present
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | Category | Key |
#      | Post Approval    | IOMNI       | indiv         |          |     |
#
#  #PassedLocal
## When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate on performing Cancel application action on <ApplicationStage> for <ProductType> application move to Cancelled Application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user clicks on more action button
#    And user click on cancel Application
#    And User cancels an application from Post Approval Stage
#    When User is on cancelled application grid
#    Then cancelled application should be present at cancelled application grid
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | Category | Key |
#      | Post Approval    | IOMNI       | indiv         |          |     |
#
#  #PassedLocal
## When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${action:["Send Back for Processing to activity","Confirm Cancellation"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline:Validate user can perform <action> action  on application of <ProductType> product type present on Cancelled Application Grid cancelled from <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user clicks on more action button
#    And user click on cancel Application
#    And User cancels an application from Post Approval Stage
#    When User is on cancelled application grid
#    And user search application on cancelled application
#    Then "<action>" action should be present for select action field
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | action                               | Category | Key |
#      | Post Approval    | IOMNI       | indiv         | Send Back for Processing to activity |          |     |
#      | Post Approval    | IOMNI       | indiv         | Confirm Cancellation                 |          |     |
#
#  #PassedLocal
## When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline:Validate "The application has been cancel confirmed" message in activity section of application manger for application of <ProductType> product type cancelled from <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user clicks on more action button
#    And user click on cancel Application
#    And User cancels an application from Post Approval Stage
#    When User is on cancelled application grid
#    And user search application on cancelled application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 1
#    And user makes action to confirm "Cancellation" the application on "Cancelled" application
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | Category | Key | FieldName | Message                                   |
#      | Post Approval    | IOMNI       | indiv         |          |     | Activity  | The application has been cancel confirmed |
#
#  #PassedLocal
## When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
##${stages:["Credit Approval", "Recommendation" ,"KYC","Login Acceptance"]}
#  Scenario Outline:Validate application gets send back to applicable stage <stages>  on  performing send back action on application of <ProductType> product type cancelled from <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user clicks on more action button
#    And user click on cancel Application
#    And User cancels an application from Post Approval Stage
#    When User is on cancelled application grid
#    And user search application on cancelled application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 3
#    And user makes action to confirm "Send Back" the application on "Cancelled" application
#    Then application is "Cancelled" based on the action taken on Review application
#
#  ##Then application gets send back to applicable stage "<stages>"
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | stages           | Category | Key |
#      | Post Approval    | IOMNI       | indiv         | Login Acceptance |          |     |
#
#  #PassedLocal
## When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline:Validate "The application has been cancel confirmed" message in activity section of application manger for application of <ProductType> product type cancelled from cancelled application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user clicks on more action button
#    And user click on cancel Application
#    And User cancels an application from Post Approval Stage
#    When User is on cancelled application grid
#    And user search application on cancelled application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 1
#    And user makes action to confirm "Cancellation" the application on "Cancelled" application
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | Category | Key | FieldName | Message                                   |
#      | Post Approval    | IOMNI       | indiv         |          |     | Activity  | The application has been cancel confirmed |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate after performing <Activity> for <SubLoans> of <CommodityType> commodity type when user cancel application on <ApplicationStage> for <ProductType> application goes to Cancelled Application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    When user clicks on more action button
#    And user click on cancel Application
#    And User cancels an application from Post Approval Stage
#    When User is on cancelled application grid
#    Then Application should be present in Cancelled grid
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | SubLoans            | CommodityType | Category | Key |
#      | Post Approval    | IOMNI       | indiv         | Islamic Credit Card | Metal         |          |     |
#      | Post Approval    | IOMNI       | indiv         | Personal Finance    | Metal         |          |     |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##{Activity:["Bond Purchase", "Bond Transfer"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate on performing <Activity> for <SubLoans> of <CommodityType> commodity type when user cancel application on <ApplicationStage> for <ProductType> application goes to Cancelled Application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    When user clicks on more action button
#    And user click on cancel Application
#    And User cancels an application from Post Approval Stage
#    When User is on cancelled application grid
#    Then Application should be present in Cancelled grid
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | SubLoans            | CommodityType | Category | Key |
#      | Post Approval    | IOMNI       | indiv         | Islamic Credit Card | Bonds         |          |     |
#      | Post Approval    | IOMNI       | indiv         | Personal Finance    | Bonds         |          |     |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${CommodityType:["Metal"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${Activity:["Metal Purchase","Metal Sell"]
##${action:["Send Back for Processing to activity","Confirm Cancellation"]}
## ${ApplicantType:["indiv"]}
#  Scenario Outline:Validate user can perform <action> on application for <ProductType> which has been moved to cancelled Application grid from <ApplicationStage> with <SubLoans> sub loans of metal commodity type
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    When user clicks on more action button
#    And user click on cancel Application
#    And User cancels an application from Post Approval Stage
#    When User is on cancelled application grid
#    And user search application on cancelled application
#    Then "<action>" action should be present for select action field
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | SubLoans            | action                               | CommodityType | Category | Key |
#      | Post Approval    | IOMNI       | indiv         | Islamic Credit Card | Send Back for Processing to activity | Metal         |          |     |
#      | Post Approval    | IOMNI       | indiv         | Personal Finance    | Send Back for Processing to activity | Metal         |          |     |
#      | Post Approval    | IOMNI       | indiv         | Islamic Credit Card | Confirm Cancellation                 | Metal         |          |     |
#      | Post Approval    | IOMNI       | indiv         | Personal Finance    | Confirm Cancellation                 | Metal         |          |     |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${Activity:["Bond Purchase","Bond Transfer"]
##${action:["Send Back for Processing to activity","Confirm Cancellation"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Bonds"]}
#  Scenario Outline:Validate user can perform <action> on application for <ProductType> which has been moved to cancelled Application grid from <ApplicationStage> with <SubLoans> sub loans of bond commodity type
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
#    Then "<action>" action should be present for select action field
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | SubLoans            | CommodityType | action                               | Category | Key |
#      | Post Approval    | IOMNI       | indiv         | Islamic Credit Card | Bonds         | Send Back for Processing to activity |          |     |
#      | Post Approval    | IOMNI       | indiv         | Personal Finance    | Bonds         | Send Back for Processing to activity |          |     |
#      | Post Approval    | IOMNI       | indiv         | Islamic Credit Card | Bonds         | Confirm Cancellation                 |          |     |
#      | Post Approval    | IOMNI       | indiv         | Personal Finance    | Bonds         | Confirm Cancellation                 |          |     |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${Activity:["Metal Purchase"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Metal"]}
#  Scenario Outline: Validate metalCancellation service triggering message <SuccessMessage> for <SubLoans> sub loans in activity section of application manager on performing confirm cancellation from cancelled application grid on <ProductType> product type with <SubLoans> of commodity Metal
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
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | SubLoans            | CommodityType | Category | Key | Message                                                    | FieldName |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card | Metal         |          |     | Service execution SUCCESS for MetalCancellationService for | Activity  |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    | Metal         |          |     | Service execution SUCCESS for MetalCancellationService for | Activity  |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${Activity:["Metal Purchase"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Metal"]}
#  Scenario Outline: Validate application gets cancelled and activity with cancel confirmed message gets stamped in application manager once metalCancellation service has triggered on application of <ProductType> product type with <SubLoans> of commodity Metal at Cancelled application grid
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
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | SubLoans            | Message                                   | Category | Key | FieldName | CommodityType |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card | The application has been cancel confirmed |          |     | Activity  | Metal         |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    | The application has been cancel confirmed |          |     | Activity  | Metal         |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${Activity:["Metal Sell"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Metal"]}
#  Scenario Outline: Validate "The application has been cancel confirmed" message in activity section of application manger for application of <ProductType> with <SubLoans> of commodity metal from cancelled application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    When user clicks on more action button
#    And user click on cancel Application
#    And User cancels an application from Post Approval Stage
#    When User is on cancelled application grid
#    And user search application on cancelled application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 1
#    And user makes action to confirm "Cancellation" the application on "Cancelled" application
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | SubLoans            | Message                                   | Category | Key | FieldName | CommodityType |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card | The application has been cancel confirmed |          |     | Activity  | Metal         |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    | The application has been cancel confirmed |          |     | Activity  | Metal         |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${Activity:["Bond Purchase","Bond Transfer"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Bonds"]}
#  Scenario Outline: Validate bondCancellation service triggering message <SuccessMessage> for <SubLoans> sub loans in activity section of application manager on performing confirm cancellation from cancelled application grid on <ProductType> product type with <SubLoans> of commodity bond
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
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section with splitID
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | SubLoans            | Category | Key | FieldName | Message                                                   | CommodityType |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card |          |     | Activity  | Service execution SUCCESS for BondCancellationService for | Bonds         |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    |          |     | Activity  | Service execution SUCCESS for BondCancellationService for | Bonds         |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Bonds"]}
#  Scenario Outline: Validate application gets cancelled and activity with cancel confirmed message gets stamped in application manager once BondCancellation service has triggered on application of <ProductType> product type with <SubLoans> of commodity Bond at Cancelled application grid
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
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | SubLoans            | Category | Key | CommodityType | FieldName | Message                                   |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card |          |     | Bonds         | Activity  | The application has been cancel confirmed |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    |          |     | Bonds         | Activity  | The application has been cancel confirmed |
#
