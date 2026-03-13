# Commented by Raja.Pallela on 13th August as these feature files should not be included in CAS ATDD Suite scenarios count#@AuthoredBy-anshima.tiwari
#@ReviewedBy-Nimisha.Kulshrestha
#@ImplementedBy-hrushikesh.patra
#@TechReviewedBy-
#@DevTrack
#@Islamic
#@Epic-OmniFinance
##FeatureID:CAS-234564
#
#@Perishable
#@Release
#@CommodityAllocationTabSendBack
#Feature: CAS-234564-Handling And Send back Scenario for Commodity Allocation tab
#
##  Pre-Requisites---
##  In this feature we will validate all these screen level verification with User who is having CAS_ADMIN Authority
#
#  Background:
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
##${CommodityType:["Metal","Bonds"]}
#  Scenario Outline: Validate commodity allocation tab at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    Then tranche for commodity type "<CommodityType>" for sub product type "<SubProductType>" based product should be present
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | SubProductType      |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | metal         | Personal Finance    |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | bonds         | Personal Finance    |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | bonds         | Islamic Credit Card |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal","Bond"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate status new commodity at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user check status "" for "<CommodityType>" based "<subProductType>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance |
#
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> on move to next stage at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType> without executing commodity based services
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on move to next stage for error message validation
#    Then proper validation message "<Error>" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | Error                                                     |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Please allocate commodity before proceeding to next stage |
#
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate status after metal cancellation successful at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on Metal Cancel button
#    And user check status "" for "<CommodityType>" based "<subProductType>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate status after bonds cancel fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And Validation should come that Bonds have expired
#    And user clicks on cancel bonds button
#    Then user check status "Cancellation Failed" for "<CommodityType>" based "<subProductType>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance |
#
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate status after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user generate certificates for metal purchase
#    When user check status "Purchase Successful" for "<CommodityType>" based "<subProductType>"
#    #Then "Purchase Successful" status should be present in status column
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance |
#
#  #Passed
#  #For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate status after metal sell at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user generate certificates for metal purchase
#    And user generate certificates for metal sell
#    Then user check status "Sell Successful" for "<CommodityType>" based "<subProductType>"
#    #Then "Sell Successful" status should be present in status column
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate status after metal purchase fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button for failure
#    Then user check status "Purchase Failed" for "<CommodityType>" based "<subProductType>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance |
#
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate status after metal sell fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    Then user check status "Sell Failed" for "<CommodityType>" based "<subProductType>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance |
#
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate status after metal cancel fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on Metal Cancel button
#    Then user check status "Cancellation Failed" for "<CommodityType>" based "<subProductType>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate status after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    Then user check status "Purchase Successful" for "<CommodityType>" based "<subProductType>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance |
#
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate status after bonds transfer at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    Then user check status "Transfer Successful" for "<CommodityType>" based "<subProductType>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate status after bonds purchase fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase for failure
#    Then user check status "Purchase Failed" for "<CommodityType>" based "<subProductType>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate status after bonds transfer fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer for failure
#    Then user check status "Transfer Failed" for "<CommodityType>" based "<subProductType>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance |
#
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> for bonds on move to next stage at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user generate certificates for metal purchase
#    And user generate certificates for metal sell
#    And user clicks on move to next stage
#    Then proper validation message "<Error>" should be visible
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | Error                                                     | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Please allocate commodity before proceeding to next stage | metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${CommodityType:["Bonds"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> for bonds purchase on move to next stage at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase for failure
#    Then proper validation message "<Error>" should be visible
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | Error                                | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Default bank account is required for | Bonds         | Personal Finance |
#
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${CommodityType:["Bonds"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> for metal on move to next stage at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    When user clicks on move to next stage for error message validation
#    Then proper validation message "<Error>" should be visible
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | Error                                                     | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Please allocate commodity before proceeding to next stage | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> on move to next stage before executing metal sell service at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user generate certificates for metal purchase
#    When user clicks on move to next stage for error message validation
#    Then proper validation message "<Error>" should be visible
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | Error                                                                | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Commodity Sell/ Transfer is required before proceeding to next Stage | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${ApplicationStage:["Post Approval"]}
##${CommodityType:["Bonds"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> on move to next stage before executing bonds transfer service at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    When user clicks on move to next stage for error message validation
#    Then proper validation message "<Error>" should be visible
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | Error                                                               | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Commodity Sell/Transfer is required before proceeding to next Stage | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${ApplicationStage:["Post Approval"]}
##${CommodityType:["Metal"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> on move to next stage for metal document generation service after metal services executed at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    When user clicks on move to next stage for error message validation
#    Then proper validation message "<Error>" should be visible
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | Error                                                                               | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Generate Certificate for Metal Product is mandatory before proceeding to next stage | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate additional data for metal purchase service execution with generate documents at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user generate certificates for metal purchase
#    And user click on "<fieldName>" button
#    Then additional details window is displayed for "<fieldName>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | fieldName             | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | view purchase details | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate additional data for metal sell service execution with generate documents at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user generate certificates for metal purchase
#    And user generate certificates for metal sell
#    And user click on "<fieldName>" button
#    Then additional details window is displayed for "<fieldName>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | fieldName         | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | view sell details | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate send back option in more actions at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And User clicks on More Actions button
#    Then Send back option will be visible in more actions
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     |
#
#  #Passed
##For commodity metals and bonds are in Service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> on bonds expire at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType> move to next stage
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And Validation should come that Bonds have expired
#    And user clicks on move to next stage for error message validation
#    Then proper validation message "<Error>" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | Error             | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds expired for | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Perform metal sell for newly metal based sub product type at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user generate certificates for metal purchase
#    And user clicks on metal sell button
#    Then proper validation message "MetalSellService executed successfully." should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Perform bonds transfer for newly added bonds based sub product type at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    When user click on initiate bond transfer
#    Then proper validation message "BondTransferService is successfully executed." should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance |
#
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate purchase transfer cancellation after bonds transfer at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    Then "<CommodityType>" buttons should be in disabled mode
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate purchase sell cancellation after metal sell at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    Then "<CommodityType>" buttons should be in disabled mode
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance |
#
#  #Pass
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Block changes to applicant or audit parameters after metal sell executed at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And User clicks on More Actions button
#    And user clicks on send back button
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on applicant information tab
#    And user clicks on applicant information
#    Then audit parameters "<AuditParameters>" fields should be present in disable mode
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | AuditParameters                                                 | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | CustomerFirstName,CustomerLastName,CustomerFullName,CustomerDOB | Metal         | Personal Finance |
#
#  #Pass
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Block changes to applicant or audit parameters after bonds transfer executed at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    And User clicks on More Actions button
#    And user clicks on send back button
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on applicant information tab
#    And user clicks on applicant information
#    Then audit parameters "<AuditParameters>" fields should be present in disable mode
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | AuditParameters                                                   | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | CustomerFirstName,CustomerLastName,CustomerMiddleName,CustomerDOB | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate activity after bonds purchase fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase for failure
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution FAILED for BondPurchaseService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | FieldName | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Activity  | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate activity after bonds purchase success at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution SUCCESS for BondPurchaseService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | FieldName | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Activity  | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate activity after bonds cancel fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user clicks on cancel bonds button
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution FAILED for BondCancellationService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | FieldName |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance | Activity  |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate activity after bonds cancel success at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user clicks on cancel bonds button
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution SUCCESS for BondCancellationService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | FieldName |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance | Activity  |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate activity after bonds transfer fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer for failure
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution FAILED for BondTransferService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | FieldName |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance | Activity  |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate activity after bonds transfer success at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution SUCCESS for BondTransferService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | FieldName |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance | Activity  |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate activity messages for metal purchase success services at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution SUCCESS for MetalPurchaseService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | FieldName |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance | Activity  |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate activity messages for metal purchase fail services at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button for failure
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution FAILED for MetalPurchaseService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | FieldName |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance | Activity  |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate activity messages for metal purchase generate document success services at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user generate certificates for metal purchase
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution SUCCESS for MetalPurchase GetDocumentService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | FieldName |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance | Activity  |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate activity messages for metal sell success services at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution SUCCESS for MetalSellService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | FieldName |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance | Activity  |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate activity messages for metal sell fail services at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution FAILED for MetalSellService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | FieldName |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance | Activity  |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate activity messages for metal sell generate document success services at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user generate certificates for metal purchase
#    And user clicks on metal sell button
#    And user generate certificates for metal sell
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution SUCCESS for MetalSell GetDocumentService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | FieldName |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance | Activity  |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate view additional fields for bond purchase service execution at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user opens additional details section for "<fieldName>" field
#    Then user should be able to view additional section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | fieldName       |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance | Bond Initiation |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate view additional fields for bond transfer service execution at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    And user opens additional details section for "<fieldName>" field
#    Then additional details window is displayed for "<fieldName>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | fieldName     |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance | Bond Transfer |
#
#  #Pass
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> for view additional fields for bond purchase service execution if additional fields are not configured at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user opens additional details section for "<fieldName>" field
#    Then proper validation message "<Error>" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | fieldName       | Error                            |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance | Bond Initiation | Additional Fields not configured |
#
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate send back option in more actions after bonds purchase transfer service execution with generate documents at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When User clicks on More Actions button
#    Then send back option should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     |
#
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate send back stages at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And User clicks on More Actions button
#    And user clicks on send back button
#    Then "<stages>" stage should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | stages       |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details |
##      | IOMNI       | Post Approval    | indiv         | IOMNI1 |     | KYC             |
##      | IOMNI       | Post Approval    | indiv         | IOMNI1 |     | Recommendation  |
##      | IOMNI       | Post Approval    | indiv         | IOMNI1 |     | Credit Approval |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Block deletion for sub product type after bonds transfer executed at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    Then delete button should not be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: deletion for sub product type after bonds transfer executed at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user click on initiate bond transfer
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    Then delete button should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Block deletion for sub product type after metal sell executed at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    Then delete button should not be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: deletion for sub product type after metal sell executed at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    Then delete button should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
##${SendBackStage:["Lead Details","DDE"]}
#  Scenario Outline: Validate delete pop up alert message for deletion of sub product type at <SendBackStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    When user clicks on delete button
#    Then alert pop up message "<Message>" is visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | CommodityType | subProductType   | Message                                                                                                                                                                                      |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | Bonds         | Personal Finance | Linked Collateral(s), VAP(s), Commodity Trade (Purchase) and other details with product type(TRAN_APPL00074026_002) will be deleted/delink. Are you sure you want to delete product mapping? |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Delete metal based sub product type to add new metal based sub product type after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    And user clicks on delete button
#    And alert pop up message "<Message>" is visible
#    When user clicks YES button on alert box
#    Then Cancel Service should get triggered
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | CommodityType | subProductType   | Message                                                                                                                                                                                      |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | Metal         | Personal Finance | Linked Collateral(s), VAP(s), Commodity Trade (Purchase) and other details with product type(TRAN_APPL00074026_002) will be deleted/delink. Are you sure you want to delete product mapping? |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Delete bonds based sub product type to add new bonds based sub product type after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    And user clicks on delete button
#    And alert pop up message "<Message>" is visible
#    When user clicks YES button on alert box
#    Then Cancel Service should get triggered
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | CommodityType | subProductType   | Message                                                                                                                                                                                      |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | Bonds         | Personal Finance | Linked Collateral(s), VAP(s), Commodity Trade (Purchase) and other details with product type(TRAN_APPL00074026_002) will be deleted/delink. Are you sure you want to delete product mapping? |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate metal cancellation service failure for sub product type to add new metal based sub product type after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    And user clicks on delete button
#    When user clicks YES button on alert box
#    Then proper validation message "Error occurred in Metal Cancellation service." should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate metal cancellation service success for sub product type to add new metal based sub product type after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    And user clicks on delete button
#    And user clicks YES button on alert box
#    Then proper validation message "Commodity cancel successful for" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate bonds cancellation service failure for sub product type to add new bonds based sub product type after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    And user clicks on delete button
#    And user clicks YES button on alert box
#    Then proper validation message "Error occurred in Bond Cancellation service." should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate bonds cancellation service success for sub product type to add new bonds based sub product type after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    And user clicks on delete button
#    And user clicks YES button on alert box
#    Then proper validation message "Commodity cancel successful for" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate metal cancellation service failure message in activity for sub product type to add new metal based sub product type after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    And user clicks on delete button
#    And user clicks YES button on alert box
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution FAILED for MetalCancellationService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | FieldName | SendBackStage | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Activity  | Lead Details  | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate metal cancellation service success message in activity for sub product type to add new metal based sub product type after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    And user clicks on delete button
#    And user clicks YES button on alert box
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution SUCCESS for MetalCancellationService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | FieldName | SendBackStage | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Activity  | Lead Details  | Metal         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate bonds cancellation service failure message in activity for sub product type to add new bonds based sub product type after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    And user clicks on delete button
#    And user clicks YES button on alert box
#    And Cancel Service should get triggered
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution FAILED for BondCancellationService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | FieldName | SendBackStage | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Activity  | Lead Details  | Bonds         | Personal Finance |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate bonds cancellation service success message in activity for sub product type to add new bonds based sub product type after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    And user clicks on delete button
#    And user clicks YES button on alert box
#    And user opens activity section
#    And user opens "<FieldName>" field on activity section
#    Then "Service execution SUCCESS for BondCancellationService" should be visible in activity section
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | FieldName | SendBackStage | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Activity  | Lead Details  | Bonds         | Personal Finance |
#
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> message at commodity allocation tab for changed applicant or audit details without metal cancellation at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user changes the audit parameters "<AuditParameters>" for above tranche on omni detail grid
#    And user moves application from "<SendBackStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" stage without opening it
#    And user opens commodity allocation tab
#    Then proper validation message "<AuditMessage>" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | SendBackStage | AuditParameters | AuditMessage                                                       |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance | Lead Details  | SanctionAmount  | Audit Parameter changed, Please perform Commodity cancellation for |
#
#
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> message on Commodity Allocation tab for changed applicant or audit details after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user changes the audit parameters "<AuditParameters>" for above tranche on omni detail grid
#    And user moves application from "<SendBackStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" stage without opening it
#    And user opens commodity allocation tab
#    Then proper validation message "<AuditMessage>" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | SendBackStage | AuditParameters | AuditMessage                                                       |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance | Lead Details  | SanctionAmount  | Audit Parameter changed, Please perform Commodity cancellation for |
#
#
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicationStage:["Post Approval"]}
##${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> message at bonds allocation for changed applicant or audit details without bonds cancellation at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user changes the audit parameters "<AuditParameters>" for above tranche on omni detail grid
#    And user moves application from "<SendBackStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" stage without opening it
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    Then proper validation message "<AuditMessage>" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | SendBackStage | AuditParameters | AuditMessage                                                             |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance | Lead Details  | SanctionAmount  | (Audit Parameter) for sub loan changed Please Perform bonds cancellation |
#
#
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]}
##${ApplicantType:["indiv"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicationStage:["Post Approval"]}
#  Scenario Outline: Validate <Error> message for changed applicant or audit details after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user changes the audit parameters "<AuditParameters>" for above tranche on omni detail grid
#    And user moves application from "<SendBackStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" stage without opening it
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    Then proper validation message "<AuditMessage>" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | SendBackStage | AuditParameters | AuditMessage                                                             |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance | Lead Details  | SanctionAmount  | (Audit Parameter) for sub loan changed Please Perform bonds cancellation |
#
#  #Pass
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
##${SendBackStage:["Lead Details","DDE"]}
#  Scenario Outline: Validate non commodity based sub product type in commodity allocation tab at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    And user clicks on delete button
#    And user clicks YES button on alert box
#    And user reads data from the excel file "omni.xlsx" under sheet "non_commodity_sp" and row 0
#    And user adds a new sub product type
#    And user saves the sourcing details
#    And user moves application from "<SendBackStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" stage without opening it
#    Then commodity allocation tab should not visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage | CommodityType | subProductType   |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  | Metal         | Personal Finance |
#
#  #Pass
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
##${SendBackStage:["Lead Details","DDE"]}
#  Scenario Outline:  Add a new sub product type of commodity <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user reads data from the excel file "more_actions.xlsx" under sheet "send_back" and row 3
#    And user send back above application to "<SendBackStage>" stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<SendBackStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on sourcing details page of "<SendBackStage>"
#    And user opens omni product details grid
#    And user reads data from the excel file "omni.xlsx" under sheet "commodity_sp" and row 0
#    And user adds a new sub product type
#    And user saves the sourcing details
#    And user moves application from "<SendBackStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" stage without opening it
#    When user opens commodity allocation tab
#    Then Added Tranche should be in the grid
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SendBackStage |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Lead Details  |
#
## end here
#
#  #Passed
#  #For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> message at commodity allocation tab for changed applicant or audit details without metal cancellation on repayment parameter at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on sourcing details page of "<ApplicationStage>"
#    And user clicks on repayment parameters tab
#    And user clicks on edit repayment button for omni
#    And user changes the audit parameters "<AuditParameters>" for above tranche at "<ApplicationStage>"
#    And user opens commodity allocation tab
#    Then proper validation message "<AuditMessage>" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | AuditParameters | AuditMessage                                                       |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance | Sanction Amount | Audit Parameter changed, Please perform Commodity cancellation for |
#
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${ApplicationStage:["Post Approval"]}
##${SendBackStage:["Lead Details","DDE"]}
##${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> message on Commodity Allocation tab for changed applicant or audit details after bonds purchase on repayment parameter at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user clicks on sourcing details page of "<ApplicationStage>"
#    And user clicks on repayment parameters tab
#    And user clicks on edit repayment button for omni
#    And user changes the audit parameters "<AuditParameters>" for above tranche at "<ApplicationStage>"
#    And user opens commodity allocation tab
#    Then proper validation message "<AuditMessage>" should be visible
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | AuditParameters | AuditMessage                                                       |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance | Sanction Amount | Audit Parameter changed, Please perform Commodity cancellation for |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Bonds"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicationStage:["Post Approval"]}
##${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <Error> message at bonds allocation for changed applicant or audit details without bonds cancellation on repayment parameter at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on initiate bond purchase
#    And user clicks on sourcing details page of "<ApplicationStage>"
#    And user clicks on repayment parameters tab
#    And user clicks on edit repayment button for omni
#    And user changes the audit parameters "<AuditParameters>" for above tranche at "<ApplicationStage>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    Then proper validation message "<AuditMessage>" should be visible for "<AuditParameters>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | AuditParameters | AuditMessage                                                            |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Bonds         | Personal Finance | Sanction Amount | Customer Data [audit_data] has been changed. Perform bond cancellation. |
#
#  #Passed
##For commodity metals and bonds are in service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["Personal Finance","Islamic Credit Card"]}
##${CommodityType:["Metal"]}
##${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]}
##${ApplicantType:["indiv"]}
##${SendBackStage:["Lead Details","DDE"]}
##${ApplicationStage:["Post Approval"]}
#  Scenario Outline: Validate <Error> message for changed applicant or audit details after metal purchase on repayment parameter at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    And user clicks on metal purchase button
#    And user clicks on sourcing details page of "<ApplicationStage>"
#    And user clicks on repayment parameters tab
#    And user clicks on edit repayment button for omni
#    And user changes the audit parameters "<AuditParameters>" for above tranche at "<ApplicationStage>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for "<CommodityType>" based "<subProductType>"
#    Then proper validation message "<AuditMessage>" should be visible for "<AuditParameters>"
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | CommodityType | subProductType   | AuditParameters | AuditMessage                                                             |
#      | IOMNI       | Post Approval    | indiv         | IOMNI1   |     | Metal         | Personal Finance | Sanction Amount | Customer Data [audit_data] has been changed. Perform metal cancellation. |
