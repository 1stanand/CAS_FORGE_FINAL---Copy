@AuthoredBy-saloni.gupta
@ReviewedBy-
@TechReviewedBy-
@ImplementedBy-anurag.verma
@UIChange
@CAS-255760
#EpicID- CAS-253108
#StoryID- CAS-255760
@DevTrack
@GA-9.0
Feature: Feature: Facility-wise Scorecard Mapping, Execution and Display in Credit Approval

  Background:   Given user is on the CAS Login Page
	And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

# Pre-Requisites-

 #Lob configured - Yes
 #This is applicable for product type  - Multi Facility
 #Deal exists
 #4 Facilities exists - Cash Credit, Bill discounting, Bank Guarantee, Letter of Credit

        #${ApplicantType:["Individual","Non-Individual"]}
        #${ProductType:["MULF"]}

#${ApplicationStage:["Credit Approval"]}
  Scenario Outline: Deal score should be visible in the deal details
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the Deal details section is visible
	Then the Deal score should be displayed
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Credit Approval"]}
  Scenario Outline: Facility wise score should be visible in the Deal details section score after clicking on three dots
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the Deal details section is visible
	And the score indicator is there
	And user clicks on three dots
	Then the pop-up window should appear showing the Facility wise score
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Credit Approval"]}
  Scenario Outline: The score should be visible facility wise after clicking on the three dots
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the Deal details section is visible
	And the score indicator is there
	And user clicks on three dots
	Then "<FieldName>" should be visible in the table structure
	Examples:
	  | ApplicationStage   | ApplicantType | Category | Key | FieldName    |
	  | <ApplicationStage> | Individual    |          |     | Facility ID  |
	  | <ApplicationStage> | Individual    |          |     | Product Type |
	  | <ApplicationStage> | Individual    |          |     | Score(Int)   |
	  | <ApplicationStage> | Individual    |          |     | Score(Ext)   |


#${ApplicationStage:["Credit Approval"]}
  Scenario Outline:Score(Int/Ext) indicator should be visible in the Applicant's profile
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the Applicant's profile section exists
	Then Score indicator should be visible in the Applicant's profile with the three dots
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Credit Approval"]}
  Scenario Outline:Deal score should be visible in the Score(Int/Ext) in the Applicant's profile
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the Applicant's profile section exists
	And Score indicator should be visible in the Applicant's profile with the three dots
	Then the deal score should be visible
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Credit Approval"]}
  Scenario Outline: A side drawer should appear with the Deal and Facility accordions
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the Applicant's profile section exists
	And Score indicator should be visible in the Applicant's profile with the three dots
	And the user clicks on the three dots
	And the side drawer is opened
	Then the "<AccordionName>" accordion should be present
	Examples:
	  | ApplicationStage   | AccordionName | ApplicantType  | Category | Key |
	  | <ApplicationStage> | deal          | Individual     |          |     |
	  | <ApplicationStage> | facility      | Individual     |          |     |
	  | <ApplicationStage> | deal          | Non-Individual |          |     |
	  | <ApplicationStage> | facility      | Non-Individual |          |     |


#${ApplicationStage:["Credit Approval"]}
  Scenario Outline: A side pop-up window should appear with the Deal accordion expanded by default and Facility accordion collapsed
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the side drawer is opened
	Then the "<AccordionName>" should be displayed "<Action>"
	Examples:
	  | ApplicationStage   | AccordionName | ApplicantType  | Action    | Category | Key |
	  | <ApplicationStage> | deal          | Individual     | Expanded  |          |     |
	  | <ApplicationStage> | facility      | Individual     | Collapsed |          |     |
	  | <ApplicationStage> | deal          | Non-Individual | Expanded  |          |     |
	  | <ApplicationStage> | facility      | Non-Individual | Collapsed |          |     |


