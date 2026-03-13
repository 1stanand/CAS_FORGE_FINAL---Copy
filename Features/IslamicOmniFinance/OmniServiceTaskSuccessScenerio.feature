##commented by Anshu on 06-AUg-25 as these files already merged in Build Branch
#@AuthoredBy-himanshi.sharma
#@ReviewedBy-
#@ImplementedBy-
#@TechReviewedBy-
#  #FeatureID-CAS-233021
#Feature: CAS-233021 Service Task For Omni Finance
##  Pre-Requisites---
## In this scenario we will validate success of service task of Omni Finance with sub loans IPF,ICC of commodity type Metal, Bond
## Commodity Allocation tab is added on Post Approval Stage
#   # 4 tranches two for metal and two for bonds should be visible
#  Background:
#    Given user is on SSO login page
#    And user logged in cas with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
#  #${ProductType:["IOMNI"]}
# #${CommodityType:["Metal","Bonds"]
# #${ApplicationStage:["Post Approval"]}
#  #{SubLoans:["ICC","IPF"]}
#  #${ApplicantType:{"indiv"}]
#   # 4 tranches two for metal and two for bonds should be visible
#  Scenario Outline: Validate commodity allocation tab at <ApplicationStage> for <ProductType> with <SubLoans> sub loans of <CommodityType> commodity type
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user open commodity allocation tab
#    Then tranche for commodity type "<CommodityType>" for sub product type "<SubLoans>" based product should be present
#    Examples:
#      | ProductType   | ApplicationStage   | SubLoans   | CommodityType   | ApplicantType   | Category | Key |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <CommodityType> | <ApplicantType> |          |     |
#
#  #${ProductType:["IOMNI"]}
#  #${ApplicationStage:["Post Approval"]
#  #${SubLoans:["ICC","IPF"]}
#  #${ApplicantType:["indiv"]}
#  Scenario Outline: Validate data in <FieldName> field in metal Purchase section for the <ProductType> product type with commodity Metal <SubLoan> sub loan on commodity Allocation tab at <ApplicationStage>
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user is on commodity allocation tab at "<ApplicationStage>"
#    And user clicks on add icon in action column for "<SubLoans>" of commodity metal
#    Then data should appear in "<fieldName>" field under metal Purchase
#    Examples:
#      | ProductType   | ApplicationStage   | SubLoans   | ApplicantType   | Category | Key | fieldName                  |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Amount                     |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Metal Type                 |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Price Per Unit             |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Transaction Quantity Unit  |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Quantity                   |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Contract Date              |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Certificate/Warrant Number |
#
# #${ProductType:["IOMNI"]}
#  #${ApplicationStage:["Post Approval"]
#  #${SubLoans:["ICC","IPF"]}
#  #${ApplicantType:["indiv"]}
#  Scenario Outline: Validate data in <FieldName> field in metal Sell section for the <ProductType> product type with commodity Metal <SubLoan> sub loan on commodity Allocation tab at <ApplicationStage>
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user is on commodity allocation tab at "<ApplicationStage>"
#    And user clicks on add icon in action column for "<SubLoans>" of commodity metal
#    Then data should appear in "<fieldName>" field under metal Sell
#    Examples:
#      | ProductType   | ApplicationStage   | SubLoans   | ApplicantType   | Category | Key | fieldName                  |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Amount                     |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Metal Type                 |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Price Per unit             |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Transaction Quantity Unit  |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Quantity                   |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Contract Date              |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Certificate/Warrant Number |
#
#   #${ProductType:["IOMNI"]}
#  #${ApplicationStage:["Post Approval"]
#  #${SubLoans:["ICC","IPF"]}
#  #${ApplicantType:["indiv"]}
#  Scenario Outline: Validate data in <FieldName> field in bond Purchase section for the <ProductType> product type with commodity bond <SubLoan> sub loan on commodity Allocation tab at <ApplicationStage>
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user is on commodity allocation tab at "<ApplicationStage>"
#    And user clicks on add icon in action column for "<SubLoans>" of commodity bond
#    Then data should appear in "<fieldName>" field under bond Purchase
#    Examples:
#      | ProductType   | ApplicationStage   | SubLoans   | ApplicantType   | Category | Key | fieldName               |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Deal Reference Number   |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Unit Number Start       |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Unit Number End         |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Unit Price              |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Bond Number             |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Unit Issue Date         |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Purchase Invoice Number |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Purchase Receipt Number |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Bond Expiry Date        |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Amount                  |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Quantity                |
#
#      #${ProductType:["IOMNI"]}
#  #${ApplicationStage:["Post Approval"]
#  #${SubLoans:["ICC","IPF"]}
#  #${ApplicantType:["indiv"]}
#  Scenario Outline: Validate data in <FieldName> field in bond transfer section for the <ProductType> product type with commodity bond <SubLoan> sub loan on commodity Allocation tab at <ApplicationStage>
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user is on commodity allocation tab at "<ApplicationStage>"
#    And user clicks on add icon in action column for "<SubLoans>" of commodity bond
#    Then data should appear in "<fieldName>" field under bond transfer
#    Examples:
#      | ProductType   | ApplicationStage   | SubLoans   | ApplicantType   | Category | Key | fieldName             |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Deal Reference Number |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Unit Number Start     |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Unit Number End       |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Bond Number           |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Bond Expiry Date      |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Amount                |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | Quantity              |
#
# #${ProductType:["IOMNI"]}
#  #${ApplicationStage:["Post Approval"]
#  #${SubLoans:["ICC","IPF"]}
#  #${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <SuccessMessage> of metal <MetalServices> service in activity section for application of <ProductType> product type with <SubLoans> sub loans of commodity metal
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user is on commodity allocation tab
#    And user views activity section on the tab
#    Then user validates "<SuccessMessage>" along with tranche id for "<MetalServices>" service for "<SubLoans>" sub loan gets logged in activity section
#    Examples:
#      | ProductType   | ApplicationStage   | SubLoans   | ApplicantType   | Category | Key | MetalServices                   | SuccessMessage                               |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | metalPurchase                   | Metal Purchase service executed successfully |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | tradeDocument for metalPurchase | Trade Document service executed successfully |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | getDocument for Purchase        | Get Document service executed successfully   |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | metalSell                       | Metal Sell service executed successfully     |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | tradeDocument for Sell          | Trade Document service executed successfully |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | getDocument for Sell            | Get Document service executed successfully   |
#
##${ProductType:["IOMNI"]}
#  #${ApplicationStage:["Post Approval"]
#  #${SubLoans:["ICC","IPF"]}
#  #${ApplicantType:["indiv"]}
#  Scenario Outline: Validate <SuccessMessage> of bond <BondServices> service in activity section for application of <ProductType> product type with <SubLoans> sub loans of commodity bond
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user is on commodity allocation tab
#    And user views activity section on the tab
#    Then user validates "<SuccessMessage>" along with tranche id for "<BondServices>" service for "<SubLoans>" sub loan gets logged in activity section
#    Examples:
#      | ProductType   | ApplicationStage   | SubLoans   | ApplicantType   | Category | Key | BondServices | SuccessMessage                              |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | bondPurchase | Bond Purchase service executed successfully |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <ApplicantType> |          |     | bondTransfer | Bond Transfer service executed successfully |
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
