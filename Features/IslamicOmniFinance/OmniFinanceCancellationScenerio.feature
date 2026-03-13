##commented by Anshu on 06-AUg-25 as these files already merged in Build Branch
#@AuthoredBy-himanshi.sharma
#@ReviewedBy-
#@ImplementedBy-
#@TechReviewedBy-
##FeatureID-CAS-233021
#Feature: CAS_233021 Cancellation Scenario on Commodity Allocation Tab at Post Approval Stage
#
#   #  Pre-Requisites---
## Validate cancellation scenario for IOMNI application with sub loans IPF,ICC of commodity type Metal, Bond
## For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
## Commodity Allocation tab is present at Post Approval Stage
# # 4 tranches two for metal and two for bonds should be visible
#  Background:
#    Given user is on SSO login page
#    And user logged in cas with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
#     #${ProductType:["IOMNI"]}
# #${CommodityType:["Metal","Bonds"]
# #${ApplicationStage:["Post Approval"]}
#  #{SubLoans:["ICC","IPF"]}
#   #${ApplicantType:{"indiv"}]
# # 4 tranches two for metal and two for bonds should be visible
#  Scenario Outline: Validate commodity allocation tab at <ApplicationStage> for <ProductType> with <SubLoans> sub loans of <CommodityType> commodity type
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user open commodity allocation tab
#    Then tranche for commodity type "<CommodityType>" for sub product type "<SubLoans>" based product should be present
#    Examples:
#      | ProductType   | ApplicationStage   | SubLoans   | CommodityType   | ApplicantType   | Category | Key |
#      | <ProductType> | <ApplicationStage> | <SubLoans> | <CommodityType> | <ApplicantType> |          |     |
#
#  # When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
#  #${ProductType:["IOMNI"]}
#   #${ApplicationStage:["Post Approval"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline: Validate Cancel Application option appears in more action on <ApplicationStage> for <ProductType> application
#    And  user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When  user click on more action
#    Then Cancel Application option should be present
#    Examples:
#      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
#      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
#
# # When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
#  #${ProductType:["IOMNI"]}
#   #${ApplicationStage:["Post Approval"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline: Validate on performing Cancel application action on <ApplicationStage> for <ProductType> application move to Cancelled Application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user click on more action
#    And user click on cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    Then application of "<ProductType>" should be present at cancelled application grid
#    Examples:
#      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
#      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
#
## When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
#  #${ProductType:["IOMNI"]}
#   #${ApplicationStage:["Post Approval"]}
#  #${action:["Sendback","Confirm Cancellation"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline:Validate user can perform <action> action  on application of <ProductType> product type present on Cancelled Application Grid cancelled from <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user click on more action
#    And user click on Cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from cancelled application grid
#    Then "<action>" action should be present for select action field
#    Examples:
#      | ApplicationStage   | ProductType   | ApplicantType   | action   | Category | Key |
#      | <ApplicationStage> | <ProductType> | <ApplicantType> | <action> |          |     |
#
## When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
#  #${ProductType:["IOMNI"]}
#   #${ApplicationStage:["Post Approval"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline:Validate "The application has been cancel confirmed" message in activity section of application manger for application of <ProductType> product type cancelled from <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user click on more action
#    And user click on Cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from cancelled application grid
#    When user select Confirm Cancellation for select action field
#    And user select Reason confirm for reason field
#    And user click on save button
#    And user navigates to application manager
#    And user search application using application number
#    And user checks activity section
#    Then message "The application has been cancel confirmed" for the application of "<ProductType>" should be present
#    Examples:
#      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
#      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
#
## When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
#  #${ProductType:["IOMNI"]}
#   #${ApplicationStage:["Post Approval"]}
#   #${ApplicantType:{"indiv"}]
#  #${stages:["Credit Approval", "Recommendation" ,"kYC","Login Acceptance"]}
#  Scenario Outline:Validate application gets send back to applicable stage <stages>  on  performing send back action on application of <ProductType> product type cancelled from <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user click on more action
#    And user click on Cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from cancelled application grid
#    When user select send back action at select action field
#    And user select stage in select activity field
#    And user select send back at reason field
#    And click on save button
#    Then application gets send back to applicable stage "<stages>"
#    Examples:
#      | ApplicationStage   | ProductType   | ApplicantType   | stages   | Category | Key |
#      | <ApplicationStage> | <ProductType> | <ApplicantType> | <stages> |          |     |
#
## When purchase & sell/ transfer for bond & Metal sub Finance has not been performed
#  #${ProductType:["IOMNI"]}
#   #${ApplicationStage:["Post Approval"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline: Validate "The application has been cancel confirmed" message in activity section of application manger for application of <ProductType> product type cancelled from cancelled application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user click on more action
#    And user click on Cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from cancelled application grid
#    When user select Confirm Cancellation for select action field
#    And user select Reason confirm for reason field
#    And user click on save button
#    And user navigates to application manager
#    And user search application using application number
#    And user checks activity section
#    Then message "The application has been cancel confirmed" for the application of "<ProductType>" should be present
#    Examples:
#      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
#      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
#
#  #${ProductType:["IOMNI"]}
# #${CommodityType:["Metal"]
# #${ApplicationStage:["Post Approval"]}
#  #{SubLoans:["ICC","IPF"]}
#  #{Activity:["Metal Purchase", "Metal Sell"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline: Validate after performing <Activity> for <SubLoans> of <CommodityType> commodity type when user cancel application on <ApplicationStage> for <ProductType> application goes to Cancelled Application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user perform "<Activity>" on "<SubLoans>" sub loans of "<CommodityType>" commodity
#    And user click on more action
#    And user select Cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    When user enters the application Id of the application in the search block of the grid
#    Then application of "<ProductType>" should get searched
#    Examples:
#      | ApplicationStage   | ProductType   | ApplicantType   | SubLoans   | CommodityType   | Activity   | Category | Key |
#      | <ApplicationStage> | <ProductType> | <ApplicantType> | <SubLoans> | <CommodityType> | <Activity> |          |     |
#
##${ProductType:["IOMNI"]}
# #${CommodityType:["Bond"]
# #${ApplicationStage:["Post Approval"]}
#  #{SubLoans:["ICC","IPF"]}
#  #{Activity:["Bond Purchase", "Bond Transfer"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline: Validate on performing <Activity> for <SubLoans> of <CommodityType> commodity type when user cancel application on <ApplicationStage> for <ProductType> application goes to Cancelled Application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And  user perform "<Activity>" on "<SubLoans>" sub loans of "<CommodityType>" commodity
#    And user click on more Activity
#    And user select Cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    When user enters the application Id of the application in the search block of the grid
#    Then application of "<ProductType>" should get searched
#    Examples:
#      | ApplicationStage   | ProductType   | ApplicantType   | SubLoans   | CommodityType   | Activity   | Category | Key |
#      | <ApplicationStage> | <ProductType> | <ApplicantType> | <SubLoans> | <CommodityType> | <Activity> |          |     |
#
#  #${ProductType:["IOMNI"]}
#  #${ApplicationStage:["Post Approval"]}
# #{SubLoans:["ICC","IPF"]}
#  #${Activity:["Metal Purchase","Metal Sell"]
#  #${action:["Send back", "Confirm Cancellation"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline:Validate user can perform <action> on application for <ProductType> which has been moved to cancelled Application grid from <ApplicationStage> with <SubLoans> sub loans of metal commodity type
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user perform "<Activity>" on "<SubLoans>" sub loans of commodity metal
#    And user click on more Action
#    And user select Cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from cancelled application grid
#    Then "<action>" action should be present for select action field
#    Examples:
#      | ApplicationStage   | ProductType   | ApplicantType   | SubLoans   | action   | Activity   | Category | Key |
#      | <ApplicationStage> | <ProductType> | <ApplicantType> | <SubLoans> | <action> | <Activity> |          |     |
#
##${ProductType:["IOMNI"]}
#  #${ApplicationStage:["Post Approval"]}
# #${SubLoans:["ICC","IPF"]}
#  #${Activity:["Bond Purchase","Bond Transfer"]
#  #${action:["Send back", "Confirm Cancellation"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline:Validate user can perform <action> on application for <ProductType> which has been moved to cancelled Application grid from <ApplicationStage> with <SubLoans> sub loans of bond commodity type
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user perform "<Activity>" on "<SubLoans>" sub loans of commodity bond
#    And user click on more action
#    And user select Cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    When user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from cancelled application grid
#    Then "<action>" action should be present for select action field
#    Examples:
#      | ApplicationStage   | ProductType   | ApplicantType   | SubLoans   | Activity   | action   | Category | Key |
#      | <ApplicationStage> | <ProductType> | <ApplicantType> | <SubLoans> | <Activity> | <action> |          |     |
#
#    #${ProductType:{"IOMNI"]}
#  #${ApplicationStage:["Post Approval"]}
#   #${SubLoans:["ICC","IPF"]}
#  #${Activity:["Metal Purchase"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline: Validate metalCancellation service triggering message <SuccessMessage> for <SubLoans> sub loans in activity section of application manager on performing confirm cancellation from cancelled application grid on <ProductType> product type with <SubLoans> of commodity Metal
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user perform "<Activity>" on "<SubLoans>" sub loans of commodity metal
#    And user click on more action
#    And user select Cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from cancelled application grid
#    When user select Confirm Cancellation for select action field
#    And user select Reason confirm for reason field
#    And user click on save button
#    And user navigates to application manager
#    And user search application using application number
#    And user checks activity section
#    Then user validate "<SuccessMessage>" message in activity section for the <SubLoans> sub loans of commodity metal associated with the application of <ProductType> product type
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType  | SubLoans   | Activity   | Category | Key | SuccessMessage                                   |
#      | <ProductType> | <ApplicationStage> | <ApplicantTpe> | <SubLoans> | <Activity> |          |     | metalCancellation service triggered successfully |
#
# #${ProductType:{"IOMNI"]}
#  #${ApplicationStage:["Post Approval"]}
#   #${SubLoans:["ICC","IPF"]}
#  #${Activity:["Metal Purchase"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline: Validate application gets cancelled and activity with cancel confirmed message gets stamped in application manager once metalCancellation service has triggered on application of <ProductType> product type with <SubLoans> of commodity Metal at Cancelled application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user perform "<Activity>" on "<SubLoans>" sub loans of commodity metal
#    And user click on more action
#    And user select Cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from cancelled application grid
#    When user select Confirm Cancellation for select action field
#    And user select Reason confirm for reason field
#    And user click on save button
#    And user navigates to application manager
#    And user search application using application number
#    And user checks activity section
#    Then message "The application has been cancel confirmed" should be present for the application of <ProductType> product type
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | SubLoans   | Activity   | Category | Key |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | <SubLoans> | <Activity> |          |     |
#
# #${ProductType:{"IOMNI"]}
#  #${ApplicationStage:["Post Approval"]}
#   #${SubLoans:["ICC","IPF"]}
#  #${Activity:["Metal Sell"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline: Validate "The application has been cancel confirmed" message in activity section of application manger for application of <ProductType> with <SubLoans> of commodity metal from cancelled application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user perform "<Activity>" on "<SubLoans>" sub loans of commodity metal
#    And user click on more action
#    And user select Cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from cancelled application grid
#    When user select Confirm Cancellation for select action field
#    And user select Reason confirm for reason field
#    And user click on save button
#    And user navigates to application manager
#    And user search application using application number
#    And user checks activity section
#    Then message "The application has been cancel confirmed" for the application of "<ProductType>" should be present
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | SubLoans   | Activity   | Category | Key |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | <SubLoans> | <Activity> |          |     |
#
# #${ProductType:{"IOMNI"]}
#  #${ApplicationStage:["Post Approval"]}
#   #${SubLoans:["ICC","IPF"]}
#  #${Activity:["Bond Purchase","Bond Transfer"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline: Validate bondCancellation service triggering message <SuccessMessage> for <SubLoans> sub loans in activity section of application manager on performing confirm cancellation from cancelled application grid on <ProductType> product type with <SubLoans> of commodity bond
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user perform "<Activity>" on "<SubLoans>" sub loans of commodity bond
#    And user click on more action
#    And user select Cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from cancelled application grid
#    When user select Confirm Cancellation for select action field
#    And user select Reason confirm for reason field
#    And user click on save button
#    And user navigates to application manager
#    And user search application using application number
#    And user checks activity section
#    Then user validate "<SuccessMessage>" message in activity section for the <SubLoans> sub loans of commodity bond associated with the application of <ProductType> product type
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | SubLoans   | Activity   | Category | Key | SuccessMessage                                  |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | <SubLoans> | <Activity> |          |     | bondCancellation service triggered successfully |
#
# #${ProductType:{"IOMNI"]}
#  #${ApplicationStage:["Post Approval"]}
#   #${SubLoans:["ICC","IPF"]}
#  #${Activity:["Bond Purchase","Bond Transfer"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline: Validate application gets cancelled and activity with cancel confirmed message gets stamped in application manager once BondCancellation service has triggered on application of <ProductType> product type with <SubLoans> of commodity Bond at Cancelled application grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user perform "<Activity>" on "<SubLoans>" sub loans of commodity bond
#    And user click on more action
#    And user select Cancel Application option
#    And user select cancel reason code in the modal
#    And user click on Cancel Application button
#    And user navigates at Cancelled Application Grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from cancelled application grid
#    When user select Confirm Cancellation for select action field
#    And user select Reason confirm for reason field
#    And user click on save button
#    And user navigates to application manager
#    And user search application using application number
#    And user checks activity section
#    Then message "The application has been cancel confirmed" should be present for the application of <ProductType> product type
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | SubLoans   | Activity   | Category | Key |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | <SubLoans> | <Activity> |          |     |
#