#${ApplicationStage:["Credit Approval"]}
  Scenario Outline: A side drawer window should appear with the Deal and Facility accordions having the fields section, rule-based, rule name, weight, score and result
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the side drawer is opened
	Then the "<FieldName>" should be displayed
	Examples:
	  | ApplicationStage   | Accordion | FieldName | ApplicantType  | Entity           | Category | Key |
	  | <ApplicationStage> | Deal      | Section   | Individual     | Deal             |          |     |
	  | <ApplicationStage> | Deal      | Rule Name | Individual     | Deal             |          |     |
	  | <ApplicationStage> | Deal      | Weight    | Individual     | Deal             |          |     |
	  | <ApplicationStage> | Deal      | Score     | Individual     | Deal             |          |     |
	  | <ApplicationStage> | Deal      | Result    | Individual     | Deal             |          |     |
	  | <ApplicationStage> | Deal      | Section   | Non-Individual | Deal             |          |     |
	  | <ApplicationStage> | Deal      | Rule Name | Non-Individual | Deal             |          |     |
	  | <ApplicationStage> | Deal      | Weight    | Non-Individual | Deal             |          |     |
	  | <ApplicationStage> | Deal      | Score     | Non-Individual | Deal             |          |     |
	  | <ApplicationStage> | Deal      | Result    | Non-Individual | Deal             |          |     |
	  | <ApplicationStage> | Deal      | Section   | Individual     | Cash Credit      |          |     |
	  | <ApplicationStage> | Deal      | Rule Name | Individual     | Cash Credit      |          |     |
	  | <ApplicationStage> | Deal      | Weight    | Individual     | Cash Credit      |          |     |
	  | <ApplicationStage> | Deal      | Score     | Individual     | Cash Credit      |          |     |
	  | <ApplicationStage> | Deal      | Result    | Individual     | Cash Credit      |          |     |
	  | <ApplicationStage> | Deal      | Section   | Non-Individual | Cash Credit      |          |     |
	  | <ApplicationStage> | Deal      | Rule Name | Non-Individual | Cash Credit      |          |     |
	  | <ApplicationStage> | Deal      | Weight    | Non-Individual | Cash Credit      |          |     |
	  | <ApplicationStage> | Deal      | Score     | Non-Individual | Cash Credit      |          |     |
	  | <ApplicationStage> | Deal      | Result    | Non-Individual | Cash Credit      |          |     |
	  | <ApplicationStage> | Deal      | Section   | Individual     | Bank Guarantee   |          |     |
	  | <ApplicationStage> | Deal      | Rule Name | Individual     | Bank Guarantee   |          |     |
	  | <ApplicationStage> | Deal      | Weight    | Individual     | Bank Guarantee   |          |     |
	  | <ApplicationStage> | Deal      | Score     | Individual     | Bank Guarantee   |          |     |
	  | <ApplicationStage> | Deal      | Result    | Individual     | Bank Guarantee   |          |     |
	  | <ApplicationStage> | Deal      | Section   | Non-Individual | Bank Guarantee   |          |     |
	  | <ApplicationStage> | Deal      | Rule Name | Non-Individual | Bank Guarantee   |          |     |
	  | <ApplicationStage> | Deal      | Weight    | Non-Individual | Bank Guarantee   |          |     |
	  | <ApplicationStage> | Deal      | Score     | Non-Individual | Bank Guarantee   |          |     |
	  | <ApplicationStage> | Deal      | Result    | Non-Individual | Bank Guarantee   |          |     |
	  | <ApplicationStage> | Deal      | Section   | Individual     | Bill discounting |          |     |
	  | <ApplicationStage> | Deal      | Rule Name | Individual     | Bill discounting |          |     |
	  | <ApplicationStage> | Deal      | Weight    | Individual     | Bill discounting |          |     |
	  | <ApplicationStage> | Deal      | Score     | Individual     | Bill discounting |          |     |
	  | <ApplicationStage> | Deal      | Result    | Individual     | Bill discounting |          |     |
	  | <ApplicationStage> | Deal      | Section   | Non-Individual | Bill discounting |          |     |
	  | <ApplicationStage> | Deal      | Rule Name | Non-Individual | Bill discounting |          |     |
	  | <ApplicationStage> | Deal      | Weight    | Non-Individual | Bill discounting |          |     |
	  | <ApplicationStage> | Deal      | Score     | Non-Individual | Bill discounting |          |     |
	  | <ApplicationStage> | Deal      | Result    | Non-Individual | Bill discounting |          |     |
	  | <ApplicationStage> | Deal      | Section   | Individual     | Letter of Credit |          |     |
	  | <ApplicationStage> | Deal      | Rule Name | Individual     | Letter of Credit |          |     |
	  | <ApplicationStage> | Deal      | Weight    | Individual     | Letter of Credit |          |     |
	  | <ApplicationStage> | Deal      | Score     | Individual     | Letter of Credit |          |     |
	  | <ApplicationStage> | Deal      | Result    | Individual     | Letter of Credit |          |     |
	  | <ApplicationStage> | Deal      | Section   | Non-Individual | Letter of Credit |          |     |
	  | <ApplicationStage> | Deal      | Rule Name | Non-Individual | Letter of Credit |          |     |
	  | <ApplicationStage> | Deal      | Weight    | Non-Individual | Letter of Credit |          |     |
	  | <ApplicationStage> | Deal      | Score     | Non-Individual | Letter of Credit |          |     |
	  | <ApplicationStage> | Deal      | Result    | Non-Individual | Letter of Credit |          |     |


## Invalid Scenario: As it depends on screen size
#${ApplicationStage:["Credit Approval"]}
#  Scenario Outline: Scrollbar appears when more than 3 facilities exist
#	And the number of facilities associated with the deal is more than 3 in number
#	When the user opens the score section
#	Then a vertical scrollbar should be displayed for the facility list
#	Examples:
#	  |ApplicationStage  |ApplicantType |Category|Key|
#	  |<ApplicationStage>|Individual    |        |   |
#	  |<ApplicationStage>|Non-Individual|        |   |


