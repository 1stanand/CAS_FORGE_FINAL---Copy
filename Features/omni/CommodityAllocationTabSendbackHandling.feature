#@AuthoredBy-anshima.tiwari
#@ReviewedBy-
#@ImplementedBy-
#@TechReviewedBy-
#
#
#Feature: CAS-234564-Handling And Send back Scenario for Commodity Allocation tab
#
##  Pre-Requisites---
##  In this feature we will validate all these screen level verification with User who is having ALL_Roles Authority
#
#
#
#  Background:
#    Given user is on SSO login page
#    And user logged in cas with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
#
# #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
# #${ProductType:["IOMNI"]}
# #${SubProductType:["IPF","ICC"]}
# #${ApplicationStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  #${CommodityType:["Metal","Bond"]}
#  #4 tranches two for metal and two for bonds should be visible
#  Scenario Outline: Validate commodity allocation tab at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    When user opens commodity allocation tab to check entry of "<SubProductType>"
#    Then tranche for commodity type "<CommodityType>" for sub product type "<SubProductType>" based product should be present
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | CommodityType   | SubProductType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <CommodityType> | <SubProductType> |
#
#
#
#
# #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
# #${ProductType:["IOMNI"]}
# #${SubProductType:["IPF","ICC"]}
# #${ApplicationStage:["Post Approval"]}
#   #${ApplicantType:["Individual","Non-Individual"]}
#  #${CommodityType:["Metal","Bond"]}
#  Scenario Outline: Validate <Error> on move to next stage at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType> without executing commodity based services
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    When user clicks on move to next stage
#    Then proper validation messgae <Error> should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | Error                                                       |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Please allocate commodity before proceeding to next stage" |
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
# #${ProductType:["IOMNI"]}
# #${SubProductType:["IPF","ICC"]}
# #${ApplicationStage:["Post Approval"]}
#   #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate <Error> for bonds on move to next stage at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user clicks on generate document button for metal purchase
#    And user clicks on generate document button for metal sell
#    When user clicks on move to next stage
#    Then proper validation messgae <Error> should be visible for bonds
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType | Error                                                       |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | bonds         | "Please allocate commodity before proceeding to next stage" |
#
#
#    #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
# #${ProductType:["IOMNI"]}
# #${SubProductType:["IPF","ICC"]}
# #${ApplicationStage:["Post Approval"]}
#   #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate <Error> for bonds purchase on move to next stage at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    When user clicks on bond purchase button
#    Then proper validation messgae <Error> should be visible for metal
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType | Error                                                   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | bonds         | " Default bank is required for bond allocation service" |
#
#
#
# #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
# #${ProductType:["IOMNI"]}
# #${SubProductType:["IPF","ICC"]}
# #${ApplicationStage:["Post Approval"]}
#   #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate <Error> for metal on move to next stage at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based subproduct
#    And user clicks on bond purchase button
#    And user clicks on bond transfer button
#    When user clicks on move to next stage
#    Then proper validation messgae <Error> should be visible for metal
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType | Error                                                       |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | metal         | "Please allocate commodity before proceeding to next stage" |
#
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
# #${ProductType:["IOMNI"]}
# #${SubProductType:["IPF","ICC"]}
# #${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate <Error> on move to next stage before executing metal sell service at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on generate document button for metal purchase
#    When user clicks on move to next stage
#    Then proper validation messgae <Error> should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType | Error                                                                  |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | metal         | "Commodity Sell/ Transfer is required before proceeding to next Stage" |
#
#
#   #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
# #${ProductType:["IOMNI"]}
# #${SubProductType:["IPF","ICC"]}
# #${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate <Error> on move to next stage before executing bonds transfer service at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based subproduct
#    And user clicks on bond purchase button
#    When user click on move to next stage
#    Then proper validation messgae <Error> should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType | Error                                                                 |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | bonds         | "Commodity Sell/Transfer is required before proceeding to next Stage" |
#
#
#    #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
# #${ProductType:["IOMNI"]}
# #${SubProductType:["IPF","ICC"]}
# #${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate <Error> on move to next stage for metal document generation service after metal services executed at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    When user click on move to next stage
#    Then proper validation messgae <Error> should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType | Error                                                                                  |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | metal         | "Generate Certificate for Metal Product is mandatory before proceeding to next stage." |
#
#
#
# # -----------------------------------------------------------------------------------------------------------------------------------
#
##send back has 4 stages to sendback application
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate send back stages at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user clicks on more actions button
#    And user clicks on send back option
#    When user clicks on select stage to send back drop down
#    Then only below four send back stages should be visible
#      | Login Acceptance |
#      | KYC              |
#      | Recommendation   |
#      | Credit Approval  |
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
# #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  #${SendBackStage:["Login Acceptance","KYC","Recommendation","Credit Approval"]}
#  Scenario Outline: Validate sub product type in commodity tab without any changes in sub product type at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user move the application at "<CurrentStage>" without any changes
#    When user opens commodity allocation tab
#    Then only existing commodity type "<CommodityType>" for sub product type "<SubProductType>" should be present
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SendBackStage   | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SendBackStage> | <SubProductType> | <CommodityType> |
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#  Scenario Outline: Validate delete pop up alert message for deletion of sub product type at <SendBackStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user opens sourcing details
#    When user clicks on delete button of sub product type
#    Then delete pop up alert message for deletion of sub product type "<SubProductType>" should be visible
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SendBackStage   | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SendBackStage> | <SubProductType> | <CommodityType> |
#
#
# #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
#  #${NonCommoditySubProduct:["IHF","IAF"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#  Scenario Outline: Validate non commodity based sub product type in commodity allocation tab at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user opens sourcing details
#    And user clicks on delete button of sub product type
#    And alert pop up message "<Message>" is visible on deleteion
#    And user clicks on ok to delete the sub product type
#    And user adds new non commodity based sub product "<NonCommoditySubProduct>"
#    And user saves the sourcing details
#    When user move the application at "<ApplicationStage>"
#    Then commodity allocation tab should not visible
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SendBackStage   | SubProductType   | CommodityType   | NonCommoditySubProduct   | Message                                                                                                                                                |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SendBackStage> | <SubProductType> | <CommodityType> | <NonCommoditySubProduct> | "Linked Collateral(s), VAP(s) and other details with product type( LOB_Name) will be deleted/delink. Are you sure you want to delete product mapping?" |
#
#
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#  #${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]
#    #${ApplicantType:["Individual","Non-Individual"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#  Scenario Outline: Validate changed applicant data at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user changed the audit parameters "<AuditParameters>"for for commodity type "<CommodityType>"
#    And user saves the changed details
#    And user move the application at "<ApplicationStage>"
#    When user checks audit parameters
#    Then updated data for audit parameters "<AuditParameters>" should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SendBackStage   | SubProductType   | CommodityType   | AuditParameters   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SendBackStage> | <SubProductType> | <CommodityType> | <AuditParameters> |
#
#
#
#     #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate additional data for metal purchase sell service execution with generate documents at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on generate document button for metal purchase
#    When user clicks on additional data button for metal purchase service
#    Then data for metal purchase service should be present in additional data fields
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
# #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate status after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And metal purchase service is executed successfully with display message <SuccessMessage>
#    And user clicks on generate document button for metal purchase
#    When user checks status for metal purchase service
#    Then "Purchase Successful" status should be present in status
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SuccessMessage                            |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Metal Purchase is executed successfully" |
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate additional data for metal purchase sell service execution with generate documents at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user clicks on generate document button for metal purchase
#    And user clicks on generate document button for metal sell
#    When user clicks on additional data button for metal sell service
#    Then data for metal sell service should be present in additional data fields
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate status after metal sell at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And sell service is executed successfully with display message <SuccessMessage>
#    And user clicks on generate document button for metal purchase
#    And user clicks on generate document button for metal sell
#    When user checks status for metal sell service
#    Then "Sell Successful" status should be present in status
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SuccessMessage                        |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Metal Sell is executed successfully" |
#
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate activity messages for metal purchase services at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And metal purchase is executed successfully
#    When user opens activity tab
#    Then metal purchase success message should be visible in activity tab
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#    #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate activity messages for metal purchase generate document services at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on generate document button
#    And metal generate document service is executed successfully with display message <SuccessMessage>
#    When user opens activity tab
#    Then metal purchase generate documents success message should be visible in activity tab
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SuccessMessage                                        |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Generate Documents Service is executed successfully" |
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate activity messages for metal sell services at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And metal sell is executed successfully
#    When user opens activity tab
#    Then metal sell success message should be visible in activity tab
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#    #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate activity messages for metal sell generate document services at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on generate document button for metal purchase
#    And user clicks on metal sell button
#    And user clicks on generate document button for metal sell
#    And metal generate document service is executed successfully with display message <SuccessMessage>
#    When user opens activity tab
#    Then metal sell generate documents success message should be visible in activity tab
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SuccessMessage                                        |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Generate Documents Service is executed successfully" |
#
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate send back option in more actions after metal purchase sell service execution with generate documents at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    When user clicks on more actions button
#    Then send back option should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
# #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Add a new sub product type of the same commodity at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user opens sourcing details
#    And user adds a new sub loan with the same commodity <CommodityType>"
#    And user saves the sourcing details
#    And user moves the application at "<ApplicationStage>"
#    When user checks commodity allocation tab
#    Then the new sub product type "<SubProductType>" for same commodity "<CommodityType>" should be listed in the sub loan table alongside existing sub product type
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> |
#
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline:  Add a new sub product type of different commodity <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user adds a new sub product type of different commodity <CommodityType>"
#    And user saves the sourcing details
#    And user moves the application at "<ApplicationStage>"
#    When user checks commodity allocation tab
#    Then the new sub product type "<SubProductType>" for different commodity "<CommodityType>" should be listed in the sub loan table alongside existing sub product type
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> |
#
#
#     #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${CurrentStage:["Post Approval"]}
#  #${SendbackStage:["Login Acceptance","KYC","Recommendation","Credit Approval"]
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Delete metal based sub product type to add new metal based sub product type after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user metal purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user opens sourcing details
#    And user deletes existing metal based sub product type
#    And alert pop up message "<Message>" is visible
#    When user clicks on ok button to delete metal sub product type
#    Then system should automatically trigger metal cancellation for the associated purchase
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | Message                                                                                                                                                                           |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | "Linked Collateral(s), VAP(s), Commodity Trade(Purchase) and other details with product type( LOB_Name) will be deleted/delink. Are you sure you want to delete product mapping?" |
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${CurrentStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate metal cancellation service failure for sub product type to add new metal based sub product type after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user metal purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user opens sourcing details
#    And user deletes existing metal based sub product type
#    And alert pop up message is visible
#    And user clicks on ok button to delete metal sub product type
#    When metal cancellation service is failed
#    Then failure message "<FailureMessage>" should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | FailureMessage                 |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | "Metal cancellation is failed" |
#
#
#    #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${CurrentStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate metal cancellation service failure message in activity for sub product type to add new metal based sub product type after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user metal purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user opens sourcing details
#    And user deletes existing metal based sub product type
#    And alert pop up message is visible
#    And user clicks on ok button to delete metal sub product type
#    When metal cancellation service is failed
#    And user open activity accordian
#    Then failure message "<FailureMessage>" should be visible in activity tab
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | FailureMessage                 |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | "Metal cancellation is failed" |
#
#
#     #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${CurrentStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate metal cancellation service success for sub product type to add new metal based sub product type after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user metal purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user opens sourcing details
#    And user deletes existing metal based sub product type
#    And alert pop up message is visible
#    And user clicks on ok button to delete metal sub product type
#    When metal cancellation service is executed successfully
#    Then success message "<SuccessMessage>" should be visible
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | SuccessMessage                                |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | "Metal cancellation is executed successfully" |
#
#
#    #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${CurrentStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate metal cancellation service success message in activity for sub product type to add new metal based sub product type after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user metal purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user opens sourcing details
#    And user deletes existing metal based sub product type
#    And alert pop up message is visible
#    And user clicks on ok button to delete metal sub product type
#    When metal cancellation service is successfully executed
#    And user open activity accordian
#    Then success message "<SuccessMessage>" should be visible in activity tab
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | SuccessMessage                                |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | "Metal cancellation is executed successfully" |
#
#
#
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${ApplicationStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate new metal based sub product type after metal cancellation at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    When user opens commodity allocation tab
#    Then new metal based sub product type "<SubProductType>" should be visible
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#
#     #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate status after metal cancellation successful at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    When user check status in commodity allocation tab for newly aRecommendationd metal based sub product type
#    Then no status should be present in status
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Perform metal sell for newly  metal based sub product type at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for newly metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on generate document button for metal purchase
#    When user clicks on metal sell button
#    Then metal sell service should be executed successfully
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate <Error> message for changed applicant or audit details after metal purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user metal purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user changed the audit parameters "<AuditParameters>"for for commodity type "<CommodityType>"
#    When user move the application at "<ApplicationStage>"
#    Then the system should display <AuditMessage>
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | AuditMessage                                                               |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | "(Audit Parameter) for sub loan changed Please Perform metal cancellation" |
#
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate <Error> message at metal allocation  for changed applicant or audit details without metal cancellation at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user metal purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user changed the audit parameters "<AuditParameters>"for for commodity type "<CommodityType>"
#    And user move the application at "<ApplicationStage>"
#    When user clicks on plus icon of metal based sub product type
#    Then the system should display  <AuditMessage>
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | AuditParameters   | AuditMessage                                                               |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | <AuditParameters> | "(Audit Parameter) for sub loan changed Please Perform metal cancellation" |
#
#
#        #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Change applicant or audit details after metal cancellation at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal cancel button
#    And user metal cancel service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage    And user has cancelled the purchased metal
#    And user send back the application  from "<CurrentStage>" to "<SendBackStage>" stage
#    And user changed the audit parameters "<AuditParameters>"for for commodity type "<CommodityType>"
#    When user moves the application at "<ApplicationStage>"
#    Then applicant data should be updated successfully according to the audit parameters "<AuditParameters>"
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | AuditParameters   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | <AuditParameters> |
#
#
#
# #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Block deletion for sub product type after metal sell executed at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user opens sourcing details
#    When user try to delete sub product tpye after metal sell
#    Then delete button for sub product type "<SubProductType>" should not be visible
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | AuditParameters   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | <AuditParameters> |
#
#
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Block changes to applicant or audit parameters after metal sell executed at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And user clicks on more actions button
#    And user clicks on send back option
#    When user attempts to modify applicant or audit details  "<AuditParameters>"
#    Then audit parameters "<AuditParameters>" fields should be present in disable mode
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | AuditParameters   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | <AuditParameters> |
#
#   #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate purchase sell cancellation after metal sell at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user click on plus icon of sub product type after metal sell
#    When user tries to perform purchase, sell, or cancellation for the sub product type after metal sell execution
#    Then all fields should be present in disabled mode
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#     #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate status after metal purchase fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And metal purchase service is failed with display <FailureMessage>
#    When user check status
#    Then "Purchase Failed" status should be present in status
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | FailureMessage                     |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Some error occurred in simulator" |
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate activity after metal purchase fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And metal purchase service is failed
#    When user check activity tab
#    Then in activit failure message for metal purchase should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
# #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate status after metal sell fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And metal sell service is failed with display <FailureMessage>
#    When user check status
#    Then "Sell Failed" status should be present in status
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | FailureMessage                     |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Some error occurred in simulator" |
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate activity after metal sell fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on metal sell button
#    And metal sell service is failed
#    When user check activity tab
#    Then in activit failure message for metal sell should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#     #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate status after metal cancel fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on metal cancel button
#    And metal cancel service is failed
#    When user check status
#    Then "Cancellation Failed" status should be present in status
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate activity after metal cancel fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on metal purchase button
#    And user clicks on metal cancel button
#    And metal cancel service is failed
#    When user check activity tab
#    Then in activit failure message for metal cancel should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#
#     #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate view additional fields for bond purchase transfer service execution at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bond based sub product
#    And user clicks on bond purchase button
#    And bonds purchase service is executed successfully with display message <SuccessMessage>
#    When user clicks on additional data button for bond purchase service
#    Then configured data for bond purchase service should be present in view additional fields
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SuccessMessage                            |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Bonds Purchase is executed successfully" |
#
#
#        #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate <Error> for view additional fields for bond purchase transfer service execution if additional fields are not configured at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bond based sub product
#    And user clicks on bond purchase button
#    And fields are not configured for view additional fields
#    When user clicks on additional data button for bond purchase service
#    Then user should get error message <Error> for view additional fields
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | Error                               |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Additional Fields not configured." |
#
#
# #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate status after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    When user checks status for bonds purchase service
#    Then "Purchase Successful" status should be present in status
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate status after bonds transfer at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user clicks on bonds transfer button
#    And bonds transfer service is executed successfully with display message <SuccessMessage>
#    When user checks status for bonds transfer service
#    Then "Transfer Successful" status should be present in status
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SuccessMessage                            |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Bonds Transfer is executed successfully" |
#
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate activity messages for bonds purchase services at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And bonds purchase is executed successfully
#    When user opens activity tab
#    Then bonds purchase success message should be visible in activity tab
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate activity messages for bonds transfer services at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user clicks on bonds transfer button
#    And bonds transfer is executed successfully
#    When user opens activity tab
#    Then bonds transfer success message should be visible in activity tab
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate send back option in more actions after bonds purchase transfer service execution with generate documents at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    When user clicks on more actions button
#    Then send back option should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#
#     #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${CurrentStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Delete bonds based sub product type to add new bonds based sub product type after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user bonds purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user opens sourcing details
#    And user deletes existing bonds based sub product type
#    And alert pop up message "<Message>" is visible
#    When user clicks on ok button to delete bonds sub product type
#    Then system should automatically trigger bonds cancellation for the associated purchase
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | Message                                                                                                                                                                           |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | "Linked Collateral(s), VAP(s), Commodity Trade(Purchase) and other details with product type( LOB_Name) will be deleted/delink. Are you sure you want to delete product mapping?" |
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${CurrentStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate bonds cancellation service failure for sub product type to add new bonds based sub product type after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user bonds purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user opens sourcing details
#    And user deletes existing bonds based sub product type
#    And alert pop up message is visible
#    And user clicks on ok button to delete bonds sub product type
#    When bonds cancellation service is failed
#    Then failure message "<FailureMessage>" should be visible
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | FailureMessage                 |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | "Bonds cancellation is failed" |
#
#
#    #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${CurrentStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate bonds cancellation service failure message in activity for sub product type to add new bonds based sub product type after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user bonds purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user opens sourcing details
#    And user deletes existing bonds based sub product type
#    And alert pop up message is visible
#    And user clicks on ok button to delete bonds sub product type
#    When metal cancellation service is failed
#    And user open activity accordion
#    Then failure message "<FailureMessage>" should be visible in activity tab
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | FailureMessage                 |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | "bonds cancellation is failed" |
#
#
#     #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${CurrentStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate bonds cancellation service success for sub product type to add new bonds based sub product type after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for metal based subproduct
#    And user clicks on bonds purchase button
#    And user bonds purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user opens sourcing details
#    And user deletes existing bonds based sub product type
#    And alert pop up message is visible
#    And user clicks on ok button to delete bonds sub product type
#    When bonds cancellation service is executed successfully
#    Then success message "<SuccessMessage>" should be visible
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | SuccessMessage                                |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | "Bonds cancellation is executed successfully" |
#
#
#    #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${CurrentStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate bonds cancellation service success message in activity for sub product type to add new bonds based sub product type after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user bonds purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user opens sourcing details
#    And user deletes existing bond based sub product type
#    And alert pop up message is visible
#    And user clicks on ok button to delete bonds sub product type
#    When bonds cancellation service is successfully executed
#    And user open activity accordion
#    Then success message "<SuccessMessage>" should be visible in activity tab
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | SuccessMessage                                |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | "Bonds cancellation is executed successfully" |
#
#
#
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal"]
##${ApplicationStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate new bonds based sub product type after bonds cancellation at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    When user opens commodity allocation tab
#    Then new bonds based sub product type "<SubProductType>" should be visible
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#
#     #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate status after bonds cancellation successful at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    When user check status in commodity allocation tab for newly added bonds based sub product type
#    Then no status should be present in status
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Perform bonds transfer for newly added bonds based sub product type at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for newly bonds based sub product
#    And user clicks on bonds purchase button
#    When user clicks on bonds transfer button
#    Then bonds transfer service should be executed successfully
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate <Error> message for changed applicant or audit details after bonds purchase at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user bonds purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user changed the audit parameters "<AuditParameters>"for for commodity type "<CommodityType>"
#    When user move the application at "<ApplicationStage>"
#    Then the system should display <AuditMessage>
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | AuditMessage                                                               |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | "(Audit Parameter) for sub loan changed Please Perform bonds cancellation" |
#
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]
#    #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate <Error> message at bonds allocation  for changed applicant or audit details without bonds cancellation at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user bonds purchase service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user changed the audit parameters "<AuditParameters>"for for commodity type "<CommodityType>"
#    And user move the application at "<ApplicationStage>"
#    When user clicks on plus icon of bonds based sub product type
#    Then the system should display  <AuditMessage>
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | AuditParameters   | AuditMessage                                                               |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | <AuditParameters> | "(Audit Parameter) for sub loan changed Please Perform bonds cancellation" |
#
#
#        #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${AuditParameters:["Customer Name","Sanctioned Amount","Metal Type"]
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Change applicant or audit details after bonds cancellation at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds cancel button
#    And user bonds cancel service executed successfully
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user send back the application  from "<ApplicationStage>" to "<SendBackStage>" stage
#    And user has cancelled the purchased bonds
#    And user send back the application  from "<CurrentStage>" to "<SendBackStage>" stage
#    And user changed the audit parameters "<AuditParameters>"for for commodity type "<CommodityType>"
#    When user moves the application at "<ApplicationStage>"
#    Then applicant data should be updated successfully according to the audit parameters "<AuditParameters>"
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | AuditParameters   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | <AuditParameters> |
#
#
#
# #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Block deletion for sub product type after bonds transfer executed at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user clicks on bonds transfer button
#    And user clicks on more actions button
#    And user clicks on send back option
#    And user opens sourcing details
#    When user try to delete sub product type after bonds transfer
#    Then delete button for sub product type "<SubProductType>" should not be visible
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | AuditParameters   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | <AuditParameters> |
#
#
#
#  #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Block changes to applicant or audit parameters after bonds transfer executed at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user clicks on bonds transfer button
#    And user clicks on more actions button
#    And user clicks on send back option
#    When user attempts to modify applicant or audit details  "<AuditParameters>"
#    Then audit parameters "<AuditParameters>" fields should be present in disable mode
#
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | SendBackStage   | AuditParameters   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | <SendBackStage> | <AuditParameters> |
#
#   #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${ApplicationStage:["Post Approval"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate purchase transfer cancellation after bonds transfer at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user click on plus icon of sub product type after bonds transfer
#    When user tries to perform purchase, transfer, or cancellation for the sub product type after bonds transfer execution
#    Then all fields should be present in disabled mode
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#     #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate status after bonds purchase fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And bonds purchase service is failed with display <FailureMessage>
#    When user check status
#    Then "Purchase Failed" status should be present in status
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | FailureMessage                     |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Some error occurred in simulator" |
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate activity after bonds purchase fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And bonds purchase service is failed
#    When user check activity tab
#    Then in activity failure message for metal purchase should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
# #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate status after bonds transfer fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user clicks on bonds transfer button
#    And bonds transfer service is failed with display <FailureMessage>
#    When user check status
#    Then "Transfer Failed" status should be present in status
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | FailureMessage                     |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Some error occurred in simulator" |
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate activity after bonds transfer fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user clicks on bonds transfer button
#    And bonds transfer service is failed
#    When user check activity tab
#    Then in activity failure message for bonds transfer should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#     #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate status after bonds cancel fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user clicks on bonds cancel button
#    And bonds cancel service is failed
#    When user check status
#    Then "Cancellation Failed" status should be present in status
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
##For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate activity after bonds cancel fail at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user clicks on bonds cancel button
#    And bonds cancel service is failed
#    When user check activity tab
#    Then in activity failure message for metal cancel should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#
# #For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bond"]
##${CurrentStage:["Post Approval"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
#  Scenario Outline: Validate status after bonds expired at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And user opens commodity allocation tab
#    And user clicks on plus icon of action column for bonds based sub product
#    And user clicks on bonds purchase button
#    And user clicks on bonds transfer button
#    And bonds are expired
#    When user check status
#    Then "Bonds Expired" status should be present in status
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> |
#
#
#
#  #For commodity metals and bonds are in Service mode
# #User must have commodity allocation tab authority
# #${ProductType:["IOMNI"]}
# #${SubProductType:["IPF","ICC"]}
# #${CommodityType:["Metal","Bonds"]
# #${ApplicationStage:["Disbursal"]}
#   #${ApplicantType:["Individual","Non-Individual"]}
#  #${SendBackStage:["Login Acceptance","Credit Approval"]}
#  Scenario Outline: Validate <Error> on disbursal initiation after bonds expire at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And bonds are expired
#    When user initiates disbursal
#    Then proper validation messgae <Error> should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | Error               |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Bonds are expired" |
#
#
#      #For commodity metals and bonds are in Service mode
##User must have commodity allocation tab authority
##${ProductType:["IOMNI"]}
##${SubProductType:["IPF","ICC"]}
##${CommodityType:["Metal","Bonds"]
##${ApplicationStage:["Operation Checks"]}
#  #${ApplicantType:["Individual","Non-Individual"]}
# #${SendBackStage:["Login Acceptance","Credit Approval"]}
#  Scenario Outline: Validate <Error> on disbursal initiation after bonds expire at <ApplicationStage> for <ProductType> of <SubProductType> for <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid for "<CommodityType>" "<SubProductType>"
#    And bonds are expired
#    When user clicks on move to next stage
#    Then proper validation messgae <Error> should be visible
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | SubProductType   | CommodityType   | Error               |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <SubProductType> | <CommodityType> | "Bonds are expired" |
#
#
