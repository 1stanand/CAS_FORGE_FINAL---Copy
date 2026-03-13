###commented by Anshu on 06-AUg-25 as these files already merged in Build Branch
##@Epic-
##@AuthoredBy-gunjan.tomar
##@ReviewedBy-
##@TechReviewedBy-
##@ImplementedBy-
###EpicID-CAS-240082
###StoryID-CAS-238220, CAS-241267
##
##@NotImplemented
##
##Feature: Introduce Co-Lending Tab in application flow
##
##  Background:   Given user is on the CAS Login Page
##    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite: The tab is enabled in edit mode for these stage in workflow master.
##
##  Scenario Outline: A new tab is introduced on <ApplicationStage> in edit mode for <ProductType> and <ApplicantType>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user opens the tab co lending
##    Then the tab will be in edit mode
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval",  "PDOC", "CLM","Disbursal Initiation", "Disbursal Approval", "Renewal", "Committee Approval", "Enquiry", "Sent to Ops"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite: The tab is enabled in view mode for these stage in workflow master.
##
##  Scenario Outline: A new tab is introduced on <ApplicationStage> in view mode for <ProductType> and <ApplicantType>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user opens the tab co lending
##    Then the tab will be in view mode
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval",  "PDOC", "CLM","Disbursal Initiation", "Disbursal Approval", "Renewal", "Committee Approval", "Enquiry", "Sent to Ops"]}
### ${ApplicantType:["Indiv"]}
### The logged in user should have authority of the tab
##
##  Scenario Outline: New tab visibility to user who has authority for the application with <ProductType> and <ApplicantType> on <ApplicantStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user checks the tab co lending
##    Then the tab will be visible to user
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval",  "PDOC", "CLM","Disbursal Initiation", "Disbursal Approval", "Renewal", "Committee Approval", "Enquiry", "Sent to Ops"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite: The logged in user does not have authority of the tab
##
##  Scenario Outline: User without authority not able to view the tab for the application with <ProductType> and <ApplicantType> on <ApplicantStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user checks the tab co lending
##    Then the tab will not be visible to user
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["DDE", "Credit Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite: The tab Co Lending is seeded at <ApplicationStage>
##
##  Scenario Outline: A new tab will be seeded for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user checks the seeded tab Co Lending
##    Then user will be able to see tab Co Lending at "<ApplicationStage>"
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["HL","PL","AL"]}
### ${ApplicationStage:["Disbursal Initiation", "Disbursal Approval"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite: The tab Co Lending is enabled from workflow master in view mode at DI and DA stage.
##
##  Scenario Outline: A new tab will be enabled for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user checks the tab Co Lending
##    Then user will be able to see tab Co Lending at "<ApplicationStage>"
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite: User has authority of the tab and stage supports edit mode of this tab and the tab is enabled as edit mode in workflow master
##
##  Scenario Outline: Enable tab from workflow master in edit mode for application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user opens the tab co lending
##    Then user will be able to see data of tab in edit mode
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Tab is non mandatory to MTNS for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When the user clicks on MTNS without filing any data in Co Lending tab
##    Then user will not get any validation to fill the tab data
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["HL","PL","AL"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval",  "PDOC", "CLM", "Disbursal Initiation", "Disbursal Approval", "Renewal", "Committee Approval", "Enquiry", "Sent to Ops"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite: The tab sequence in workflow master will be seeded at the end of all tabs
##
##  Scenario Outline: The tab sequence seeded in last for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user checks the co lending tab sequence
##    When user validate the tab sequence as defined in workflow master
##    Then user will be able to see tab at the end of the all tabs present in that stage
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval",  "PDOC", "CLM","Disbursal Initiation", "Disbursal Approval", "Renewal", "Committee Approval", "Enquiry", "Sent to Ops"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite - User change the co lending tab sequence from workflow master
##
##  Scenario Outline: Change tab sequence from workflow master for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user checks co lending tab sequence
##    Then tab will be visible on the defined sequence as defined in the workflow master
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Deal code field is present as searchable field in the tab for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user open the co lending tab
##    Then user will be able to see the field Deal code as searchable field
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### prerequisite - the deal code is active, co lending ticked and mapped with with application product, Scheme
##
##  Scenario Outline: Deal code in deal search result for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user open co lending tab
##    When user open the tab
##    And search deal code
##    Then user will be able to see the deal code
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Deal with investor details visible for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user open co lending tab
##    When user search a deal
##    And user selects any deal code
##    Then user will be able to see the investor details with below "<fields>" in view mode
##      |Fields       |
##      |Investor Name|
##      |Ownership    |
##      |Percentage   |
##
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Added deal details visible for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user open co lending tab
##    When user add deal
##    Then user will be able to see "<fields>"
##      |Fields       |
##      |Select Deal  |
##      |Deal Code    |
##      |Deal Name    |
##      |Priority     |
##      |RPS          |
##      |Action       |
##      |Status       |
##
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : There are 3 deals added in the application and only one deal can be selected at a time
##
##  Scenario Outline: Added deal selection with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user open co lending tab
##    And user add "<NoOfDeal>"
##    When user clicks on checkbox of all added deals
##    Then user will be able to select only one deal at a time
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : When user has authority to select deal
##
##  Scenario Outline: Authority to select deal for <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user open co lending tab
##    And user add "<NoOfDeal>"
##    When user clicks checkbox to select deal
##    Then user will be able to select deal
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : User does not have authority to select deal
##
##  Scenario Outline: Authority to select deal for <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user open co lending tab
##    And user add "<NoOfDeal>"
##    When user clicks checkbox to select deal
##    Then user will not be able to select deal
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : User has authority to add deals, so for added deals priority auto populates in sequence
##
##  Scenario Outline: Priority for the added deals for <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And open co lending tab
##    And user add "<NoOfDeal>"
##    When user checks the priority
##    Then user will be able to see the priority added by system in a sequence of deal addition
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : User has authority to add deals, so for added deals priority can be modified
##
##  Scenario Outline: Priority modification for the added deals for <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add "<NoOfDeal>"
##    When user update the priority of any deal
##    And clicks on save
##    Then user will be able to save the priority
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : User has authority to add deals, so for added deals he modify priority where duplicate priorities not allowed
##
##  Scenario Outline: Duplicate priority not allowed for <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add "<NoOfDeal>"
##    And user add one deal with priority 2
##    When user update the priority of other deal as 2
##    And user clicks on save button
##    Then user will not be able to add two deals with same priority
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : User has authority to add deals and check sequence of added deal priority is in continuation
##
##  Scenario Outline: Sequence of priority in continuation as deals add in application for <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add "<NoOfDeal>" one by one
##    When user checks the priority sequence
##    Then then for first added deal will have priority 1 second added deal will have priority 2 third added deal will have priority 3
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : User has authority to add deals, he adds 3 deals and change their priority, post saving priority will be stamped with the deals in an application
##
##  Scenario Outline: Save updated priority sequence with deal for <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add "<NoOfDeal>" one by one
##    When user change the priority
##    And user clicks on save button
##    Then priorities will be tagged with the deals in an application
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Multiple deal addition for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user add "<NoOfDeal>" deals
##    Then user will be able to add deals one by one
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Multiple deal delete for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user add "<NoOfDeal>" deals
##    And delete "<NoOfDeal>" deal one by one
##    Then user is able to delete deals one by one
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |2       |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Confirmation message on manual deal delete for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add a deal
##    When user delete added deal
##    Then message will display whether user wants to delete the deal
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Delete Deal confirmation for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add a deal
##    When user delete added deal
##    And on confirmation message user clicks on okay to delete the deal
##    Then deal will be deleted from the application
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### User delete the deal and on confirmation message clicks on cancel
##
##  Scenario Outline: Cancel manual Delete deal for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add a deal
##    When user delete added deal
##    And on confirmation message user clicks on cancel on message to delete the deal
##    Then deal will not be deleted from the application
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : 3 deals add with priority sequence 1, 2, 3 now user delete deal with priority 2 and add new deal then priority should be 2 for the new added deal.
##
##  Scenario Outline: Sequence of priority in continuation as deals delete and add in application for <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add "<NoOfDeal>" one by one
##    And user delete the deal with priority 2
##    And user confirms the deal deletion
##    When user add new deal
##    Then the new added deal will have priority 2 in editable form
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite: For the already added deal the data has been changed in Deal Master
##
##  Scenario Outline: Refresh deal data for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user add deals
##    And click on refresh button
##    Then "<Fields>" will be refreshed as per the deal master data
##    |Fields|
##    |Deal Name|
##    |Investor Name|
##    |OwnerShip    |
##    |Percentage   |
##    |RPS          |
##    |Deal Status  |
##    |Deal Decision|
##    |Decision Reason|
##    |Decision Remarks|
##
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite: On refresh system will check if deal is inactive in deal master then same will be deleted from saved deal data
##
##  Scenario Outline: Refresh saved deal data to delete inactive deals for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user refresh the saved deal data
##    Then on refresh inactive deal will be deleted from the application saved deal grid
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite: On refresh system will check whether the deal is present in deal master or not, if not then deal will be removed from saved deal data of an application
##
##  Scenario Outline: Refresh saved deal data for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add deal data in an application
##    And delete this deal from deal master
##    When user refresh the saved deal data in an application
##    Then deal which is not present in deal master will be deleted from the saved data
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval",  "PDOC", "CLM", "Disbursal Initiation", "Disbursal Approval", "Renewal", "Committee Approval", "Enquiry", "Sent to Ops"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: View saved deal investor data for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add deal with investor data in an application
##    When user clicks on view to see the investor details of added deals
##    Then user will be able to view the investor details
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Confirmation message on changing Product for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user opens loan details
##    And clicks on sourcing Details piano bar
##    When user change the product
##    Then user will be able to see the confirmation message
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Confirmation message on changing Scheme for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user opens loan details
##    And clicks on sourcing Details piano bar
##    When user change the scheme
##    Then user will be able to see the confirmation message
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite: User has deleted the deal and on confirmation message clicks on Okay
##
##  Scenario Outline: Confirmation on delete deal message for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add deal in an application
##    When user deletes deal
##    And on confirmation message user clicks on ok button
##    Then the deals which are not mapped with the selected product along with scheme will be deleted from the application
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### User has deleted the deal and on confirmation message clicks on cancel
##
##  Scenario Outline: Cancel delete deal data for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add a deal in an application
##    When user delete deal
##    And on confirmation message user clicks on cancel
##    Then the deals will not be deleted
##    And product will be same as earlier
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: The deleted deal history in activity for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add a deal in an application
##    When deal is deleted from the application
##    And user open the activity tab
##    Then deleted deal history will be maintained in activity
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Without saving switching tab message for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user opens the tab Co Lending
##    And search and select deal but yet not saved the deal
##    When user switch the tab without saving data
##    Then user will get message
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Audit trail stamping for deal addition for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And opens tab Co Lending
##    When user add any deal in an application
##    Then The below fields will be stamped at backend
##      |Fields|
##      |user name|
##      |user ID  |
##      |stage    |
##      |datetime |
##
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Audit trail stamping for deal delete for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user add a deal in an application
##    When user delete any deal in an application
##    Then The below fields will be stamped at backend
##      |Fields|
##      |user name|
##      |user ID  |
##      |stage    |
##      |datetime |
##
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: Duplicate deals should not be allowed for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user add duplicate deal
##    Then system should throw a message stating deal is already added in the application
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: No data to save, message for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user opens tab Co Lending
##    And user search deal
##    When user clicks save without filling deal code
##    Then message will display stating There is no data to save
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite: It will be on the stages where deal tab is in editable mode
##
##  Scenario Outline: First time data available on grid for the application with <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user open tab for the first time
##    Then "<Table>" will display no data
##    |Table|
##    |Investor Details|
##    |Deal Details    |
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite: It will be on the stages where deal tab is in editable mode
##
##  Scenario Outline: Re set the deal search for application of <ProductType> product type as <ApplicantType> applicant at <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    When user selects deal
##    And clicks on reset
##    Then selected deal code will be set as blank
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval",  "PDOC", "CLM", "Disbursal Initiation", "Disbursal Approval", "Renewal", "Committee Approval", "Enquiry", "Sent to Ops"]}
### ${ApplicantType:["Indiv"]}
##
##  Scenario Outline: View saved deal investor details for application of <ProductType> product type as <ApplicantType> applicant at <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user open tab Co Lending
##    And add deal in an application
##    When user clicks on view link on the saved deals
##    Then saved deal investor data can be viewed
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : User maintain seed data for deal status with values Approved and Rejected
##
##  Scenario Outline: Deal status values from seed master <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user open co lending tab
##    And user add "<NoOfDeal>" one by one
##    When user checks the deal status values
##    Then deal status "<values>" will be coming from seed data
##    |Values|
##    |Approved|
##    |Rejected|
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : User has authority to update deal status
##
##  Scenario Outline: User authority to update deal status <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user open co lending tab
##    And user add "<NoOfDeal>" one by one
##    When user update the deal status with "<Values>"
##    Then user will be able to select either of the "<Values>"
##      |Values|
##      |Approved|
##      |Rejected|
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : User does not have authority to update deal status
##
##  Scenario Outline: User does not have authority to update deal satus <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user open co lending tab
##    And user add "<NoOfDeal>" one by one
##    When user update the deal status with "<Values>"
##    Then user will not be able to select either of the "<Values>"
##      |Values|
##      |Approved|
##      |Rejected|
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
###_____
##
##  Scenario: Deal status values from seed master
##    And user opens finnone neo common module
##    And user opens generic seed datas mater
##    And user open deal status record
##    When user add values in deal status generic seed
##    Then user will not be able to add values from front end
##
###_____
### ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : When Deal status of selected deal is Approved or Rejected then at CLM stage user will be able to send back to previous stage
##
##  Scenario Outline: Send back from CLM stage to previous stage <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user opens co lending tab
##    And user add "<NoOfDeal>"
##    And user select one deal
##    And for selected deal user update the status as "<Values>"
##    When user clicks on more actions
##    And user clicks on Send back
##    Then user will be able to send back application on "<Stages>"
##    |Stages|
##    |Credit Approval|
##    |PDoc           |
##
##    |Values|
##    |Approved|
##    |Rejected|
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : When Deal status of selected deal is Approved or Rejected then at CLM stage user will be able to MTNS to next stage
##
##  Scenario Outline: MTNS from CLM stage to next stage <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user opens co lending tab
##    And user add "<NoOfDeal>"
##    And user select one deal
##    And for selected deal user update the status as "<Values>"
##    When user clicks on Move to next stage button
##    Then user will be able to move to the next stage successfully
##      |Values|
##      |Approved|
##      |Rejected|
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Disbursal Approval"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : User has selected one deal and marked deal status as Approved and Decision as Approved at CLM stage then this deal data will flow to the Loan Book
##
##  Scenario Outline: Selected deal with approved status and decision to flow in loan book for <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user initiate disbursal
##    Then for the selected deal whose status is approved along with deal decision the the "<fields>" will go in loan book service for this deal with "<Values>"
##    |Fields                       |Values   |
##    |Co Lending Flag              |Confirmed|
##    |dealId                       |dealId   |
##    |Repayment schedule Identifier|C        |
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
### ${ApplicantType:["Indiv"]}
### Prerequisite : At CLM tab when RPS is fetched then Deal Status will be enabled
##
##  Scenario Outline: With RPS deal status is enabled for selected deal for <ProductType> and <ApplicantType> on <ApplicationStage>
##    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
##    And user opens co lending tab
##    And user add "<NoOfDeal>" deal
##    And user select one deal
##    When for selected deal user runs RPS service successfully
##    Then the deal status field will be enabled
##    Examples:
##      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
##      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
##
##
###_____
### ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
### ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : user does not have authority to update decision
#
#  Scenario Outline: user does not have authority to update deal decision on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And opens co lending tab
#    When user checks decision block
#    Then user will be not be able to update decision "<Fields>"
#      |Fields|
#      |Decision|
#      |Decision Reason|
#      |Decision Comments|
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeal|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3       |
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : User has authority for decision update and decision values maintained in generic seed datas master as Approved and Rejected
#
#  Scenario Outline: decision values from seed master on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And opens co lending tab
#    When user enter decision
#    Then user will be able to see "<Values>"
#      |Values|
#      |Approved|
#      |Rejected|
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |       |
#
##_____
## Prerequisite : Decision values maintained in Generic Seed Datas master, and it is front end non editable
#
#  Scenario: decision values from seed master on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens finnone neo common module
#    And opens generic seed datas master
#    And user opens deal decision values
#    When user adds values in the seed master for deal decision
#    Then user will not be able to add more values
#
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : Decision reason maintained in reason master and populating in the co lending tab and user has authority to update decision
#
#  Scenario Outline: Decision reason from reason master as per selected decision on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    And user enter decision "<Values>"
#    When user selects decision reasons
#    Then user will be able to view reason values coming from reason master associated with the "<Values>"
#    |Values|
#    |Approved|
#    |Rejected|
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : User select decision and add multiple reasons, Reason master has multiple reasons maintained for Decision <values>
#
#  Scenario Outline: Add multiple decision reasons on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    And user enter decision "<Values>"
#    When user selects decision reasons
#    And add "<NoOfReasons>" no of reasons
#    Then user will be able to add multiple reasons
#      |Values|
#      |Approved|
#      |Rejected|
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfReasons|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3          |
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : User select decision and add multiple other reasons, Reason master has multiple reasons maintained for Decision <values>
#
#  Scenario Outline: Add multiple decision reasons on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    And user enter decision "<Values>"
#    When user selects decision reasons as others
#    And add "<NoOfReasons>" no of reasons
#    Then user will be able to add multiple reasons
#      |Values|
#      |Approved|
#      |Rejected|
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfReasons|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3          |
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : User has authority for decision block
#
#  Scenario Outline: Decision block authority and fill decision comments on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    And user enter decision comments
#    When user enter decision comments within 4000 characters
#    Then user will be able to add decision comments
#      |Values|
#      |Approved|
#      |Rejected|
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : User has authority for decision block
#
#  Scenario Outline: Decision Comment length check on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    And user enter decision comments
#    When user enter decision comments more than 4000 characters
#    Then user will not be able to add decision comments
#      |Values|
#      |Approved|
#      |Rejected|
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfReasons|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3          |
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : user has authority for decision and fills the decision details and then save it
#
#  Scenario Outline:Save decision deatils on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    And user add "Fields"
#    When user clicks on save button
#    Then deal data will be saved successfully
#      |Fields           |
#      |Priority         |
#      |Deal Status      |
#      |Deal Selection   |
#      |Deal Decision    |
#      |Decision Reason  |
#      |Decision Comments|
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfReasons|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3          |
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : user has authority for decision, check box and deal status. User save it without filling these information then error message occures
#
#  Scenario Outline: Save button validation on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    When user does not fill "<fields>"
#    And clicks on save button
#    Then error message should come
#      |Fields|
#      |Deal Selection|
#      |Deal Status for selected deal|
#      |Deal Decision    |
#      |Decision Reason  |
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfReasons|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3          |
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : user has authority for decision, check box and deal status. User save it without filling these information then error message occures
#
#  Scenario Outline: Save button validations on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    And add "<NoOdDeals>" deals
#    When user select one deal
#    And user does not fill deal status
#    And user does not fill deal decision
#    And user does not fill decision reason
#    And user clicks on save button
#    Then error message should come
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeals|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3        |
#
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : user has authority for decision, check box and deal status. User save it without filling these information then error message occures
#
#  Scenario Outline: Save button validations on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    And add "<NoOdDeals>" deals
#    When user select one deal
#    And user fills deal status
#    And user does not fill deal decision
#    And user does not fill decision reason
#    And user clicks on save button
#    Then error message should come
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeals|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3        |
#
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Lead Details", "DDE", "Credit Approval", "Recommendation", "Reconsideration", "Tranche Approval", "CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : user has authority for decision, check box and deal status. User save it without filling these information then error message occures
#
#  Scenario Outline: Save button successful event on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    When user add "NoOfDeals" deal
#    And user update the priority of one of the deal
#    And clicks on save button
#    Then data should be saved successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeals|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3        |
#
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : user has authority for decision, check box and deal status. User clicks on MTNS without filling these information then error message occures
#
#  Scenario Outline: MTNS button validation on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    When user does not fill "<fields>"
#    And clicks on MTNS button
#    Then error message should come
#      |Fields|
#      |Deal Selection|
#      |Deal Status for selected deal|
#      |Deal Decision    |
#      |Decision Reason  |
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfReasons|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3          |
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : user has authority for decision, check box and deal status. User save it without filling these information then error message occures
#
#  Scenario Outline: MTNS button validations on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    And add "<NoOdDeals>" deals
#    When user select one deal
#    And user does not fill deal status
#    And user does not fill deal decision
#    And user does not fill decision reason
#    And user clicks on MTNS button
#    Then error message should come
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeals|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3        |
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : user has authority for decision, check box and deal status. User clicks MTNS without filling these information then error message occures
#
#  Scenario Outline: MTNS button validations on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    And add "<NoOdDeals>" deals
#    When user select one deal
#    And user does fill deal status
#    And user does not fill deal decision
#    And user does not fill decision reason
#    And user clicks on MTNS button
#    Then error message should come
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeals|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3        |
#
##_____
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite : user has authority for decision, check box and deal status. User clicks MTNS without filling these information then error message occures
#
#  Scenario Outline: MTNS button validations on <ProductType> and <ApplicantType> on <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user opens co lending tab
#    And add "<NoOdDeals>" deals
#    When user select one deal
#    And user does fill deal status
#    And user does fill deal decision
#    And user does not fill decision reason
#    And user clicks on MTNS button
#    Then error message should come
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage  |Category	|Key	|NoOfDeals|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>|		    |	    |3        |
#
##_________ CLM Tab Scenarios
#
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Pdoc"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: A new stage CLM is introduced in workflow master post PDoc stage in editable mode
#
#  Scenario Outline: A new stage CLM is introduced for <ProductType> and <ApplicantType> post Pdoc stages in editable mode and before Disbursal Stage
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user clicks on move to next stage
#    And application lands on the CLM stage
#    When user opens the CLM Stage
#    Then the stage is visible to the user in editable mode
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "AL", "Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Lead Details", "DDE", "Recommendation", "Reconsideration", "Credit Approval", "FDE", "KYC", "Credit Bureau", "Facility Initiation", "Tranche Initiation", "Tranche Approval"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: User maintain the CLM stage post <ApplicationStage> from workflow master
#
#  Scenario Outline: CLM stage configuration from workflow for <ProductType> and <ApplicantType> before Pdoc stage in editable mode
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens the CLM Stage
#    Then CLM stage should not be allowed to add before Pdoc stage
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["Disbursal Initiation", "Disbursal Approval"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: User maintain the CLM stage post DI and DA from workflow master
#
#  Scenario Outline: CLM stage configuration from workflow master post <ApplicationStage> for <ProductType> and <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens the CLM Stage
#    Then CLM stage should not be allowed to add post "<ApplicationStage>"
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Underwriter tab and Co Lending tab is seeded at CLM stage
#
#  Scenario Outline: CLM stage has Underwriter tab and Co Lending tab for <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens the "<ApplicationStage>"
#    Then the "<Tabs>" visible to the user
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|Tabs       |
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |Underwriter|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |Co Lending |
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Underwriter tab is in view mode at CLM stage
#
#  Scenario Outline: Underwriter tab in view mode <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens the "<ApplicationStage>"
#    Then the underwriter tab is in view mode
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: User maintain underwriter tab in edit mode at CLM stage from workflow master
#
#  Scenario Outline: Underwriter in edit mode from workflow master <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens the "<ApplicationStage>"
#    Then the underwriter tab is not visible in edit mode
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Co Lending tab is seeded in edit mode at CLM stage
#
#  Scenario Outline: Co Lending tab in edit mode for <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens the "<ApplicationStage>"
#    Then the Co Lending tab is visible in edit mode
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Co Lending tab is maintained in view mode at CLM stage
#
#  Scenario Outline: Co Lending tab in view mode for <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user opens the "<ApplicationStage>"
#    Then the Co Lending tab is visible in view mode
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CLM stage MTNS has event and user creates rule and apply on event.
#
#  Scenario Outline: CLM stage MTNS button has event <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user click on move to next stage button
#    Then the rules run successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Create rules - 1. if decision is Rejected, application should not move to next stage. 2.  if any deal has status not in Approved/Rejected, application should not move to next stage. 3.  if decision and status mismatch, application should not move to next stage. Now apply these rules on CLM MTNS stage
#
#  Scenario Outline: Rule run on CLM stage MTNS button for <ProductType> and <ApplicantType> at <ApplicationStage>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user select deal decision as rejected
#    When user clicks on move to next stage button
#    Then validation should come not to allow to move ahead
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
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
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: The stage is visible in Application Grid
#
#  Scenario Outline: Application visibility on Application Grid for <ProductType> and <ApplicantType> at <ApplicationStage>
#    When user search CLM stage applications on application grid
#    Then CLM stage applications are visible on the grid
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	|Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |		    |	    |
#
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## ${Category:["Multi Tranche", "Multi Asset", "OD", "VAP"]}
## Prerequisite: CLM stage will not be applicable for Multi Tranche, Multi Asset, OD and VAP applications
#
#  Scenario Outline: CLM stage not applicable for Multi Tranche, Multi Asset, OD and VAP applications for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    When user process the application
#    Then CLM stage will not be visible for this application
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CLM application with BT with top up application type
#
#  Scenario Outline: CLM application flow for BT with top up for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
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
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CLM application with BT without top up application type
#
#  Scenario Outline: CLM application with BT without top up application type for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
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
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: Application on CLM stage and user search and view the application from Enquiry screen
#
#  Scenario Outline: CLM stage visibility from Enquiry Screen for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user open enquiry menu
#    When user search application
#    Then user is able to view the application at CLM stage
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CLM stage data can be viewed at STO stage
#
#  Scenario Outline: CLM stage data visibility on STO for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user send application to STO stage
#    When user search application in STO grid
#    Then user is able to view CLM stage data in the application
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
## ${ApplicationStage:["CLM"]}
## ${ApplicantType:["Indiv"]}
## Prerequisite: CLM stage application can be viewed at Application Manager grid
#
#  Scenario Outline: CLM stage application visibility on Application Manager for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
#    And user opens application manager menu
#    When user search application at application manager
#    Then user can perform assign reassign application to other user successfully
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |<Category>|	    |
#
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
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
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
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
## ${ProductType:["Agriculture Loan", "Auto Loan", "Commercial Equipment", "Commercial Vehicle Loan", "Education Loan", "Farm Equipment", "Home Loan", "LAP", "Micro Housing Finance", "Multi Facility", "Personal Loan", "Gold Loan"]}
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
#      |Options|
#      |Send Back|
#      |Reject   |
#      |Cancel   |
#      |Hold     |
#      |Raise Query|
#      |Respond Query|
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
#    Examples:
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
#    And user clicks re assign application
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
#  Scenario Outline: re run priority from more actions for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
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
#  Scenario Outline: Send back from <ApplicationStage> to CLM stage for <ProductType> and <ApplicantType> at <ApplicationStage> for <Category>
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
#  Scenario Outline: Send back from any <ApplicationStage> to CLM stage for <ProductType> and <ApplicantType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
#    And user changes the CLM stage name in workflow master
#    When user opens the application
#    Then updated name will be visible in application flow
#    Examples:
#      |ProductType  |ApplicantType   |ApplicationStage    |Category	 |Key	|
#      |<ProductType>|<ApplicantType> |<ApplicationStage>  |          |	    |
#
#