#${ApplicationStage:["Credit Approval"]}
  Scenario Outline: The View details button should exist in the score side drawer
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the side drawer is opened
	Then the View details hyperlink should be available
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Credit Approval"]}
  Scenario Outline: The modal window should appear after clicking on the View details under the Credit Score accordion
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the side drawer is opened
	And the View details hyperlink should be available
	And user clicks on the View details button
	Then the modal window Score Card details appear on the screen
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Credit Approval"]}
  Scenario Outline: Viewing detailed scores through View Details in Credit Approval application
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the modal window Score Card details appear on the screen
	Then in the Internal score the "<AccordionName>" should be "<Action>" by default
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key | AccordionName    | Action    |
	  | <ApplicationStage> | Individual     |          |     | Deal             | Expanded  |
	  | <ApplicationStage> | Non-Individual |          |     | Deal             | Expanded  |
	  | <ApplicationStage> | Individual     |          |     | Cash Credit      | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Cash Credit      | Collapsed |
	  | <ApplicationStage> | Individual     |          |     | Bill discounting | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Bill discounting | Collapsed |
	  | <ApplicationStage> | Individual     |          |     | Letter of Credit | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Letter of Credit | Collapsed |
	  | <ApplicationStage> | Individual     |          |     | Bank Guarantee   | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Bank Guarantee   | Collapsed |


#${ApplicationStage:["Credit Approval"]}
  Scenario Outline: The detailed scores should be visible for the deal and facility
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the modal window Score Card details appear on the screen
	And the deal level accordion is expanded
	And the Primary Applicant accordion is expanded
	And the Applicant Name accordion is expanded
	And the Personal score accordion is expanded
	Then the "<FieldName>" should be displayed in the "<AccordionName>"
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key | AccordionName    | FieldName     |
	  | <ApplicationStage> | Individual     |          |     | Deal             | Section Name  |
	  | <ApplicationStage> | Individual     |          |     | Deal             | Rule based    |
	  | <ApplicationStage> | Individual     |          |     | Deal             | Section Score |
	  | <ApplicationStage> | Individual     |          |     | Cash Credit      | Section Name  |
	  | <ApplicationStage> | Individual     |          |     | Cash Credit      | Rule based    |
	  | <ApplicationStage> | Individual     |          |     | Cash Credit      | Section Score |
	  | <ApplicationStage> | Individual     |          |     | Bank Guarantee   | Section Name  |
	  | <ApplicationStage> | Individual     |          |     | Bank Guarantee   | Rule based    |
	  | <ApplicationStage> | Individual     |          |     | Bank Guarantee   | Section Score |
	  | <ApplicationStage> | Individual     |          |     | Bill discounting | Section Name  |
	  | <ApplicationStage> | Individual     |          |     | Bill discounting | Rule based    |
	  | <ApplicationStage> | Individual     |          |     | Bill discounting | Section Score |
	  | <ApplicationStage> | Individual     |          |     | Letter of Credit | Section Name  |
	  | <ApplicationStage> | Individual     |          |     | Letter of Credit | Rule based    |
	  | <ApplicationStage> | Individual     |          |     | Letter of Credit | Section Score |
	  | <ApplicationStage> | Non-Individual |          |     | Deal             | Section Name  |
	  | <ApplicationStage> | Non-Individual |          |     | Deal             | Rule based    |
	  | <ApplicationStage> | Non-Individual |          |     | Deal             | Section Score |
	  | <ApplicationStage> | Non-Individual |          |     | Cash Credit      | Section Name  |
	  | <ApplicationStage> | Non-Individual |          |     | Cash Credit      | Rule based    |
	  | <ApplicationStage> | Non-Individual |          |     | Cash Credit      | Section Score |
	  | <ApplicationStage> | Non-Individual |          |     | Bank Guarantee   | Section Name  |
	  | <ApplicationStage> | Non-Individual |          |     | Bank Guarantee   | Rule based    |
	  | <ApplicationStage> | Non-Individual |          |     | Bank Guarantee   | Section Score |
	  | <ApplicationStage> | Non-Individual |          |     | Bill discounting | Section Name  |
	  | <ApplicationStage> | Non-Individual |          |     | Bill discounting | Rule based    |
	  | <ApplicationStage> | Non-Individual |          |     | Bill discounting | Section Score |
	  | <ApplicationStage> | Non-Individual |          |     | Letter of Credit | Section Name  |
	  | <ApplicationStage> | Non-Individual |          |     | Letter of Credit | Rule based    |
	  | <ApplicationStage> | Non-Individual |          |     | Letter of Credit | Section Score |


#${ApplicationStage:["Credit Approval"]}
  Scenario Outline: Rerun policy in the side drawer of score(int/ext) should be working
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the Applicant's profile section exists
	And Score indicator should be visible in the Applicant's profile with the three dots
	And the user clicks on the three dots
	And the side drawer is opened
	And the user clicks on the rerun button
	Then the score card details should get updated
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Tranche Approval"]}
  Scenario Outline:Deal score should be visible in the deal details on Tranche approval
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the Deal details section is visible
	Then the Deal score should be displayed
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Tranche Approval"]}
  Scenario Outline: Cash Credit score should be visible in the Deal details section score after clicking on three dots
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the Deal details section is visible
	And the score indicator is there
	And user clicks on three dots
	Then the pop-up window should appear showing the Cash Credit score
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Tranche Approval"]}
  Scenario Outline: The score should be visible for the linked facility after clicking on the three dots
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the Deal details section is visible
	And the score indicator is there
	And user clicks on three dots
	Then "<FieldName>" should be visible in the table structure for Cash Credit
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key | FieldName    |
	  | <ApplicationStage> | Individual     |          |     | Facility ID  |
	  | <ApplicationStage> | Non-Individual |          |     | Product Type |
	  | <ApplicationStage> | Non-Individual |          |     | Score(Int)   |
	  | <ApplicationStage> | Non-Individual |          |     | Score(Ext)   |


