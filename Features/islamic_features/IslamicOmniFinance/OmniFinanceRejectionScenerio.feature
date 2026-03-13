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
#@CommodityRejectionScenario
#
##FeatureID-CAS-233021
#Feature: CAS_233021 Rejection Scenario on Commodity Allocation Tab at Post Approval Stage
#
##  Pre-Requisites---
## Validate Rejection scenario for IOMNI application with sub loans IPF,ICC of commodity type Metal, Bond
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
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens commodity allocation tab
#    Then tranche for commodity type "<CommodityType>" for sub product type "<SubLoans>" based product should be present
#
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
#  Scenario Outline: Validate Reject Application option appears in more action on <ApplicationStage> for <ProductType> application
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user clicks on more action button
#    Then Reject Application option should be present
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | Category | Key |
#      | Post Approval    | IOMNI       | indiv         |          |     |
#
#  #PassedLocal
## When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate on performing Reject application action on <ApplicationStage> for <ProductType> application move to Rejected Application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    Then Application should be present in Rejected application grid
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
#  Scenario Outline:Validate user can perform <action> action  on application of <ProductType> product type present on Rejected Application Grid rejected from <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    And user search application on rejected application
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
#  Scenario Outline:Validate "The application has been Reject confirmed" message in activity section of application manger for application of <ProductType> product type rejected from <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    And user search application on rejected application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 2
#    And user makes action to confirm "Cancellation" the application on "Rejected" application
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | Category | Key | FieldName | Message                                   |
#      | Post Approval    | IOMNI       | indiv         |          |     | Activity  | The application has been Reject confirmed |
#
#  #PassedLocal
## When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
##${stages:["Credit Approval", "Recommendation" ,"kYC","Login Acceptance"]}
#  Scenario Outline:Validate application gets send back to applicable stage <stages>  on  performing send back action on application of <ProductType> product type Rejected from <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    And user search application on rejected application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 0
#    And user makes action to confirm "Send Back" the application on "Rejected" application
#    Then application is "Rejected" based on the action taken on Review application
#
#   ## Then application gets send back to applicable stage "<stages>"
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | stages           | Category | Key |
#      | Post Approval    | IOMNI       | indiv         | Login Acceptance |          |     |
#      | Post Approval    | IOMNI       | indiv         | Recommendation   |          |     |
#      | Post Approval    | IOMNI       | indiv         | kYC              |          |     |
#      | Post Approval    | IOMNI       | indiv         | Credit Approval  |          |     |
#
#  #PassedLocal
## When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate "The application has been Reject confirmed" message in activity section of application manger for application of <ProductType> product type Rejected from Rejected application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    And user search application on rejected application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 2
#    And user makes action to confirm "Cancellation" the application on "Rejected" application
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | Category | Key | FieldName | Message                                   |
#      | Post Approval    | IOMNI       | indiv         |          |     | Activity  | The application has been Reject confirmed |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##{Activity:["Metal Purchase", "Metal Sell"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate after performing <Activity> for <SubLoans> of <CommodityType> commodity type when user Reject application on <ApplicationStage> for <ProductType> application goes to Rejected Application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    Then Application should be present in Rejected application grid
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
#  Scenario Outline: Validate on performing <Activity> for <SubLoans> of <CommodityType> commodity type when user Reject application on <ApplicationStage> for <ProductType> application goes to Rejected Application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    And user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    Then Application should be present in Rejected application grid
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | SubLoans            | CommodityType | Category | Key |
#      | Post Approval    | IOMNI       | indiv         | Islamic Credit Card | Bonds         |          |     |
#      | Post Approval    | IOMNI       | indiv         | Personal Finance    | Bonds         |          |     |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${Activity:["Metal Purchase","Metal Sell"]}
## ${action:["Send Back for Processing to activity","Confirm Cancellation"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Metal"]}
#  Scenario Outline:Validate user can perform <action> on application for <ProductType> which has been moved to Rejected Application grid from <ApplicationStage> with <SubLoans> sub loans of metal commodity type
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    And user search application on rejected application
#    Then "<action>" action should be present for select action field
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | SubLoans            | action                               | Category | Key | CommodityType |
#      | Post Approval    | IOMNI       | indiv         | Islamic Credit Card | Send Back for Processing to activity |          |     | Metal         |
#      | Post Approval    | IOMNI       | indiv         | Personal Finance    | Send Back for Processing to activity |          |     | Metal         |
#      | Post Approval    | IOMNI       | indiv         | Islamic Credit Card | Confirm Cancellation                 |          |     | Metal         |
#      | Post Approval    | IOMNI       | indiv         | Personal Finance    | Confirm Cancellation                 |          |     | Metal         |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${Activity:["Bond Purchase","Bond Transfer"]
##${action:["Send back", "Confirm Rejection"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Bonds"]}
#  Scenario Outline:Validate user can perform <action> on application for <ProductType> which has been moved to Rejected Application grid from <ApplicationStage> with <SubLoans> sub loans of bond commodity type
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    And user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    And user search application on rejected application
#    Then "<action>" action should be present for select action field
#
#    Examples:
#      | ApplicationStage | ProductType | ApplicantType | SubLoans            | action            | Category | Key | CommodityType |
#      | Post Approval    | IOMNI       | indiv         | Islamic Credit Card | Confirm Rejection |          |     | Bonds         |
#      | Post Approval    | IOMNI       | indiv         | Personal Finance    | Confirm Rejection |          |     | Bonds         |
#      | Post Approval    | IOMNI       | indiv         | Islamic Credit Card | Send back         |          |     | Bonds         |
#      | Post Approval    | IOMNI       | indiv         | Personal Finance    | Send back         |          |     | Bonds         |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${Activity:["Metal Purchase"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Metal"]}
#  Scenario Outline: Validate metalCancellation service triggering message <SuccessMessage> for <SubLoans> sub loans in activity section of application manager on performing confirm rejection from Rejected application grid on <ProductType> product type with <SubLoans> of commodity Metal
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on metal purchase button
#    And user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    And user search application on rejected application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 2
#    And user makes action to confirm "Cancellation" the application on "Rejected" application
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section with splitID
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | SubLoans            | FieldName | CommodityType | Category | Key | Message                                                    |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card | Activity  | Metal         |          |     | Service execution SUCCESS for MetalCancellationService for |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    | Activity  | Metal         |          |     | Service execution SUCCESS for MetalCancellationService for |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${Activity:["Metal Purchase"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Metal"]}
#  Scenario Outline: Validate application gets Rejected and activity with Reject confirmed message gets stamped in application manager once metalCancellation service has triggered on application of <ProductType> product type with <SubLoans> of commodity Metal at Rejected application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on metal purchase button
#    And user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    And user search application on rejected application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 2
#    And user makes action to confirm "Cancellation" the application on "Rejected" application
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | SubLoans            | FieldName | CommodityType | Category | Key | Message                                   |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card | Activity  | Metal         |          |     | The application has been Reject confirmed |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    | Activity  | Metal         |          |     | The application has been Reject confirmed |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${Activity:["Metal Sell"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Metal"]}
#  Scenario Outline: Validate "The application has been Reject confirmed" message in activity section of application manger for application of <ProductType> with <SubLoans> of commodity metal from Rejected application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    And user search application on rejected application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 2
#    And user makes action to confirm "Cancellation" the application on "Rejected" application
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | SubLoans            | FieldName | CommodityType | Category | Key | Message                                   |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card | Activity  | Metal         |          |     | The application has been Reject confirmed |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    | Activity  | Metal         |          |     | The application has been Reject confirmed |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${Activity:["Bond Purchase","Bond Transfer"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Bonds"]}
#  Scenario Outline: Validate bondCancellation service triggering message <SuccessMessage> for <SubLoans> sub loans in activity section of application manager on performing confirm rejection from Rejected application grid on <ProductType> product type with <SubLoans> of commodity bond
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    And user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    And user search application on rejected application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 2
#    And user makes action to confirm "Cancellation" the application on "Rejected" application
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section with splitID
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | SubLoans            | FieldName | CommodityType | Category | Key | Message                                                   |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card | Activity  | Bonds         |          |     | Service execution SUCCESS for BondCancellationService for |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    | Activity  | Bonds         |          |     | Service execution SUCCESS for BondCancellationService for |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${Activity:["Bond Purchase","Bond Transfer"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Bonds"]}
#  Scenario Outline: Validate application gets Rejected and activity with Reject confirmed message gets stamped in application manager once BondCancellation service has triggered on application of <ProductType> product type with <SubLoans> of commodity Bond at Rejected application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<SubLoans>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    And user clicks on more action button
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_application" and row 2
#    And user rejects application
#    And User is on Rejected application grid
#    And user search application on rejected application
#    And user reads data from the excel file "omni.xlsx" under sheet "reject_cancel" and row 2
#    And user makes action to confirm "Cancellation" the application on "Rejected" application
#    And user navigates to Applications manager
#    And user search application in Application Manager
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "<Message>" should be visible in activity section with splitID
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | SubLoans            | FieldName | CommodityType | Category | Key | Message                                   |
#      | IOMNI       | Post Approval    | indiv         | Islamic Credit Card | Activity  | Bonds         |          |     | The application has been Reject confirmed |
#      | IOMNI       | Post Approval    | indiv         | Personal Finance    | Activity  | Bonds         |          |     | The application has been Reject confirmed |
