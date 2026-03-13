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
#@OmniServiceTaskSuccessService
#
##FeatureID-CAS-233021
#Feature: CAS-233021 Service Task For Omni Finance
##Pre-Requisites---
##In this scenario we will validate success of service task of Omni Finance with sub loans IPF,ICC of commodity type Metal, Bond
##Commodity Allocation tab is added on Post Approval Stage
##4 tranches two for metal and two for bonds should be visible
#
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
#
#
#    Examples:
#      | ProductType | ApplicationStage | SubLoans            | CommodityType | ApplicantType | Category | Key |
#      | IOMNI       | Post Approval    | Islamic Credit Card | Metal         | indiv         |          |     |
#      | IOMNI       | Post Approval    | Islamic Credit Card | Bonds         | indiv         |          |     |
#      | IOMNI       | Post Approval    | Personal Finance    | Metal         | indiv         |          |     |
#      | IOMNI       | Post Approval    | Personal Finance    | Bonds         | indiv         |          |     |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate data in <FieldName> field in metal Purchase section for the <ProductType> product type with commodity Metal <SubLoan> sub loan on commodity Allocation tab at <ApplicationStage>
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens commodity allocation tab
#    And user clicks on plus icon of action column for "Metal" based "<SubLoans>"
#    Then data should be present on "<fieldName>" for metal purchase
#
#
#    Examples:
#      | ProductType | ApplicationStage | SubLoans            | ApplicantType | Category | Key | fieldName                  |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Amount                     |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Amount                     |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Metal Type                 |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Metal Type                 |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Price Per Unit             |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Price Per Unit             |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Transaction Quantity Unit  |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Transaction Quantity Unit  |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Quantity                   |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Quantity                   |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Contract Date              |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Contract Date              |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Certificate/Warrant Number |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Certificate/Warrant Number |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate data in <FieldName> field in metal Sell section for the <ProductType> product type with commodity Metal <SubLoan> sub loan on commodity Allocation tab at <ApplicationStage>
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens commodity allocation tab
#    And user clicks on plus icon of action column for "Metal" based "<SubLoans>"
#    Then data should be present on "<fieldName>" for metal sell
#
#
#    Examples:
#      | ProductType | ApplicationStage | SubLoans            | ApplicantType | Category | Key | fieldName                  |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Amount                     |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Amount                     |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Metal Type                 |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Metal Type                 |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Price Per unit             |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Price Per unit             |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Transaction Quantity Unit  |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Transaction Quantity Unit  |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Quantity                   |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Quantity                   |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Contract Date              |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Contract Date              |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Certificate/Warrant Number |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Certificate/Warrant Number |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate data in <FieldName> field in bond Purchase section for the <ProductType> product type with commodity bond <SubLoan> sub loan on commodity Allocation tab at <ApplicationStage>
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens commodity allocation tab
#    And user clicks on plus icon of action column for "Bonds" based "<SubLoans>"
#    Then data should be present on "<fieldName>" for bond purchase
#
#
#    Examples:
#      | ProductType | ApplicationStage | SubLoans            | ApplicantType | Category | Key | fieldName               |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Deal Reference Number   |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Deal Reference Number   |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Unit Number Start       |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Unit Number Start       |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Unit Number End         |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Unit Number End         |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Unit Price              |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Unit Price              |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Bond Number             |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Bond Number             |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Unit Issue Date         |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Unit Issue Date         |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Purchase Invoice Number |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Purchase Invoice Number |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Purchase Receipt Number |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Purchase Receipt Number |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Bond Expiry Date        |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Bond Expiry Date        |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Amount                  |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Amount                  |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Quantity                |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Quantity                |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${SubLoans:["Personal Finance","Islamic Credit Card"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate data in <FieldName> field in bond transfer section for the <ProductType> product type with commodity bond <SubLoan> sub loan on commodity Allocation tab at <ApplicationStage>
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens commodity allocation tab
#    And user clicks on plus icon of action column for "Bonds" based "<SubLoans>"
#    Then data should be present on "<fieldName>" for bond transfer
#
#
#    Examples:
#      | ProductType | ApplicationStage | SubLoans            | ApplicantType | Category | Key | fieldName             |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Deal Reference Number |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Deal Reference Number |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Unit Number Start     |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Unit Number Start     |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Unit Number End       |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Unit Number End       |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Bond Number           |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Bond Number           |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Bond Expiry Date      |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Bond Expiry Date      |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Amount                |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Amount                |
#      | IOMNI       | Post Approval    | Islamic Credit Card | indiv         |          |     | Quantity              |
#      | IOMNI       | Post Approval    | Personal Finance    | indiv         |          |     | Quantity              |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <SuccessMessage> of metal <MetalServices> service in activity section for application of <ProductType> product type with <SubLoans> sub loans of commodity metal
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens commodity allocation tab
#    And user opens activity section
#    And user opens "Activity" field on activity section
#    Then "<SuccessMessage>" should be visible in activity section with splitID
#
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SuccessMessage                                                       |
#      | IOMNI       | Post Approval    | indiv         |          |     | Service execution SUCCESS for MetalPurchaseService for               |
#      | IOMNI       | Post Approval    | indiv         |          |     | Service execution SUCCESS for MetalPurchase TradeDocumentService for |
#      | IOMNI       | Post Approval    | indiv         |          |     | Service execution SUCCESS for MetalPurchase GetDocumentService for   |
#      | IOMNI       | Post Approval    | indiv         |          |     | Service execution SUCCESS for MetalSellService for                   |
#      | IOMNI       | Post Approval    | indiv         |          |     | Service execution SUCCESS for MetalSell TradeDocumentService for     |
#      | IOMNI       | Post Approval    | indiv         |          |     | Service execution SUCCESS for MetalSell GetDocumentService for       |
#
#  #PassedLocal
##${ProductType:["IOMNI"]}
##${ApplicationStage:["Post Approval"]}
##${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <SuccessMessage> of bond <BondServices> service in activity section for application of <ProductType> product type with <SubLoans> sub loans of commodity bond
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens commodity allocation tab
#    And user opens activity section
#    And user opens "Activity" field on activity section
#    Then "<SuccessMessage>" should be visible in activity section with splitID
#
#
#    Examples:
#      | ProductType | ApplicationStage | ApplicantType | Category | Key | SuccessMessage                                        |
#      | IOMNI       | Post Approval    | indiv         |          |     | Service execution SUCCESS for BondPurchaseService for |
#      | IOMNI       | Post Approval    | indiv         |          |     | Service execution SUCCESS for BondTransferService for |