#${ApplicationStage:["Tranche Approval"]}
  Scenario Outline:Score(Int/Ext) indicator should be visible in the Applicant's profile
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the Applicant's profile section exists
	Then the Score indicator should be visible in the Applicant's profile with the three dots
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Tranche Approval"]}
  Scenario Outline:Deal score should be visible in the Score(Int/Ext) in the Applicant's profile
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the Applicant's profile section exists
	And the Score indicator should be visible in the Applicant's profile with the three dots
	Then deal score should be visible
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Tranche Approval"]}
  Scenario Outline: A side drawer should appear with the Deal and Facility accordions
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the Applicant's profile section exists
	And the Score indicator should be visible in the Applicant's profile with the three dots
	And user clicks on the three dots
	And side drawer is opened
	Then the "<AccordionName>" accordion should be present
	Examples:
	  | ApplicationStage | AccordionName | ApplicantType  | Category | Key |
	  | ApplicationStage | deal          | Individual     |          |     |
	  | ApplicationStage | Cash Credit   | Individual     |          |     |
	  | ApplicationStage | deal          | Non-Individual |          |     |
	  | ApplicationStage | Cash Credit   | Non-Individual |          |     |


#${ApplicationStage:["Tranche Approval"]}
  Scenario Outline: A side pop-up window should appear with the Deal accordion expanded by default and Facility accordion collapsed
#	When the user opens the side drawer
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And side drawer is opened
	Then the "<AccordionName>" should be displayed "<Action>"
	Examples:
	  | ApplicationStage | AccordionName | ApplicantType  | Action    | Category | Key |
	  | ApplicationStage | deal          | Individual     | Expanded  |          |     |
	  | ApplicationStage | Cash Credit   | Individual     | Collapsed |          |     |
	  | ApplicationStage | deal          | Non-Individual | Expanded  |          |     |
	  | ApplicationStage | Cash Credit   | Non-Individual | Collapsed |          |     |


#${ApplicationStage:["Tranche Approval"]}
  Scenario Outline: A side pop-up window should appear with the Deal and Facility accordions having the fields section, rule-based, rule name, weight, score and result
#	When the user opens the side drawer
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And side drawer is opened
	And the Deal accordion is expanded
	And the Cash Credit Accordion is expanded
	Then the "<FieldName>" should be displayed for "<Entity>"
	Examples:
	  | ApplicationStage | Accordion | FieldName | ApplicantType  | Entity      | Category | Key |
	  | ApplicationStage | Deal      | Section   | Individual     | Deal        |          |     |
	  | ApplicationStage | Deal      | Rule Name | Individual     | Deal        |          |     |
	  | ApplicationStage | Deal      | Weight    | Individual     | Deal        |          |     |
	  | ApplicationStage | Deal      | Score     | Individual     | Deal        |          |     |
	  | ApplicationStage | Deal      | Result    | Individual     | Deal        |          |     |
	  | ApplicationStage | Deal      | Section   | Non-Individual | Deal        |          |     |
	  | ApplicationStage | Deal      | Rule Name | Non-Individual | Deal        |          |     |
	  | ApplicationStage | Deal      | Weight    | Non-Individual | Deal        |          |     |
	  | ApplicationStage | Deal      | Score     | Non-Individual | Deal        |          |     |
	  | ApplicationStage | Deal      | Result    | Non-Individual | Deal        |          |     |
	  | ApplicationStage | Deal      | Section   | Individual     | Cash Credit |          |     |
	  | ApplicationStage | Deal      | Rule Name | Individual     | Cash Credit |          |     |
	  | ApplicationStage | Deal      | Weight    | Individual     | Cash Credit |          |     |
	  | ApplicationStage | Deal      | Score     | Individual     | Cash Credit |          |     |
	  | ApplicationStage | Deal      | Result    | Individual     | Cash Credit |          |     |
	  | ApplicationStage | Deal      | Section   | Non-Individual | Cash Credit |          |     |
	  | ApplicationStage | Deal      | Rule Name | Non-Individual | Cash Credit |          |     |
	  | ApplicationStage | Deal      | Weight    | Non-Individual | Cash Credit |          |     |
	  | ApplicationStage | Deal      | Score     | Non-Individual | Cash Credit |          |     |
	  | ApplicationStage | Deal      | Result    | Non-Individual | Cash Credit |          |     |


# Already done in previous scenarios
##${ApplicationStage:["Credit Approval"]}
#  Scenario Outline: Rerun policy in the side drawer of score(int/ext) should be working for Facility
#	When the user clicks on the rerun button
#	Then the score card details should get updated for Facility
#	Examples:
#	  |ApplicationStage  |ApplicantType |Category|Key|
#	  |<ApplicationStage>|Individual    |        |   |
#	  |<ApplicationStage>|Non-Individual|        |   |


