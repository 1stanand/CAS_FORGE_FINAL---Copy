##commented by Anshu on 06-Aug-25 as these files already merged in Build Branch
#@Epic-
#@AuthoredBy-gunjan.tomar
#@ReviewedBy-
#@TechReviewedBy-
#@ImplementedBy-
##EpicID-CAS-240082
##StoryID-CAS-241267
#
#@NotImplemented
#
#Feature: Introduce Co-Lending stage in application flow
#
#  Background:   Given user is on the CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Pdoc", "Facility Initiation", "Tranche Initiation", "Tranche Approval"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: A new stage CLM is introduced in workflow master post PDoc stage in editable mode
#
#  Scenario Outline: A new stage CLM is introduced for <ProductType> and <ApplicantType> post Pdoc stages in editable mode and before Disbursal Stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user moves the application till "<ApplicationStage>" stage
#    And user clicks on move to next stage
#    And application lands on the CLM stage
#    When user opens the CLM Stage
#    Then the stage is visible to the user in editable mode
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Lead Details", "DDE", "Recommendation", "Reconsideration", "Credit Approval", "FDE", "KYC", "Credit Bureau"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: User maintain the CLM stage post <ApplicationStage> from workflow master
#
#  Scenario Outline: A new stage CLM is introduced for <ProductType> and <ApplicantType> before Pdoc stage in editable mode
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user moves the application till "<ApplicationStage>" stage
#    When user opens the CLM Stage
#    Then CLM stage should not be allowed to add before Pdoc stage
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Disbursal Initiation", "Disbursal Approval"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: User maintain the CLM stage post DI and DA from workflow master
#
#  Scenario Outline: A new stage CLM is introduced for <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user moves the application till "<ApplicationStage>" stage
#    When user opens the CLM Stage
#    Then CLM stage should not be allowed to add post "<ApplicationStage>"
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Underwriter tab and Co Lending tab is seeded at CLM stage
#
#  Scenario Outline: CLM stage has Underwriter tab and Co Lending tab for <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user moves the application till "<ApplicationStage>"
#    When user opens the "<ApplicationStage>"
#    Then the underwriter tab and co lending tab visible to the user
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Underwriter tab is in view mode at CLM stage
#
#  Scenario Outline: Underwriter in view mode <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user moves the application till "<ApplicationStage>"
#    When user opens the "<ApplicationStage>"
#    Then the underwriter tab is in view mode
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: User maintain underwriter tab in edit mode at CLM stage from workflow master
#
#  Scenario Outline: Underwriter in edit mode <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user moves the application till "<ApplicationStage>"
#    When user opens the "<ApplicationStage>"
#    Then the underwriter tab is not visible in edit mode
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Co Lending tab is seeded in edit mode at CLM stage
#
#  Scenario Outline: Co Lending tab in edit mode for <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And And user moves the application till "<ApplicationStage>"
#    When user opens the "<ApplicationStage>"
#    Then the Co Lending tab is visible in edit mode
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Co Lending tab is maintained in view mode at CLM stage
#
#  Scenario Outline: Co Lending tab in edit mode for <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user moves the application till "<ApplicationStage>"
#    When user opens the "<ApplicationStage>"
#    Then the Co Lending tab is visible in view mode
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CLM stage MTNS has event and user creates rule and apply on event.
#
#  Scenario Outline: CLM stage MTNS button has event <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user moves the application till "<ApplicationStage>"
#    When user click on move to next stage button
#    Then the rules run successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Create rules - 1. if decision is Rejected, application should not move to next stage. 2.  if any deal has status not in Approved/Rejected, application should not move to next stage. 3.  if decision and status mismatch, application should not move to next stage. Now apply these rules on CLM MTNS stage
#
#  Scenario Outline: Rule run on CLM stage MTNS button for <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user moves the application till "<ApplicationStage>"
#    And user select deal decision as rejected
#    When user clicks on move to next stage button
#    Then validation should come not to allow to move ahead
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: The context object of deal level data is available
#
#  Scenario Outline: Deal level data has context objects for <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens object graph master
#    When user search for deal level context objects
#    Then context objects should be available in the master
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: The stage is visible in Application Grid
#
#  Scenario Outline: Application visibility on Application Grid for <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user search CLM stage applications on application grid
#    Then CLM stage applications are visible on the grid
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## ${Category:["Multi Tranche", "Multi Asset", "OD", "VAP"]}
## Prerequisite: CLM stage will not be applicable for Multi Tranche, Multi Asset, OD and VAP applications
#
#  Scenario Outline: Application visibility on Application Grid for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user selects the "<category>"
#    When user process the application
#    Then CLM stage will not be visible for this application
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CLM application with BT with top up application type
#
#  Scenario Outline: Application visibility on Application Grid for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user selects the BT with top up application type
#    When user process the application
#    And user reaches to CLM stage
#    And process the application
#    Then application should disburse successfully with BT application
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CLM application with BT without top up application type
#
#  Scenario Outline: Application visibility on Application Grid for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user selects the BT without top up application type
#    When user process the application
#    And user reaches to CLM stage
#    And process the application
#    Then application should disburse successfully with BT application
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Application on CLM stage and user search and view the application from Enquiry screen
#
#  Scenario Outline: Application visibility on Application Grid for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open enquiry menu
#    When user search application
#    Then user is able to view the application at CLM stage
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CLM stage data can be viewed at STO stage
#
#  Scenario Outline: Application visibility on Application Grid for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user send application to STO stage
#    When user search application
#    Then user is able to view CLM stage data in the application
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CLM stage application can be viewed at Application Manager grid
#
#  Scenario Outline: Application visibility on Application Manager for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user search application at application manager
#    Then user can perform assign reassign application to other user successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CLM stage application can be marked as hold
#
#  Scenario Outline: Application Hold from CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more actions
#    When user clicks on Hold application
#    And fills the reason
#    Then user can view the application in hold grid
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CLM stage application can be marked as hold
#
#  Scenario Outline: Application Hold from CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on exit
#    And user selects hold option
#    When user fills the reason
#    And user clicks on done
#    Then user can view the application in hold grid
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CLM stage application can be unhold from Hold grid
#
#  Scenario Outline: Unhold CLM stage application for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens the hold grid
#    And search the application at CLM stage
#    And user clicks on unhold button
#    Then user can view the application again at CLM stage
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: From CLM stage more actions options
#
#  Scenario Outline: More actions options on CLM stage <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user clicks on More Actions
#    Then user can view the "<Options>"
#    |Options|
#    |Send Back|
#    |Reject   |
#    |Cancel   |
#    |Hold     |
#    |Raise Query|
#    |Respond Query|
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: From CLM stage application send back can be done to CA or Pdoc
#
#  Scenario Outline: Send back stages from CLM stage <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on More Actions
#    When user selects send back option
#    Then user should be able to view "<Stages>"
#      |Stages|
#      |PDOC|
#      |Credit Approval|
#      Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: From CLM stage application send back to Pdoc successfully
#
#  Scenario Outline: Send back from CLM stage to Pdoc <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on More Actions
#    And user clicks send back option
#    When user selects Pdoc
#    Then application should successfully send back to Pdoc stage
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: From CLM stage application send back to CA successfully
#
#  Scenario Outline: Send back from CLM stage to CA for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on More Actions
#    And user clicks send back option
#    When user selects Credit Approval
#    Then application should successfully send back to Credit Approval
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |          |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: From CLM stage application rejected
#
#  Scenario Outline: Reject Application from CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on More Actions
#    And user clicks Reject Application
#    And user fills reject reason
#    When user clicks on reject application button
#    Then application will be visible in rejected application menu
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |          |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: The application cancelled from CLM stage
#
#  Scenario Outline: Cancel Application from CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more actions
#    And user clicks Cancel Application
#    And user opens the application in Cancel Application queue
#    When user confirms the cancellation
#    Then application will be visible in Cancelled Application menu
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |          |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Resume application from cancel application grid to CLM stage
#
#  Scenario Outline: Cancel Application from CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more actions
#    And user clicks Cancel Application
#    And user opens the application in Cancel Application queue
#    When user clicks on resume application
#    Then application will be visible at CLM stage again
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |          |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Raise query from more actions
#
#  Scenario Outline: Cancel Application from CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more actions
#    And user clicks raise query
#    And user fills the query details
#    When user clicks on raise query button
#    Then query will be raised successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |          |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Response query from more actions
#
#  Scenario Outline: response query from CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more actions
#    And user clicks response query
#    And user selects the query to respond
#    When user submit the response
#    Then query will be responded successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |          |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Re-Assign application from more actions
#
#  Scenario Outline: Re-Assign application from CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more actions
#    And user clicks re-assign application
#    When user fills the reassign details
#    Then application will be re assigned successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |          |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: workflow history records from more actions
#
#  Scenario Outline: workflow history records from CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more actions
#    When user clicks workflow history record
#    Then workflow history can be viewed successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |          |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CAM report generation from more actions
#
#  Scenario Outline: CAM report generation from more actions at CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more actions
#    When user clicks CAM report
#    Then CAM report should be generated successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |          |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: re run priority from more actions
#
#  Scenario Outline: re run priority from more actions at CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more actions
#    When user clicks re run priority
#    Then assignment task mapped should run successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |          |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Facility Initiation", "Tranche Initiation", "Tranche Approval", "Disbursal Initiation", "Disbursal Approval"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Application is at any subsequent post stage of CLM and can be send back to CLM stage
#
#  Scenario Outline: Send back from any subsequent stage to CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on more actions
#    When user clicks on send back
#    Then CLM stage should be visible to send back application on CLM stage successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |          |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Modify stage name from workflow master and check same is visible in application flow
#
#  Scenario Outline: Send back from any subsequent stage to CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user changes the CLM stage name in workflow master
#    When user opens the application
#    Then updated name will be visible in application flow
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |          |	    |
