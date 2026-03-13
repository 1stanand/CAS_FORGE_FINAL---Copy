##commented by Anshu on 06-AUg-25 as these files already merged in Build Branch
#@AuthoredBy-himanshi.sharma
#@ReviewedBy-
#@ImplementedBy-
#@TechReviewedBy-
##FeatureID-CAS-233021
#Feature: CAS_233021 Rejection Scenario on Commodity Allocation Tab at Post Approval Stage
#
#   #  Pre-Requisites---
## Validate bond cancellation & metal cancellation service failure scenario with sub loans IPF,ICC of commodity type Metal, Bond
## metalCancellation & bondCancellation service triggering failed
## For commodity metals and bonds are in service mode
# #User must have commodity allocation tab authority
## Commodity Allocation tab is present at Post Approval Stage
# # 4 tranches two for metal and two for bonds should be visible
#
#  Background:
#    Given user is on SSO login page
#    And user logged in cas with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
#   #${ProductType:{"IOMNI"]}
#  #${ApplicationStage:["Post Approval"]}
#   #${SubLoans:["ICC","IPF"]}
#  #${Activity:["Metal Purchase"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline: Validate metalCancellation service failure from pnotify on performing confirm rejection from rejected application grid on <ProductType> product type application with <SubLoans> of commodity Metal
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user perform "<Activity>" on "<SubLoans>" sub loans of commodity metal
#    And user click on more action
#    And user select Reject Application option
#    And user select reject reason code in the modal
#    And user click on Reject Application button
#    And user navigates at Rejected Application Grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from rejected application grid
#    When user select Confirm Rejection for select action field
#    And user select Reason reject for reason field
#    And user click on save button
#    Then user validate a metalCancellation service failure message pnotify with the tranche id for the "<SubLoans>" sub loan of commodity type metal should appear
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | SubLoans   | Activity   | Category | Key |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | <SubLoans> | <Activity> |          |     |
#
#    #${ProductType:{"IOMNI"]}
#  #${ApplicationStage:["Post Approval"]}
#   #${SubLoans:["ICC","IPF"]}
# #${Activity:["Bond Purchase","Bond Transfer"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline: Validate bondCancellation service failure from pnotify on performing confirm rejection from rejected application grid on <ProductType> product type application with <SubLoans> of commodity Bond
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user perform "<Activity>" on "<SubLoans>" sub loans of commodity bond
#    And user click on more action
#    And user select Reject Application option
#    And user select reject reason code in the modal
#    And user click on Reject Application button
#    And user navigates at Rejected Application Grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from rejected application grid
#    When user select Confirm Rejection for select action field
#    And user select Reason reject for reason field
#    And user click on save button
#    Then user validate a bondCancellation service failure message pnotify with the tranche id for the "<SubLoans>" sub loan of commodity type bond should appear
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | SubLoans   | Activity   | Category | Key |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | <SubLoans> | <Activity> |          |     |
#
#  #${ProductType:{"IOMNI"]}
#  #${ApplicationStage:["Post Approval"]}
#   #${SubLoans:["ICC","IPF"]}
#  #${Commodity:["Bond"]}
#  #${Activity:["Bond Purchase","Bond Transfer"]}
#   #${ApplicantType:{"indiv"}]
#  Scenario Outline:  Validate "Send back not applicable" validation message on performing send back action after "metalCancellation service failed" pnotify along with the tranche id appears once Confirm Rejection has been initiated for <ProductType> product type application
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user perform "<Activity>" on "<SubLoans>" sub loans of "<Commodity>" commodity
#    And user click on more action
#    And user select Reject Application option
#    And user select reject reason code in the modal
#    And user click on Reject Application button
#    And user navigates at Rejected Application Grid
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from rejected application grid
#    When user select Confirm Rejection for select action field
#    And user select Reason reject for reason field
#    And user click on save button
#    And message "metalCancellation service failed" along with the tranche id appears in pnotify
#    And user select Send back option option for select action field
#    And user select value for select activity field
#    And user Reason send back for reason field
#    And user click on save button
#    Then validation message "Send back not applicable"  should appear
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | SubLoans   | SubLoans   | Commodity   | Activity   | Category | Key |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | <SubLoans> | <SubLoans> | <Commodity> | <Activity> |          |     |