## Already handled in further scenario
#${ApplicationStage:["Committee Approval"]}
#  Scenario Outline: The application should be on the Committee Approval stage
#	And user is on Dashboard
#	When user goes to Applications
#	And clicks on the application number hyperlink of Committee Approval stage
#	Then the Committee Approval stage should get loaded
#	Examples:
#	  |ApplicationStage  |ApplicantType |Category|Key|
#	  |<ApplicationStage>|Individual    |        |   |
#	  |<ApplicationStage>|Non-Individual|        |   |


#${ApplicationStage:["Committee Approval"]}
  Scenario Outline: The Internal score should be displayed under the Credit Score sub-accordion
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And user open committee approval grid
	And search the initiated committee approval application
	And user opens the initiated committee approval application for current user
	And the user expands the Intent Indicators accordion
	And expands the Credit Score accordion
	Then the Internal score rating of deal should be displayed
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Committee Approval"]}
  Scenario Outline: The View details button should exist under the Credit score sub-accordion
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the user expands the Intent Indicators accordion
	And expands the Credit Score accordion
	Then the View details hyperlink should be available on Committee approval
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Committee Approval"]}
  Scenario Outline: The modal window should appear after clicking on the View details under the Credit Score accordion on Committee Approval
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the user expands the Intent Indicators accordion
	And expands the Credit Score accordion
	And clicks on the View details button at Committee approval
	Then the modal window Score Card details appear on the screen on App update recommendation stage
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["Committee Approval"]}
  Scenario Outline: Viewing detailed scores through View Details in Committee Approval application
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the modal window Score Card details appear on the screen on App update recommendation stage
	Then in the Internal score the "<AccordionName>" should be "<Action>" by default
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key | AccordionName    | Action    |
	  | <ApplicationStage> | Individual     |          |     | Deal             | Expanded  |
	  | <ApplicationStage> | Non-Individual |          |     | Deal             | Expanded  |
	  | <ApplicationStage> | Individual     |          |     | Cash Credit      | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Cash Credit      | Collapsed |
	  | <ApplicationStage> | Individual     |          |     | Bill discounting | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Bill discounting | Collapsed |
	  | <ApplicationStage> | Individual     |          |     | Letter of Credit | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Letter of Credit | Collapsed |
	  | <ApplicationStage> | Individual     |          |     | Bank Guarantee   | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Bank Guarantee   | Collapsed |


#${ApplicationStage:["Committee Approval"]}
  Scenario Outline: The detailed scores should be visible for the deal and facility on Committee Approval
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the modal window Score Card details appear on the screen on App update recommendation stage
	And the deal level accordion is expanded
	And the Primary Applicant accordion is expanded
	And the Applicant Name accordion is expanded
	And the Personal score accordion is expanded
	Then the "<FieldName>" should be displayed in the "<AccordionName>"
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key | AccordionName    | FieldName     |
	  | <ApplicationStage> | Individual     |          |     | Deal             | Section Name  |
	  | <ApplicationStage> | Individual     |          |     | Deal             | Rule based    |
	  | <ApplicationStage> | Individual     |          |     | Deal             | Section Score |
	  | <ApplicationStage> | Individual     |          |     | Cash Credit      | Section Name  |
	  | <ApplicationStage> | Individual     |          |     | Cash Credit      | Rule based    |
	  | <ApplicationStage> | Individual     |          |     | Cash Credit      | Section Score |
	  | <ApplicationStage> | Individual     |          |     | Bank Guarantee   | Section Name  |
	  | <ApplicationStage> | Individual     |          |     | Bank Guarantee   | Rule based    |
	  | <ApplicationStage> | Individual     |          |     | Bank Guarantee   | Section Score |
	  | <ApplicationStage> | Individual     |          |     | Bill discounting | Section Name  |
	  | <ApplicationStage> | Individual     |          |     | Bill discounting | Rule based    |
	  | <ApplicationStage> | Individual     |          |     | Bill discounting | Section Score |
	  | <ApplicationStage> | Individual     |          |     | Letter of Credit | Section Name  |
	  | <ApplicationStage> | Individual     |          |     | Letter of Credit | Rule based    |
	  | <ApplicationStage> | Individual     |          |     | Letter of Credit | Section Score |
	  | <ApplicationStage> | Non-Individual |          |     | Deal             | Section Name  |
	  | <ApplicationStage> | Non-Individual |          |     | Deal             | Rule based    |
	  | <ApplicationStage> | Non-Individual |          |     | Deal             | Section Score |
	  | <ApplicationStage> | Non-Individual |          |     | Cash Credit      | Section Name  |
	  | <ApplicationStage> | Non-Individual |          |     | Cash Credit      | Rule based    |
	  | <ApplicationStage> | Non-Individual |          |     | Cash Credit      | Section Score |
	  | <ApplicationStage> | Non-Individual |          |     | Bank Guarantee   | Section Name  |
	  | <ApplicationStage> | Non-Individual |          |     | Bank Guarantee   | Rule based    |
	  | <ApplicationStage> | Non-Individual |          |     | Bank Guarantee   | Section Score |
	  | <ApplicationStage> | Non-Individual |          |     | Bill discounting | Section Name  |
	  | <ApplicationStage> | Non-Individual |          |     | Bill discounting | Rule based    |
	  | <ApplicationStage> | Non-Individual |          |     | Bill discounting | Section Score |
	  | <ApplicationStage> | Non-Individual |          |     | Letter of Credit | Section Name  |
	  | <ApplicationStage> | Non-Individual |          |     | Letter of Credit | Rule based    |
	  | <ApplicationStage> | Non-Individual |          |     | Letter of Credit | Section Score |


## Already handled in user opens an application of..... step
#${ApplicationStage:["App Update Recommendation"]}
#  Scenario Outline: The application should be on the App Update Recommendation stage
#	And user is on Dashboard
#	When user goes to Applications
#	And clicks on the application number hyperlink of App Update Recommendation stage
#	Then the App Update Recommendation stage should get loaded
#	Examples:
#	  |ApplicationStage  |ApplicantType |Category|Key|
#	  |<ApplicationStage>|Individual    |        |   |
#	  |<ApplicationStage>|Non-Individual|        |   |


#${ApplicationStage:["App Update Recommendation"]}
  Scenario Outline: The Internal score should be displayed under the Credit Score sub-accordion on App update recommendation
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the user expands the Intent Indicators accordion
	And expands the Credit Score accordion
	Then the Internal score rating of deal should be displayed
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["App Update Recommendation"]}
  Scenario Outline: The View details button should exist under the Credit score sub-accordion on App update recommendation
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the user expands the Intent Indicators accordion
	And expands the Credit Score accordion
	Then the View details hyperlink should be available on App update recommendation stage
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["App Update Recommendation"]}
  Scenario Outline: The score should get updated of the Deal after clicking on the Rerun Credit score button
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the user expands the Intent Indicators accordion
	And expands the Credit Score accordion
	And click on the Rerun credit score
	Then the score should get updated
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["App Update Recommendation"]}
  Scenario Outline: The modal window should appear after clicking on the View details under the Credit Score accordion on App update recommendation
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the user expands the Intent Indicators accordion
	And expands the Credit Score accordion
	And clicks on the View details button
	Then the modal window Score Card details appear on the screen on App update recommendation stage
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["App Update Recommendation"]}
  Scenario Outline: Viewing detailed scores through View Details in App Update Recommendation application
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the modal window Score Card details appear on the screen on App update recommendation stage
	Then in the Internal score the "<AccordionName>" should be "<Action>" by default
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key | AccordionName    | Action    |
	  | <ApplicationStage> | Individual     |          |     | Deal             | Expanded  |
	  | <ApplicationStage> | Non-Individual |          |     | Deal             | Expanded  |
	  | <ApplicationStage> | Individual     |          |     | Cash Credit      | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Cash Credit      | Collapsed |
	  | <ApplicationStage> | Individual     |          |     | Bill discounting | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Bill discounting | Collapsed |
	  | <ApplicationStage> | Individual     |          |     | Letter of Credit | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Letter of Credit | Collapsed |
	  | <ApplicationStage> | Individual     |          |     | Bank Guarantee   | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Bank Guarantee   | Collapsed |


#${ApplicationStage:["App Update Recommendation"]}
  Scenario Outline: The detailed scores should be visible for the deal and facility on App update recommendation
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the modal window Score Card details appear on the screen on App update recommendation stage
	And the deal level accordion is expanded
	And the Primary Applicant accordion is expanded
	And the Applicant Name accordion is expanded
	And the Personal score accordion is expanded
	Then the "<FieldName>" should be displayed in the "<AccordionName>"
	Examples:
	  | ApplicationStage   | ApplicantType | Category | Key | AccordionName    | FieldName     |
	  | <ApplicationStage> | Individual    |          |     | Deal             | Section Name  |
	  | <ApplicationStage> | Individual    |          |     | Deal             | Rule based    |
	  | <ApplicationStage> | Individual    |          |     | Deal             | Section Score |
	  | <ApplicationStage> | Individual    |          |     | Cash Credit      | Section Name  |
	  | <ApplicationStage> | Individual    |          |     | Cash Credit      | Rule based    |
	  | <ApplicationStage> | Individual    |          |     | Cash Credit      | Section Score |
	  | <ApplicationStage> | Individual    |          |     | Bank Guarantee   | Section Name  |
	  | <ApplicationStage> | Individual    |          |     | Bank Guarantee   | Rule based    |
	  | <ApplicationStage> | Individual    |          |     | Bank Guarantee   | Section Score |
	  | <ApplicationStage> | Individual    |          |     | Bill discounting | Section Name  |
	  | <ApplicationStage> | Individual    |          |     | Bill discounting | Rule based    |
	  | <ApplicationStage> | Individual    |          |     | Bill discounting | Section Score |
	  | <ApplicationStage> | Individual    |          |     | Letter of Credit | Section Name  |
	  | <ApplicationStage> | Individual    |          |     | Letter of Credit | Rule based    |
	  | <ApplicationStage> | Individual    |          |     | Letter of Credit | Section Score |


## Already handled in user opens an application of..... step
#${ApplicationStage:["App Update Approval"]}
#  Scenario Outline: The application should be on the App Update Approval stage
#	And user is on Dashboard
#	When user goes to Applications
#	And clicks on the application number hyperlink of App Update Approval stage
#	Then the App Update Approval stage should get loaded
#	Examples:
#	  |ApplicationStage  |ApplicantType |Category|Key|
#	  |<ApplicationStage>|Individual    |        |   |
#	  |<ApplicationStage>|Non-Individual|        |   |


#${ApplicationStage:["App Update Approval"]}
  Scenario Outline: The Internal score should be displayed under the Credit Score sub-accordion on App update approval
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the user expands the Intent Indicators accordion
	And expands the Credit Score accordion
	Then the Internal score rating of deal should be displayed
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["App Update Approval"]}
  Scenario Outline: The View details button should exist under the Credit score sub-accordion on App update approval
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the user expands the Intent Indicators accordion
	And expands the Credit Score accordion
	Then the View details hyperlink should be available on App update recommendation stage
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["App Update Approval"]}
  Scenario Outline: The score should get updated of the Deal after clicking on the Rerun Credit score button on App update approval
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the user expands the Intent Indicators accordion
	And expands the Credit Score accordion
	And click on the Rerun credit score
	Then the score should get updated
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["App Update Approval"]}
  Scenario Outline: The modal window should appear after clicking on the View details under the Credit Score accordion on App update approval
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the user expands the Intent Indicators accordion
	And expands the Credit Score accordion
	And clicks on the View details button
	Then the modal window Score Card details appear on the screen on App update recommendation stage
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key |
	  | <ApplicationStage> | Individual     |          |     |
	  | <ApplicationStage> | Non-Individual |          |     |


#${ApplicationStage:["App Update Approval"]}
  Scenario Outline: Viewing detailed scores through View Details in App Update Approval application
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the modal window Score Card details appear on the screen on App update recommendation stage
	Then in the Internal score the "<AccordionName>" should be "<Action>" by default
	Examples:
	  | ApplicationStage   | ApplicantType  | Category | Key | AccordionName    | Action    |
	  | <ApplicationStage> | Individual     |          |     | Deal             | Expanded  |
	  | <ApplicationStage> | Non-Individual |          |     | Deal             | Expanded  |
	  | <ApplicationStage> | Individual     |          |     | Cash Credit      | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Cash Credit      | Collapsed |
	  | <ApplicationStage> | Individual     |          |     | Bill discounting | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Bill discounting | Collapsed |
	  | <ApplicationStage> | Individual     |          |     | Letter of Credit | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Letter of Credit | Collapsed |
	  | <ApplicationStage> | Individual     |          |     | Bank Guarantee   | Collapsed |
	  | <ApplicationStage> | Non-Individual |          |     | Bank Guarantee   | Collapsed |


#${ApplicationStage:["App Update Approval"]}
  Scenario Outline: The detailed scores should be visible for the deal and facility on App update approval
	When user opens an application of "MULF" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
	And the modal window Score Card details appear on the screen on App update recommendation stage
	And the deal level accordion is expanded
	And the Primary Applicant accordion is expanded
	And the Applicant Name accordion is expanded
	And the Personal score accordion is expanded
	Then the "<FieldName>" should be displayed in the "<AccordionName>"
	Examples:
	  | ApplicationStage   | ApplicantType | Category | Key | AccordionName    | FieldName     |
	  | <ApplicationStage> | Individual    |          |     | Deal             | Section Name  |
	  | <ApplicationStage> | Individual    |          |     | Deal             | Rule based    |
	  | <ApplicationStage> | Individual    |          |     | Deal             | Section Score |
	  | <ApplicationStage> | Individual    |          |     | Cash Credit      | Section Name  |
	  | <ApplicationStage> | Individual    |          |     | Cash Credit      | Rule based    |
	  | <ApplicationStage> | Individual    |          |     | Cash Credit      | Section Score |
	  | <ApplicationStage> | Individual    |          |     | Bank Guarantee   | Section Name  |
	  | <ApplicationStage> | Individual    |          |     | Bank Guarantee   | Rule based    |
	  | <ApplicationStage> | Individual    |          |     | Bank Guarantee   | Section Score |
	  | <ApplicationStage> | Individual    |          |     | Bill discounting | Section Name  |
	  | <ApplicationStage> | Individual    |          |     | Bill discounting | Rule based    |
	  | <ApplicationStage> | Individual    |          |     | Bill discounting | Section Score |
	  | <ApplicationStage> | Individual    |          |     | Letter of Credit | Section Name  |
	  | <ApplicationStage> | Individual    |          |     | Letter of Credit | Rule based    |
	  | <ApplicationStage> | Individual    |          |     | Letter of Credit | Section Score |


## Alias of App update recommendation stage
#${ApplicationStage:["Review Application"]}
#  Scenario Outline: The application should be on the Review Application stage
#	And user is on Dashboard
#	When user goes to Applications
#	And clicks on the application number hyperlink of Review Application stage
#	Then the Review Application stage should get loaded
#	Examples:
#	  |ApplicationStage  |ApplicantType |Category|Key|
#	  |<ApplicationStage>|Individual    |        |   |
#	  |<ApplicationStage>|Non-Individual|        |   |


## Alias of App update recommendation stage
#${ApplicationStage:["Review Application"]}
#  Scenario Outline: The Internal score should be displayed under the Credit Score sub-accordion
#	When the user expands the Intent Indicators accordion
#	And expands the Credit Score accordion
#	Then the Internal score rating of deal should be displayed
#	Examples:
#	  |ApplicationStage  |ApplicantType |Category|Key|
#	  |<ApplicationStage>|Individual    |        |   |
#	  |<ApplicationStage>|Non-Individual|        |   |


## Alias of App update recommendation stage
#${ApplicationStage:["Review Application"]}
#  Scenario Outline: The View details button should exist under the Credit score sub-accordion
#	When the user expands the Intent Indicators accordion
#	And expands the Credit Score accordion
#	Then the View details hyperlink should be available
#	Examples:
#	  |ApplicationStage  |ApplicantType |Category|Key|
#	  |<ApplicationStage>|Individual    |        |   |
#	  |<ApplicationStage>|Non-Individual|        |   |


## Alias of App update recommendation stage
#${ApplicationStage:["Review Application"]}
#  Scenario Outline: The modal window should appear after clicking on the View details under the Credit Score accordion
#	When the user expands the Intent Indicators accordion
#	And expands the Credit Score accordion
#	And clicks on the View details button
#	Then the modal window Score Card details appear on the screen
#	Examples:
#	  |ApplicationStage  |ApplicantType |Category|Key|
#	  |<ApplicationStage>|Individual    |        |   |
#	  |<ApplicationStage>|Non-Individual|        |   |


## Duplicate scenario
#${ApplicationStage:["App Update Recommendation"]}
#  Scenario Outline: The score should get updated of the Deal after clicking on the Rerun Credit score button
#	When the user expands the Intent Indicators accordion
#	And expands the Credit Score accordion
#	And click on the Rerun credit score
#	Then the score should get updated


## Alias of App update recommendation stage
#${ApplicationStage:["Review Application"]}
#  Scenario Outline: Viewing detailed scores through View Details in Review Application
#	And the user is on the Review Application screen
#	When the user clicks the View Details button
#	And the modal window Score Card details appear on the screen
#	Then in the Internal score the <AccordionName> should be <Action> by default
#	Examples:
#	  |ApplicationStage  |ApplicantType |Category|Key|AccordionName      |Action  |
#	  |<ApplicationStage>|Individual    |        |   |Deal               |Expanded|
#	  |<ApplicationStage>|Non-Individual|        |   |Deal               |Expanded|
#	  |<ApplicationStage>|Individual    |        |   |Cash Credit        |Expanded|
#	  |<ApplicationStage>|Non-Individual|        |   |Cash Credit        |Expanded|
#	  |<ApplicationStage>|Individual    |        |   |Bill discounting   |Expanded|
#	  |<ApplicationStage>|Non-Individual|        |   |Bill discounting   |Expanded|
#	  |<ApplicationStage>|Individual    |        |   |Letter of Credit   |Expanded|
#	  |<ApplicationStage>|Non-Individual|        |   |Letter of Credit   |Expanded|
#	  |<ApplicationStage>|Individual    |        |   |Bank Guarantee     |Expanded|
#	  |<ApplicationStage>|Non-Individual|        |   |Bank Guarantee     |Expanded|


## Alias of App update recommendation stage
#${ApplicationStage:["Review Application"]}
#  Scenario Outline: The detailed scores should be visible for the deal and facility
#	And the user is on the Review Application screen
#	When the user clicks the View Details button
#	And the deal level accordion is expanded
#	And the Primary Applicant accordion is expanded
#	And the Applicant Name accordion is expanded
#	And the Personal score accordion is expanded
#	Then the <FieldName> should be displayed in the <AccordionName>
#
#	Examples: |ApplicationStage  |ApplicantType |Category|Key|AccordionName      |Field Name   |
#	|<ApplicationStage>|Individual    |        |   |Deal               |Section Name |
#	|<ApplicationStage>|Individual    |        |   |Deal               |Rule based   |
#	|<ApplicationStage>|Individual    |        |   |Deal               |Section Score|
#	|<ApplicationStage>|Individual    |        |   |Cash Credit        |Section Name |
#	|<ApplicationStage>|Individual    |        |   |Cash Credit        |Rule based   |
#	|<ApplicationStage>|Individual    |        |   |Cash Credit        |Section Score|
#	|<ApplicationStage>|Individual    |        |   |Bank Guarantee     |Section Name |
#	|<ApplicationStage>|Individual    |        |   |Bank Guarantee     |Rule based   |
#	|<ApplicationStage>|Individual    |        |   |Bank Guarantee     |Section Score|
#	|<ApplicationStage>|Individual    |        |   |Bill discounting   |Section Name |
#	|<ApplicationStage>|Individual    |        |   |Bill discounting   |Rule based   |
#	|<ApplicationStage>|Individual    |        |   |Bill discounting   |Section Score|
#	|<ApplicationStage>|Individual    |        |   |Letter of Credit   |Section Name |
#	|<ApplicationStage>|Individual    |        |   |Letter of Credit   |Rule based   |
#	|<ApplicationStage>|Individual    |        |   |Letter of Credit   |Section Score|