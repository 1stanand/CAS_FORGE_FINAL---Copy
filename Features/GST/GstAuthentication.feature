@AuthoredBy-komal
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
@DevTrack
  @Order
  @GA-9.0
  @CAS-266490
#StoryID: CAS-266490
#Pre-requisite: GST tab is added from the workflow master
# LogicalID: PL00001

Feature: Interface: GST Consolidation - Karza

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


#Base Scenario for GST authentication tab
  Scenario Outline: Validate GST authentication data to be visible for for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    And all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    When user add another "<ApplicantType>" applicant
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    Then GST details authentication should be visible
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant       |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant       |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant       |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant       |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Co-Applicant       |
      | FAS00001  |Finance Against Securities| DDE           | all          | Primary Applicant  |
      | FAS00001  |Finance Against Securities| DDE           | all          | Co-Applicant       |
      |CC00002    | Credit Card           | CCDE         | all              | Primary Applicant  |
      |CC00002    | Credit Card           | CCDE         | all              | Co-Applicant       |


#Scenario for configuration of GST Consolidation
#Pre-requisite: Configuration for GST consolidation button is set as true in DB
#Pre-requisite: user should have the VIEW_GST_CONSOLIDATION_BUTTON authority
  Scenario Outline: Validate GST consolidation button to be visible on the basis of  for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
   Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    Then GST consolidation button to be visible in enabled mode
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant       |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant       |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant       |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant       |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Co-Applicant       |
      | FAS00001  |Finance Against Securities| DDE           | all          | Primary Applicant  |
      | FAS00001  |Finance Against Securities| DDE           | all          | Co-Applicant       |
      |CC00002    | Credit Card           | CCDE         | all              | Primary Applicant  |
      |CC00002    | Credit Card           | CCDE         | all              | Co-Applicant       |


   #Scenario for configuration of GST Consolidation
#Pre-requisite: Configuration for GST consolidation button is set as true in DB
#Pre-requisite: user should have the VIEW_GST_CONSOLIDATION_BUTTON authority
  Scenario Outline: Validate GST consolidation button to be visible on the basis of  for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    Then GST consolidation button to be visible in enabled mode
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant       |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant       |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant       |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant       |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Co-Applicant       |
      | FAS00001  |Finance Against Securities| DDE           | all          | Primary Applicant  |
      | FAS00001  |Finance Against Securities| DDE           | all          | Co-Applicant       |
      |CC00002    | Credit Card           | CCDE         | all              | Primary Applicant  |
      |CC00002    | Credit Card           | CCDE         | all              | Co-Applicant       |


    #Scenario for configuration of GST Consolidation
#Pre-requisite: Configuration for GST consolidation button is set as false in DB
  #Pre-requisite: User should have the VIEW_GST_CONSOLIDATION_BUTTON authority
  Scenario Outline: Validate GST consolidation button to be visible on the basis of  for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    Then GST consolidation button should not be visible
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant       |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant       |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant       |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant       |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Co-Applicant       |
      | FAS00001  |Finance Against Securities| DDE           | all          | Primary Applicant  |
      | FAS00001  |Finance Against Securities| DDE           | all          | Co-Applicant       |
      |CC00002    | Credit Card           | CCDE         | all              | Primary Applicant  |
      |CC00002    | Credit Card           | CCDE         | all              | Co-Applicant       |





        #Scenario for configuration of GST Consolidation
#Pre-requisite: Configuration for GST consolidation button is set as true in DB
  #Pre-requisite: user don't have VIEW_GST_CONSOLIDATION_BUTTON authority
  Scenario Outline: Validate GST consolidation button to be visible on the basis of  for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    Then GST consolidation button should not be visible
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant       |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant       |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant       |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant       |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Co-Applicant       |
      | FAS00001  |Finance Against Securities| DDE           | all          | Primary Applicant  |
      | FAS00001  |Finance Against Securities| DDE           | all          | Co-Applicant       |
      |CC00002    | Credit Card           | CCDE         | all              | Primary Applicant  |
      |CC00002    | Credit Card           | CCDE         | all              | Co-Applicant       |




      #Scenario for configuration of GST Consolidation
#Pre-requisite: Configuration for GST consolidation button is set as false in DB
  #Pre-requisite: user don't have VIEW_GST_CONSOLIDATION_BUTTON authority
  Scenario Outline: Validate GST consolidation button to be visible on the basis of  for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    Then GST consolidation button should not be visible
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant       |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant       |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant       |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant       |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Co-Applicant       |
      | FAS00001  |Finance Against Securities| DDE           | all          | Primary Applicant  |
      | FAS00001  |Finance Against Securities| DDE           | all          | Co-Applicant       |
      |CC00002    | Credit Card           | CCDE         | all              | Primary Applicant  |
      |CC00002    | Credit Card           | CCDE         | all              | Co-Applicant       |



  #Scenario for configuration of GST Consolidation
#Pre-requisite: Configuration for GST consolidation button is set as true in DB
  #Pre-requisite: user should have the VIEW_GST_CONSOLIDATION_BUTTON authority
  Scenario Outline: Validate GST Consolidation button name is based on label for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    Then GST consolidation button name should be based on label
    And the label for context key CONSOLIDATION_NAME.LABEL should be "<Expected Label>"
    And label should be fetched from message key as per the "<Locale>"
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      |  Expected Label    | Locale     |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  | GST CONSOLIDATION | English    |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant       | Hợp nhất thuế GST | Vietnamese |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant       |GST CONSOLIDATION | English    |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant  |Hợp nhất thuế GST | Vietnamese |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant  |Hợp nhất thuế GST | Vietnamese |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant       |GST CONSOLIDATION | English    |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant  |Hợp nhất thuế GST | Vietnamese |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant       |GST CONSOLIDATION | English    |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant  |Hợp nhất thuế GST | Vietnamese |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant  |Hợp nhất thuế GST | Vietnamese |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant       |GST CONSOLIDATION | English    |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant  |Hợp nhất thuế GST | Vietnamese |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant  |Hợp nhất thuế GST | Vietnamese |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant       |GST CONSOLIDATION | English    |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant  |Hợp nhất thuế GST | Vietnamese |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant       |GST CONSOLIDATION | English    |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant  |Hợp nhất thuế GST | Vietnamese |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Primary Applicant  |Hợp nhất thuế GST | Vietnamese |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Co-Applicant       |GST CONSOLIDATION | English    |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Primary Applicant  |Hợp nhất thuế GST | Vietnamese |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      | FAS00001  |Finance Against Securities| DDE           | all          | Primary Applicant  |GST CONSOLIDATION | English    |
      | FAS00001  |Finance Against Securities| DDE           | all          | Co-Applicant       |Hợp nhất thuế GST | Vietnamese |
      |CC00002    | Credit Card           | CCDE         | all              | Primary Applicant  |Hợp nhất thuế GST | Vietnamese |
      |CC00002    | Credit Card           | CCDE         | all              | Co-Applicant       |GST CONSOLIDATION | English    |



    #Scenario for configuration of GST Consolidation
#Pre-requisite: Configuration for GST consolidation button is set as true in DB
  #Pre-requisite: user should have the VIEW_GST_CONSOLIDATION_BUTTON authority
  Scenario Outline: Validate GST Consolidation button have event for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    And user clicks on GST consolidation button
    Then event should be present for the button
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant       |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant       |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant       |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant       |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Co-Applicant       |
      | FAS00001  |Finance Against Securities| DDE           | all          | Primary Applicant  |
      | FAS00001  |Finance Against Securities| DDE           | all          | Co-Applicant       |
      |CC00002    | Credit Card           | CCDE         | all              | Primary Applicant  |
      |CC00002    | Credit Card           | CCDE         | all              | Co-Applicant       |




#Pre-requisite: Configuration for GST consolidation button is set as true in DB
#Pre-requisite: GST consolidation third party link is added at NIF
    #Pre-requisite: user should have the VIEW_GST_CONSOLIDATION_BUTTON authority

  Scenario Outline: Validate GST consolidation service to be triggered from GST consolidation button for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    And user clicks on GST consolidation button
    Then GSTTransactionReport service is triggered for all the GSTIN number maintained for "<ApplicantType>"
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant       |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant       |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant       |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant       |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Co-Applicant       |
      | FAS00001  |Finance Against Securities| DDE           | all          | Primary Applicant  |
      | FAS00001  |Finance Against Securities| DDE           | all          | Co-Applicant       |
      |CC00002    | Credit Card           | CCDE         | all              | Primary Applicant  |
      |CC00002    | Credit Card           | CCDE         | all              | Co-Applicant       |

#Pre-requisite: Configuration for GST consolidation button is set as true in DB
#Pre-requisite: GST consolidation third party link is added at NIF
    #Pre-requisite: user should have the VIEW_GST_CONSOLIDATION_BUTTON authority

  Scenario Outline: Validate interface status <Status> to be visible for GST consolidation interface for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    And user click on  GST consolidation button
    Then "<Status>" option should be visible under GST consolidation button for "<ApplicantType>"
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      | Status     |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |Initiated   |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |In Progress |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |Error       |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant| Initiated   |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant| In Progress |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant| Error       |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant     | Initiated   |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant     | In Progress |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant     | Error       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant| Initiated   |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant| In Progress |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant| Error       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant     | Initiated   |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant     | In Progress |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant     | Error       |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant| Initiated   |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant| In Progress |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant| Error       |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant     | Initiated   |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant     | In Progress |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant     | Error       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant| Initiated   |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant| In Progress |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant| Error       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant     | Initiated   |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant     | In Progress |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant     | Error       |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant| Initiated   |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant| In Progress |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant| Error       |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant     | Initiated   |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant     | In Progress |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant     | Error       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant| Initiated   |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant| In Progress |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant| Error       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant     | Initiated   |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant     | In Progress |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant     | Error       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant| Initiated   |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant| In Progress |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant| Error       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant     | Initiated   |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant     | In Progress |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant     | Error       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant| Initiated   |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant| In Progress |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant| Error       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant     | Initiated   |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant     | In Progress |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant     | Error       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant| Initiated   |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant| In Progress |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant| Error       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant     | Initiated   |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant     | In Progress |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant     | Error       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant| Initiated   |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant| In Progress |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant| Error       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant     | Initiated   |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant     | In Progress |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant     | Error       |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant| Initiated   |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant| In Progress |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant| Error       |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant     | Initiated   |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant     | In Progress |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant     | Error       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant| Initiated   |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant| In Progress |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant| Error       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant     | Initiated   |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant     | In Progress |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant     | Error       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant| Initiated   |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant| In Progress |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant| Error       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant     | Initiated   |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant     | In Progress |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant     | Error       |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant| Initiated   |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant| In Progress |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant| Error       |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant     | Initiated   |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant     | In Progress |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant     | Error       |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant| Initiated   |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant| In Progress |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant| Error       |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant     | Initiated   |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant     | In Progress |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant     | Error       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant| Initiated   |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant| In Progress |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant| Error       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant     | Initiated   |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant     | In Progress |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant     | Error       |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant| Initiated   |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant| In Progress |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant| Error       |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant     | Initiated   |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant     | In Progress |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant     | Error       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant| Initiated   |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant| In Progress |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant| Error       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant     | Initiated   |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant     | In Progress |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant     | Error       |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant| Initiated   |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant| In Progress |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant| Error       |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant     | Initiated   |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant     | In Progress |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant     | Error       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant| Initiated   |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant| In Progress |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant| Error       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant     | Initiated   |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant     | In Progress |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant     | Error       |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant| Initiated   |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant| In Progress |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant| Error       |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant     | Initiated   |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant     | In Progress |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant     | Error       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant| Initiated   |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant| In Progress |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant| Error       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant     | Initiated   |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant     | In Progress |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant     | Error       |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant| Initiated   |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant| In Progress |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | Initiated   |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | In Progress |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | Error       |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | Initiated   |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | In Progress |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | Error       |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | Initiated   |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | In Progress |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | Error       |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Co-Applicant      | Initiated   |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Co-Applicant      | In Progress |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Co-Applicant      | Error       |
      | FAS00001  | Finance Against Securities| DDE              | all          | Primary Applicant | Initiated   |
      | FAS00001  | Finance Against Securities| DDE              | all          | Primary Applicant | In Progress |
      | FAS00001  | Finance Against Securities| DDE              | all          | Primary Applicant | Error       |
      | FAS00001  | Finance Against Securities| DDE              | all          | Co-Applicant      | Initiated   |
      | FAS00001  | Finance Against Securities| DDE              | all          | Co-Applicant      | In Progress |
      | FAS00001  | Finance Against Securities| DDE              | all          | Co-Applicant      | Error       |
      | CC00002   | Credit Card               | CCDE             | all          | Primary Applicant | Initiated   |
      | CC00002   | Credit Card               | CCDE             | all          | Primary Applicant | In Progress |
      | CC00002   | Credit Card               | CCDE             | all          | Primary Applicant | Error       |
      | CC00002   | Credit Card               | CCDE             | all          | Co-Applicant      | Initiated   |
      | CC00002   | Credit Card               | CCDE             | all          | Co-Applicant      | In Progress |
      | CC00002   | Credit Card               | CCDE             | all          | Co-Applicant      | Error       |



#Pre-requisite: Configuration for GST consolidation button is set as true in DB
#Pre-requisite: GST consolidation third party link is added at NIF
  #Pre-requisite: user should have the VIEW_GST_CONSOLIDATION_BUTTON authority
  Scenario Outline: Validate report to be visible in <Format> for GST consolidation interface for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    And user click on  GST consolidation button
    And  response is received
    Then report should be visible in downlodable "<Format>"
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      | Format |
      | PL00001   | Personal Loan             | Lead Details     | all          | Primary Applicant | excel  |
      | PL00001   | Personal Loan             | Lead Details     | all          | Primary Applicant | pdf    |
      | PL00001   | Personal Loan             | Lead Details     | all          | Co-Applicant      | excel  |
      | PL00001   | Personal Loan             | Lead Details     | all          | Co-Applicant      | pdf    |
      | PL00001   | Personal Loan             | DDE              | all          | Primary Applicant | excel  |
      | PL00001   | Personal Loan             | DDE              | all          | Primary Applicant | pdf    |
      | PL00001   | Personal Loan             | DDE              | all          | Co-Applicant      | excel  |
      | PL00001   | Personal Loan             | DDE              | all          | Co-Applicant      | pdf    |
      | EDU00001  | Education Loan            | Lead Details     | all          | Primary Applicant | excel  |
      | EDU00001  | Education Loan            | Lead Details     | all          | Primary Applicant | pdf    |
      | EDU00001  | Education Loan            | Lead Details     | all          | Co-Applicant      | excel  |
      | EDU00001  | Education Loan            | Lead Details     | all          | Co-Applicant      | pdf    |
      | EDU00001  | Education Loan            | DDE              | all          | Primary Applicant | excel  |
      | EDU00001  | Education Loan            | DDE              | all          | Primary Applicant | pdf    |
      | EDU00001  | Education Loan            | DDE              | all          | Co-Applicant      | excel  |
      | EDU00001  | Education Loan            | DDE              | all          | Co-Applicant      | pdf    |
      | AL00001   | Auto Loan                 | Lead Details     | all          | Primary Applicant | excel  |
      | AL00001   | Auto Loan                 | Lead Details     | all          | Primary Applicant | pdf    |
      | AL00001   | Auto Loan                 | Lead Details     | all          | Co-Applicant      | excel  |
      | AL00001   | Auto Loan                 | Lead Details     | all          | Co-Applicant      | pdf    |
      | AL00001   | Auto Loan                 | DDE              | all          | Primary Applicant | excel  |
      | AL00001   | Auto Loan                 | DDE              | all          | Primary Applicant | pdf    |
      | AL00001   | Auto Loan                 | DDE              | all          | Co-Applicant      | excel  |
      | AL00001   | Auto Loan                 | DDE              | all          | Co-Applicant      | pdf    |
      | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Primary Applicant | excel  |
      | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Primary Applicant | pdf    |
      | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Co-Applicant      | excel  |
      | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Co-Applicant      | pdf    |
      | KCC00001  | Kisan Credit Card         | DDE              | all          | Primary Applicant | excel  |
      | KCC00001  | Kisan Credit Card         | DDE              | all          | Primary Applicant | pdf    |
      | KCC00001  | Kisan Credit Card         | DDE              | all          | Co-Applicant      | excel  |
      | KCC00001  | Kisan Credit Card         | DDE              | all          | Co-Applicant      | pdf    |
      | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Primary Applicant | excel  |
      | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Primary Applicant | pdf    |
      | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Co-Applicant      | excel  |
      | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Co-Applicant      | pdf    |
      | MHF00001  | Micro Housing Finance     | DDE              | all          | Primary Applicant | excel  |
      | MHF00001  | Micro Housing Finance     | DDE              | all          | Primary Applicant | pdf    |
      | MHF00001  | Micro Housing Finance     | DDE              | all          | Co-Applicant      | excel  |
      | MHF00001  | Micro Housing Finance     | DDE              | all          | Co-Applicant      | pdf    |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant | excel  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant | pdf    |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant      | excel  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant      | pdf    |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant | excel  |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant | pdf    |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant      | excel  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant      | pdf    |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant | excel  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant | pdf    |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant      | excel  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant      | pdf    |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant | excel  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant | pdf    |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant      | excel  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant      | pdf    |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant | excel  |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant | pdf    |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant      | excel  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant      | pdf    |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant | excel  |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant | pdf    |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant      | excel  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant      | pdf    |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant | excel  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant | pdf    |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant      | excel  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant      | pdf    |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant | excel  |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant | pdf    |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant      | excel  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant      | pdf    |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant | excel  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant | pdf    |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant      | excel  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant      | pdf    |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant | excel  |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant | pdf    |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant      | excel  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant      | pdf    |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant | excel  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant | pdf    |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant      | excel  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant      | pdf    |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant | excel  |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant | pdf    |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant      | excel  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant      | pdf    |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Primary Applicant | excel  |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Primary Applicant | pdf    |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Co-Applicant      | excel  |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Co-Applicant      | pdf    |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Primary Applicant | excel  |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Primary Applicant | pdf    |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Co-Applicant      | excel  |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Co-Applicant      | pdf    |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | excel  |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | pdf    |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | excel  |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | pdf    |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | excel  |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | pdf    |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Co-Applicant      | excel  |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Co-Applicant      | pdf    |
      | FAS00001  | Finance Against Securities| DDE              | all          | Primary Applicant | excel  |
      | FAS00001  | Finance Against Securities| DDE              | all          | Primary Applicant | pdf    |
      | FAS00001  | Finance Against Securities| DDE              | all          | Co-Applicant      | excel  |
      | FAS00001  | Finance Against Securities| DDE              | all          | Co-Applicant      | pdf    |
      | CC00002   | Credit Card               | CCDE             | all          | Primary Applicant | excel  |
      | CC00002   | Credit Card               | CCDE             | all          | Primary Applicant | pdf    |
      | CC00002   | Credit Card               | CCDE             | all          | Co-Applicant      | excel  |
      | CC00002   | Credit Card               | CCDE             | all          | Co-Applicant      | pdf    |

    #Pre-requisite: Configuration for GST consolidation button is set as true in DB
#Pre-requisite: GST consolidation third party link is added at NIF
#Pre-requisite: VIEW_GST_CONSOLIDATION_REPORT Authority is not added in roles master
  Scenario Outline: Validate report to be visible in <Format> for GST consolidation interface for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    And user click on  GST consolidation button
    And response is received
    Then report should not be visible in downlodable "<Format>"
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      | Format |
      | PL00001   | Personal Loan             | Lead Details     | all          | Primary Applicant | excel  |
      | PL00001   | Personal Loan             | Lead Details     | all          | Primary Applicant | pdf    |
      | PL00001   | Personal Loan             | Lead Details     | all          | Co-Applicant      | excel  |
      | PL00001   | Personal Loan             | Lead Details     | all          | Co-Applicant      | pdf    |
      | PL00001   | Personal Loan             | DDE              | all          | Primary Applicant | excel  |
      | PL00001   | Personal Loan             | DDE              | all          | Primary Applicant | pdf    |
      | PL00001   | Personal Loan             | DDE              | all          | Co-Applicant      | excel  |
      | PL00001   | Personal Loan             | DDE              | all          | Co-Applicant      | pdf    |
      | EDU00001  | Education Loan            | Lead Details     | all          | Primary Applicant | excel  |
      | EDU00001  | Education Loan            | Lead Details     | all          | Primary Applicant | pdf    |
      | EDU00001  | Education Loan            | Lead Details     | all          | Co-Applicant      | excel  |
      | EDU00001  | Education Loan            | Lead Details     | all          | Co-Applicant      | pdf    |
      | EDU00001  | Education Loan            | DDE              | all          | Primary Applicant | excel  |
      | EDU00001  | Education Loan            | DDE              | all          | Primary Applicant | pdf    |
      | EDU00001  | Education Loan            | DDE              | all          | Co-Applicant      | excel  |
      | EDU00001  | Education Loan            | DDE              | all          | Co-Applicant      | pdf    |
      | AL00001   | Auto Loan                 | Lead Details     | all          | Primary Applicant | excel  |
      | AL00001   | Auto Loan                 | Lead Details     | all          | Primary Applicant | pdf    |
      | AL00001   | Auto Loan                 | Lead Details     | all          | Co-Applicant      | excel  |
      | AL00001   | Auto Loan                 | Lead Details     | all          | Co-Applicant      | pdf    |
      | AL00001   | Auto Loan                 | DDE              | all          | Primary Applicant | excel  |
      | AL00001   | Auto Loan                 | DDE              | all          | Primary Applicant | pdf    |
      | AL00001   | Auto Loan                 | DDE              | all          | Co-Applicant      | excel  |
      | AL00001   | Auto Loan                 | DDE              | all          | Co-Applicant      | pdf    |
      | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Primary Applicant | excel  |
      | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Primary Applicant | pdf    |
      | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Co-Applicant      | excel  |
      | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Co-Applicant      | pdf    |
      | KCC00001  | Kisan Credit Card         | DDE              | all          | Primary Applicant | excel  |
      | KCC00001  | Kisan Credit Card         | DDE              | all          | Primary Applicant | pdf    |
      | KCC00001  | Kisan Credit Card         | DDE              | all          | Co-Applicant      | excel  |
      | KCC00001  | Kisan Credit Card         | DDE              | all          | Co-Applicant      | pdf    |
      | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Primary Applicant | excel  |
      | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Primary Applicant | pdf    |
      | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Co-Applicant      | excel  |
      | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Co-Applicant      | pdf    |
      | MHF00001  | Micro Housing Finance     | DDE              | all          | Primary Applicant | excel  |
      | MHF00001  | Micro Housing Finance     | DDE              | all          | Primary Applicant | pdf    |
      | MHF00001  | Micro Housing Finance     | DDE              | all          | Co-Applicant      | excel  |
      | MHF00001  | Micro Housing Finance     | DDE              | all          | Co-Applicant      | pdf    |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant | excel  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant | pdf    |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant      | excel  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant      | pdf    |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant | excel  |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant | pdf    |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant      | excel  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant      | pdf    |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant | excel  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant | pdf    |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant      | excel  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant      | pdf    |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant | excel  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant | pdf    |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant      | excel  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant      | pdf    |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant | excel  |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant | pdf    |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant      | excel  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant      | pdf    |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant | excel  |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant | pdf    |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant      | excel  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant      | pdf    |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant | excel  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant | pdf    |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant      | excel  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant      | pdf    |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant | excel  |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant | pdf    |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant      | excel  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant      | pdf    |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant | excel  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant | pdf    |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant      | excel  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant      | pdf    |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant | excel  |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant | pdf    |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant      | excel  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant      | pdf    |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant | excel  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant | pdf    |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant      | excel  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant      | pdf    |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant | excel  |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant | pdf    |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant      | excel  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant      | pdf    |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Primary Applicant | excel  |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Primary Applicant | pdf    |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Co-Applicant      | excel  |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Co-Applicant      | pdf    |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Primary Applicant | excel  |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Primary Applicant | pdf    |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Co-Applicant      | excel  |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Co-Applicant      | pdf    |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | excel  |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | pdf    |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | excel  |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | pdf    |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | excel  |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | pdf    |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Co-Applicant      | excel  |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Co-Applicant      | pdf    |
      | FAS00001  | Finance Against Securities| DDE              | all          | Primary Applicant | excel  |
      | FAS00001  | Finance Against Securities| DDE              | all          | Primary Applicant | pdf    |
      | FAS00001  | Finance Against Securities| DDE              | all          | Co-Applicant      | excel  |
      | FAS00001  | Finance Against Securities| DDE              | all          | Co-Applicant      | pdf    |
      | CC00002   | Credit Card               | CCDE             | all          | Primary Applicant | excel  |
      | CC00002   | Credit Card               | CCDE             | all          | Primary Applicant | pdf    |
      | CC00002   | Credit Card               | CCDE             | all          | Co-Applicant      | excel  |
      | CC00002   | Credit Card               | CCDE             | all          | Co-Applicant      | pdf    |



#Pre-requisite: Configuration for GST consolidation button is set as true in DB
#Pre-requisite: GST consolidation third party link is added at NIF
    #Pre-requisite: user should have the VIEW_GST_CONSOLIDATION_BUTTON authority
  Scenario Outline: Validate warning message to be visible for GST consolidation interface for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    And gstin list is empty
    And user click on  GST consolidation button
    Then warning message is displayed
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant       |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant       |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant       |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant       |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Co-Applicant       |
      | FAS00001  |Finance Against Securities| DDE           | all          | Primary Applicant  |
      | FAS00001  |Finance Against Securities| DDE           | all          | Co-Applicant       |
      |CC00002    | Credit Card           | CCDE         | all              | Primary Applicant  |
      |CC00002    | Credit Card           | CCDE         | all              | Co-Applicant       |




  #Pre-requisite: Configuration for GST consolidation button is set as true in DB
#Pre-requisite: GST consolidation third party link is added at NIF
    #Pre-requisite: user should have the VIEW_GST_CONSOLIDATION_BUTTON authority
  Scenario Outline: Validate warning message to configurable for GST consolidation interface for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    And gstin list is empty
    And user click on  GST consolidation button
    Then warning message is displayed
    And the label for context key WARNING_MESSAGE.LABEL should be "<Warning_Message>"
    And label should be fetched from message key as per the "<Locale>"
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      | Locale     | Warning_Message                  |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant | English    | Nothing to initiate      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant      | English    | Nothing to initiate      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant | English    | Nothing to initiate      |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant      | English    | Nothing to initiate      |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant | English    | Nothing to initiate      |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant      | English    | Nothing to initiate      |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant | English    | Nothing to initiate      |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant      | English    | Nothing to initiate      |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant | English    | Nothing to initiate      |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant      | English    | Nothing to initiate      |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant | English    | Nothing to initiate      |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant      | English    | Nothing to initiate      |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant | English    | Nothing to initiate      |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant      | English    | Nothing to initiate      |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant | English    | Nothing to initiate      |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant      | English    | Nothing to initiate      |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant | English    | Nothing to initiate      |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant      | English    | Nothing to initiate      |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant | English    | Nothing to initiate      |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant      | English    | Nothing to initiate      |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | GL00001   | Gold Loan                 | DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | GL00001   | Gold Loan                 | DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Primary Applicant | English    | Nothing to initiate      |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Co-Applicant      | English    | Nothing to initiate      |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | English    | Nothing to initiate      |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | English    | Nothing to initiate      |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | FAS00001  | Finance Against Securities| DDE              | all          | Primary Applicant | English    | Nothing to initiate      |
      | FAS00001  | Finance Against Securities| DDE              | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | FAS00001  | Finance Against Securities| DDE              | all          | Co-Applicant      | English    | Nothing to initiate      |
      | FAS00001  | Finance Against Securities| DDE              | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |
      | CC00002   | Credit Card               | CCDE             | all          | Primary Applicant | English    | Nothing to initiate      |
      | CC00002   | Credit Card               | CCDE             | all          | Primary Applicant | Vietnamese | Không có gì để bắt đầu   |
      | CC00002   | Credit Card               | CCDE             | all          | Co-Applicant      | English    | Nothing to initiate      |
      | CC00002   | Credit Card               | CCDE             | all          | Co-Applicant      | Vietnamese | Không có gì để bắt đầu   |


#Pre-requisite: Configuration for GST consolidation button is set as true in DB
#Pre-requisite: GST consolidation third party link is added at NIF
  Scenario Outline: Validate authenticated through with possible values <Values> to be added in history for GST Consolidation for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user selects "<ApplicationType">
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    And user click on transaction report history
    Then authenticated through column should be visible with possible values "<Values>" with comma separated values
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      | Values            |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant | GST Consolidation |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant | GST Transaction   |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant      | GST Consolidation |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant      | GST Transaction   |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant | GST Consolidation |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant | GST Transaction   |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant      | GST Consolidation |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant      | GST Transaction   |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant | GST Consolidation |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant | GST Transaction   |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant      | GST Consolidation |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant      | GST Transaction   |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant | GST Consolidation |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant | GST Transaction   |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant      | GST Consolidation |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant      | GST Transaction   |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant | GST Consolidation |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant | GST Transaction   |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant      | GST Consolidation |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant      | GST Transaction   |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant | GST Consolidation |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant | GST Transaction   |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant      | GST Consolidation |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant      | GST Transaction   |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant | GST Consolidation |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant | GST Transaction   |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant      | GST Consolidation |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant      | GST Transaction   |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant | GST Consolidation |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant | GST Transaction   |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant      | GST Consolidation |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant      | GST Transaction   |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant | GST Consolidation |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant | GST Transaction   |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant      | GST Consolidation |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant      | GST Transaction   |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant | GST Consolidation |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant | GST Transaction   |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant      | GST Consolidation |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant      | GST Transaction   |
      | LogicalID | ProductType               | ApplicationStage | MandatoryAll | ApplicantType      | Values            |
      |-----------|---------------------------|------------------|--------------|-------------------|------------------|
      | FE00001   | Farm Equipment            | Lead Details     | all          | Primary Applicant | GST Consolidation |
      | FE00001   | Farm Equipment            | Lead Details     | all          | Primary Applicant | GST Transaction   |
      | FE00001   | Farm Equipment            | Lead Details     | all          | Co-Applicant      | GST Consolidation |
      | FE00001   | Farm Equipment            | Lead Details     | all          | Co-Applicant      | GST Transaction   |
      | FE00001   | Farm Equipment            | DDE              | all          | Primary Applicant | GST Consolidation |
      | FE00001   | Farm Equipment            | DDE              | all          | Primary Applicant | GST Transaction   |
      | FE00001   | Farm Equipment            | DDE              | all          | Co-Applicant      | GST Consolidation |
      | FE00001   | Farm Equipment            | DDE              | all          | Co-Applicant      | GST Transaction   |
      | AGRL00001 | Agriculture Loan          | Lead Details     | all          | Primary Applicant | GST Consolidation |
      | AGRL00001 | Agriculture Loan          | Lead Details     | all          | Primary Applicant | GST Transaction   |
      | AGRL00001 | Agriculture Loan          | Lead Details     | all          | Co-Applicant      | GST Consolidation |
      | AGRL00001 | Agriculture Loan          | Lead Details     | all          | Co-Applicant      | GST Transaction   |
      | AGRL00001 | Agriculture Loan          | DDE              | all          | Primary Applicant | GST Consolidation |
      | AGRL00001 | Agriculture Loan          | DDE              | all          | Primary Applicant | GST Transaction   |
      | AGRL00001 | Agriculture Loan          | DDE              | all          | Co-Applicant      | GST Consolidation |
      | AGRL00001 | Agriculture Loan          | DDE              | all          | Co-Applicant      | GST Transaction   |
      | HL00001   | Home Loan                 | Lead Details     | all          | Primary Applicant | GST Consolidation |
      | HL00001   | Home Loan                 | Lead Details     | all          | Primary Applicant | GST Transaction   |
      | HL00001   | Home Loan                 | Lead Details     | all          | Co-Applicant      | GST Consolidation |
      | HL00001   | Home Loan                 | Lead Details     | all          | Co-Applicant      | GST Transaction   |
      | HL00001   | Home Loan                 | DDE              | all          | Primary Applicant | GST Consolidation |
      | HL00001   | Home Loan                 | DDE              | all          | Primary Applicant | GST Transaction   |
      | HL00001   | Home Loan                 | DDE              | all          | Co-Applicant      | GST Consolidation |
      | HL00001   | Home Loan                 | DDE              | all          | Co-Applicant      | GST Transaction   |
      | LAP00001  | Loan Against Property     | Lead Details     | all          | Primary Applicant | GST Consolidation |
      | LAP00001  | Loan Against Property     | Lead Details     | all          | Primary Applicant | GST Transaction   |
      | LAP00001  | Loan Against Property     | Lead Details     | all          | Co-Applicant      | GST Consolidation |
      | LAP00001  | Loan Against Property     | Lead Details     | all          | Co-Applicant      | GST Transaction   |
      | LAP00001  | Loan Against Property     | DDE              | all          | Primary Applicant | GST Consolidation |
      | LAP00001  | Loan Against Property     | DDE              | all          | Primary Applicant | GST Transaction   |
      | LAP00001  | Loan Against Property     | DDE              | all          | Co-Applicant      | GST Consolidation |
      | LAP00001  | Loan Against Property     | DDE              | all          | Co-Applicant      | GST Transaction   |
      | JLG00001  | Joint Liability Group     | DDE              | all          | Primary Applicant | GST Consolidation |
      | JLG00001  | Joint Liability Group     | DDE              | all          | Primary Applicant | GST Transaction   |
      | JLG00001  | Joint Liability Group     | DDE              | all          | Co-Applicant      | GST Consolidation |
      | JLG00001  | Joint Liability Group     | DDE              | all          | Co-Applicant      | GST Transaction   |
      | SHG00001  | Self Help Group           | DDE              | all          | Primary Applicant | GST Consolidation |
      | SHG00001  | Self Help Group           | DDE              | all          | Primary Applicant | GST Transaction   |
      | SHG00001  | Self Help Group           | DDE              | all          | Co-Applicant      | GST Consolidation |
      | SHG00001  | Self Help Group           | DDE              | all          | Co-Applicant      | GST Transaction   |
      | GL00001   | Gold Loan                 | Lead Details     | all          | Primary Applicant | GST Consolidation |
      | GL00001   | Gold Loan                 | Lead Details     | all          | Primary Applicant | GST Transaction   |
      | GL00001   | Gold Loan                 | Lead Details     | all          | Co-Applicant      | GST Consolidation |
      | GL00001   | Gold Loan                 | Lead Details     | all          | Co-Applicant      | GST Transaction   |
      | GL00001   | Gold Loan                 | DDE              | all          | Primary Applicant | GST Consolidation |
      | GL00001   | Gold Loan                 | DDE              | all          | Primary Applicant | GST Transaction   |
      | GL00001   | Gold Loan                 | DDE              | all          | Co-Applicant      | GST Consolidation |
      | GL00001   | Gold Loan                 | DDE              | all          | Co-Applicant      | GST Transaction   |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Primary Applicant | GST Consolidation |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Primary Applicant | GST Transaction   |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Co-Applicant      | GST Consolidation |
      | CV00004   | Commercial Vehicle        | Lead Details     | all          | Co-Applicant      | GST Transaction   |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Primary Applicant | GST Consolidation |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Primary Applicant | GST Transaction   |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Co-Applicant      | GST Consolidation |
      | CV00004   | Commercial Vehicle        | DDE              | all          | Co-Applicant      | GST Transaction   |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | GST Consolidation |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | GST Transaction   |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | GST Consolidation |
      | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | GST Transaction   |
      | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | GST Consolidation |
      | CEQ00001  | Commercial Equipment      | DDE              | all          |                   |                   |


    #Pre-requisite: Configuration for GST consolidation button is set as true in DB
#Pre-requisite: GST consolidation third party link is added at NIF
    #Pre-requisite: user should have the VIEW_GST_CONSOLIDATION_BUTTON authority

  Scenario Outline: Validate data content of GST consolidation report in <Format> for GST consolidation interface for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
     Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
     When user opens an application at "<ApplicationStage>" stage from application grid
     And user enters "<MandatoryAll>" personal information details
     And user clicks on save button
     And user clicks on GST tab
     And user clicks on GST details accordion
     And user enters "<MandatoryAll>" GST details
     And user clicks on save button
     And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    And user click on  GST consolidation button
     And success response is received
     And report is received in downloadable "<Format>"
     Then verify the content of data for table present in workbook "<DataSheetSource>" under sheet "<TableDataSheet>" in download "<Format>" file
     Examples:
       | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      | Format |
       | PL00001   | Personal Loan             | Lead Details     | all          | Primary Applicant | excel  |
       | PL00001   | Personal Loan             | Lead Details     | all          | Primary Applicant | pdf    |
       | PL00001   | Personal Loan             | Lead Details     | all          | Co-Applicant      | excel  |
       | PL00001   | Personal Loan             | Lead Details     | all          | Co-Applicant      | pdf    |
       | PL00001   | Personal Loan             | DDE              | all          | Primary Applicant | excel  |
       | PL00001   | Personal Loan             | DDE              | all          | Primary Applicant | pdf    |
       | PL00001   | Personal Loan             | DDE              | all          | Co-Applicant      | excel  |
       | PL00001   | Personal Loan             | DDE              | all          | Co-Applicant      | pdf    |
       | EDU00001  | Education Loan            | Lead Details     | all          | Primary Applicant | excel  |
       | EDU00001  | Education Loan            | Lead Details     | all          | Primary Applicant | pdf    |
       | EDU00001  | Education Loan            | Lead Details     | all          | Co-Applicant      | excel  |
       | EDU00001  | Education Loan            | Lead Details     | all          | Co-Applicant      | pdf    |
       | EDU00001  | Education Loan            | DDE              | all          | Primary Applicant | excel  |
       | EDU00001  | Education Loan            | DDE              | all          | Primary Applicant | pdf    |
       | EDU00001  | Education Loan            | DDE              | all          | Co-Applicant      | excel  |
       | EDU00001  | Education Loan            | DDE              | all          | Co-Applicant      | pdf    |
       | AL00001   | Auto Loan                 | Lead Details     | all          | Primary Applicant | excel  |
       | AL00001   | Auto Loan                 | Lead Details     | all          | Primary Applicant | pdf    |
       | AL00001   | Auto Loan                 | Lead Details     | all          | Co-Applicant      | excel  |
       | AL00001   | Auto Loan                 | Lead Details     | all          | Co-Applicant      | pdf    |
       | AL00001   | Auto Loan                 | DDE              | all          | Primary Applicant | excel  |
       | AL00001   | Auto Loan                 | DDE              | all          | Primary Applicant | pdf    |
       | AL00001   | Auto Loan                 | DDE              | all          | Co-Applicant      | excel  |
       | AL00001   | Auto Loan                 | DDE              | all          | Co-Applicant      | pdf    |
       | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Primary Applicant | excel  |
       | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Primary Applicant | pdf    |
       | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Co-Applicant      | excel  |
       | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Co-Applicant      | pdf    |
       | KCC00001  | Kisan Credit Card         | DDE              | all          | Primary Applicant | excel  |
       | KCC00001  | Kisan Credit Card         | DDE              | all          | Primary Applicant | pdf    |
       | KCC00001  | Kisan Credit Card         | DDE              | all          | Co-Applicant      | excel  |
       | KCC00001  | Kisan Credit Card         | DDE              | all          | Co-Applicant      | pdf    |
       | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Primary Applicant | excel  |
       | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Primary Applicant | pdf    |
       | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Co-Applicant      | excel  |
       | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Co-Applicant      | pdf    |
       | MHF00001  | Micro Housing Finance     | DDE              | all          | Primary Applicant | excel  |
       | MHF00001  | Micro Housing Finance     | DDE              | all          | Primary Applicant | pdf    |
       | MHF00001  | Micro Housing Finance     | DDE              | all          | Co-Applicant      | excel  |
       | MHF00001  | Micro Housing Finance     | DDE              | all          | Co-Applicant      | pdf    |
       | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant | excel  |
       | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant | pdf    |
       | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant      | excel  |
       | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant      | pdf    |
       | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant | excel  |
       | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant | pdf    |
       | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant      | excel  |
       | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant      | pdf    |
       | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant | excel  |
       | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant | pdf    |
       | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant      | excel  |
       | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant      | pdf    |
       | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant | excel  |
       | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant | pdf    |
       | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant      | excel  |
       | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant      | pdf    |
       | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant | excel  |
       | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant | pdf    |
       | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant      | excel  |
       | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant      | pdf    |
       | HL00001   | Home Loan             | DDE              | all          | Primary Applicant | excel  |
       | HL00001   | Home Loan             | DDE              | all          | Primary Applicant | pdf    |
       | HL00001   | Home Loan             | DDE              | all          | Co-Applicant      | excel  |
       | HL00001   | Home Loan             | DDE              | all          | Co-Applicant      | pdf    |
       | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant | excel  |
       | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant | pdf    |
       | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant      | excel  |
       | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant      | pdf    |
       | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant | excel  |
       | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant | pdf    |
       | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant      | excel  |
       | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant      | pdf    |
       | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant | excel  |
       | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant | pdf    |
       | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant      | excel  |
       | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant      | pdf    |
       | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant | excel  |
       | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant | pdf    |
       | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant      | excel  |
       | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant      | pdf    |
       | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant | excel  |
       | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant | pdf    |
       | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant      | excel  |
       | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant      | pdf    |
       | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant | excel  |
       | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant | pdf    |
       | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant      | excel  |
       | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant      | pdf    |
       | CV00004   | Commercial Vehicle        | Lead Details     | all          | Primary Applicant | excel  |
       | CV00004   | Commercial Vehicle        | Lead Details     | all          | Primary Applicant | pdf    |
       | CV00004   | Commercial Vehicle        | Lead Details     | all          | Co-Applicant      | excel  |
       | CV00004   | Commercial Vehicle        | Lead Details     | all          | Co-Applicant      | pdf    |
       | CV00004   | Commercial Vehicle        | DDE              | all          | Primary Applicant | excel  |
       | CV00004   | Commercial Vehicle        | DDE              | all          | Primary Applicant | pdf    |
       | CV00004   | Commercial Vehicle        | DDE              | all          | Co-Applicant      | excel  |
       | CV00004   | Commercial Vehicle        | DDE              | all          | Co-Applicant      | pdf    |
       | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | excel  |
       | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | pdf    |
       | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | excel  |
       | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | pdf    |
       | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | excel  |
       | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | pdf    |
       | CEQ00001  | Commercial Equipment      | DDE              | all          | Co-Applicant      | excel  |
       | CEQ00001  | Commercial Equipment      | DDE              | all          | Co-Applicant      | pdf    |
       | FAS00001  | Finance Against Securities| DDE              | all          | Primary Applicant | excel  |
       | FAS00001  | Finance Against Securities| DDE              | all          | Primary Applicant | pdf    |
       | FAS00001  | Finance Against Securities| DDE              | all          | Co-Applicant      | excel  |
       | FAS00001  | Finance Against Securities| DDE              | all          | Co-Applicant      | pdf    |
       | CC00002   | Credit Card               | CCDE             | all          | Primary Applicant | excel  |
       | CC00002   | Credit Card               | CCDE             | all          | Primary Applicant | pdf    |
       | CC00002   | Credit Card               | CCDE             | all          | Co-Applicant      | excel  |
       | CC00002   | Credit Card               | CCDE             | all          | Co-Applicant      | pdf    |




    #Pre-requisite: Configuration for GST consolidation button is set as true in DB
#Pre-requisite: GST consolidation third party link is added at NIF
    #Pre-requisite: User should have the VIEW_GST_CONSOLIDATION_BUTTON authority

  Scenario Outline: Validate GST data to be saved after GST consolidation is executed for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
      Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
      When user opens an application at "<ApplicationStage>" stage from application grid
      And user enters "<MandatoryAll>" personal information details
      And user clicks on save button
      And user clicks on GST tab
      And user clicks on GST details accordion
      And user enters "<MandatoryAll>" GST details
      And user clicks on save button
      And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    And user click on  GST consolidation button
      And success response is received
      And report is received in downloadable "<Format>"
      And user navigates to different tab
      And user clicks on GST tab again
      Then GST consolidation data should be visible
      Examples:
        | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      | Format |
        | PL00001   | Personal Loan             | Lead Details     | all          | Primary Applicant | excel  |
        | PL00001   | Personal Loan             | Lead Details     | all          | Primary Applicant | pdf    |
        | PL00001   | Personal Loan             | Lead Details     | all          | Co-Applicant      | excel  |
        | PL00001   | Personal Loan             | Lead Details     | all          | Co-Applicant      | pdf    |
        | PL00001   | Personal Loan             | DDE              | all          | Primary Applicant | excel  |
        | PL00001   | Personal Loan             | DDE              | all          | Primary Applicant | pdf    |
        | PL00001   | Personal Loan             | DDE              | all          | Co-Applicant      | excel  |
        | PL00001   | Personal Loan             | DDE              | all          | Co-Applicant      | pdf    |
        | EDU00001  | Education Loan            | Lead Details     | all          | Primary Applicant | excel  |
        | EDU00001  | Education Loan            | Lead Details     | all          | Primary Applicant | pdf    |
        | EDU00001  | Education Loan            | Lead Details     | all          | Co-Applicant      | excel  |
        | EDU00001  | Education Loan            | Lead Details     | all          | Co-Applicant      | pdf    |
        | EDU00001  | Education Loan            | DDE              | all          | Primary Applicant | excel  |
        | EDU00001  | Education Loan            | DDE              | all          | Primary Applicant | pdf    |
        | EDU00001  | Education Loan            | DDE              | all          | Co-Applicant      | excel  |
        | EDU00001  | Education Loan            | DDE              | all          | Co-Applicant      | pdf    |
        | AL00001   | Auto Loan                 | Lead Details     | all          | Primary Applicant | excel  |
        | AL00001   | Auto Loan                 | Lead Details     | all          | Primary Applicant | pdf    |
        | AL00001   | Auto Loan                 | Lead Details     | all          | Co-Applicant      | excel  |
        | AL00001   | Auto Loan                 | Lead Details     | all          | Co-Applicant      | pdf    |
        | AL00001   | Auto Loan                 | DDE              | all          | Primary Applicant | excel  |
        | AL00001   | Auto Loan                 | DDE              | all          | Primary Applicant | pdf    |
        | AL00001   | Auto Loan                 | DDE              | all          | Co-Applicant      | excel  |
        | AL00001   | Auto Loan                 | DDE              | all          | Co-Applicant      | pdf    |
        | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Primary Applicant | excel  |
        | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Primary Applicant | pdf    |
        | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Co-Applicant      | excel  |
        | KCC00001  | Kisan Credit Card         | Lead Details     | all          | Co-Applicant      | pdf    |
        | KCC00001  | Kisan Credit Card         | DDE              | all          | Primary Applicant | excel  |
        | KCC00001  | Kisan Credit Card         | DDE              | all          | Primary Applicant | pdf    |
        | KCC00001  | Kisan Credit Card         | DDE              | all          | Co-Applicant      | excel  |
        | KCC00001  | Kisan Credit Card         | DDE              | all          | Co-Applicant      | pdf    |
        | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Primary Applicant | excel  |
        | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Primary Applicant | pdf    |
        | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Co-Applicant      | excel  |
        | MHF00001  | Micro Housing Finance     | Lead Details     | all          | Co-Applicant      | pdf    |
        | MHF00001  | Micro Housing Finance     | DDE              | all          | Primary Applicant | excel  |
        | MHF00001  | Micro Housing Finance     | DDE              | all          | Primary Applicant | pdf    |
        | MHF00001  | Micro Housing Finance     | DDE              | all          | Co-Applicant      | excel  |
        | MHF00001  | Micro Housing Finance     | DDE              | all          | Co-Applicant      | pdf    |
        | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant | excel  |
        | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant | pdf    |
        | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant      | excel  |
        | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant      | pdf    |
        | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant | excel  |
        | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant | pdf    |
        | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant      | excel  |
        | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant      | pdf    |
        | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant | excel  |
        | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant | pdf    |
        | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant      | excel  |
        | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant      | pdf    |
        | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant | excel  |
        | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant | pdf    |
        | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant      | excel  |
        | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant      | pdf    |
        | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant | excel  |
        | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant | pdf    |
        | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant      | excel  |
        | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant      | pdf    |
        | HL00001   | Home Loan             | DDE              | all          | Primary Applicant | excel  |
        | HL00001   | Home Loan             | DDE              | all          | Primary Applicant | pdf    |
        | HL00001   | Home Loan             | DDE              | all          | Co-Applicant      | excel  |
        | HL00001   | Home Loan             | DDE              | all          | Co-Applicant      | pdf    |
        | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant | excel  |
        | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant | pdf    |
        | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant      | excel  |
        | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant      | pdf    |
        | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant | excel  |
        | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant | pdf    |
        | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant      | excel  |
        | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant      | pdf    |
        | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant | excel  |
        | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant | pdf    |
        | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant      | excel  |
        | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant      | pdf    |
        | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant | excel  |
        | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant | pdf    |
        | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant      | excel  |
        | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant      | pdf    |
        | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant | excel  |
        | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant | pdf    |
        | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant      | excel  |
        | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant      | pdf    |
        | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant | excel  |
        | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant | pdf    |
        | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant      | excel  |
        | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant      | pdf    |
        | CV00004   | Commercial Vehicle        | Lead Details     | all          | Primary Applicant | excel  |
        | CV00004   | Commercial Vehicle        | Lead Details     | all          | Primary Applicant | pdf    |
        | CV00004   | Commercial Vehicle        | Lead Details     | all          | Co-Applicant      | excel  |
        | CV00004   | Commercial Vehicle        | Lead Details     | all          | Co-Applicant      | pdf    |
        | CV00004   | Commercial Vehicle        | DDE              | all          | Primary Applicant | excel  |
        | CV00004   | Commercial Vehicle        | DDE              | all          | Primary Applicant | pdf    |
        | CV00004   | Commercial Vehicle        | DDE              | all          | Co-Applicant      | excel  |
        | CV00004   | Commercial Vehicle        | DDE              | all          | Co-Applicant      | pdf    |
        | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | excel  |
        | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Primary Applicant | pdf    |
        | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | excel  |
        | CEQ00001  | Commercial Equipment      | Lead Details     | all          | Co-Applicant      | pdf    |
        | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | excel  |
        | CEQ00001  | Commercial Equipment      | DDE              | all          | Primary Applicant | pdf    |
        | CEQ00001  | Commercial Equipment      | DDE              | all          | Co-Applicant      | excel  |
        | CEQ00001  | Commercial Equipment      | DDE              | all          | Co-Applicant      | pdf    |
        | FAS00001  | Finance Against Securities| DDE              | all          | Primary Applicant | excel  |
        | FAS00001  | Finance Against Securities| DDE              | all          | Primary Applicant | pdf    |
        | FAS00001  | Finance Against Securities| DDE              | all          | Co-Applicant      | excel  |
        | FAS00001  | Finance Against Securities| DDE              | all          | Co-Applicant      | pdf    |
        | CC00002   | Credit Card               | CCDE             | all          | Primary Applicant | excel  |
        | CC00002   | Credit Card               | CCDE             | all          | Primary Applicant | pdf    |
        | CC00002   | Credit Card               | CCDE             | all          | Co-Applicant      | excel  |
        | CC00002   | Credit Card               | CCDE             | all          | Co-Applicant      | pdf    |



    #Upgrade impact
    # Pre-requisite: Configuration for GST consolidation button is set as true in DB
#Pre-requisite: GST consolidation third party link is added at NIF
    #Pre-requisite: User should have the VIEW_GST_CONSOLIDATION_BUTTON authority

  Scenario Outline: Validate GST consolidation service and GST transaction service is executed simultaneously for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    And user click on  GST consolidation button
    And user clicks on save & generate report checkbox to execute gst transaction service against GSTIN
    Then both services to be executed successfully
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant       |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant       |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant       |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant       |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Co-Applicant       |
      | FAS00001  |Finance Against Securities| DDE           | all          | Primary Applicant  |
      | FAS00001  |Finance Against Securities| DDE           | all          | Co-Applicant       |
      |CC00002    | Credit Card           | CCDE         | all              | Primary Applicant  |
      |CC00002    | Credit Card           | CCDE         | all              | Co-Applicant       |




    # Pre-requisite: Configuration for GST consolidation button is set as true/false in DB
#Pre-requisite: GST consolidation third party link is added at NIF
    #Pre-requisite: User should have the VIEW_GST_CONSOLIDATION_BUTTON authority

  Scenario Outline: Validate GST consolidation report  to be moved to transaction report history for <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    And user click on  GST consolidation button
    And service initiated successfully
    And report is generated
    And user change the GST consolidation button configuration to false
    Then report record generated should be moved to the transaction report history
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant       |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant       |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant       |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant       |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Co-Applicant       |
      | FAS00001  |Finance Against Securities| DDE           | all          | Primary Applicant  |
      | FAS00001  |Finance Against Securities| DDE           | all          | Co-Applicant       |
      |CC00002    | Credit Card           | CCDE         | all              | Primary Applicant  |
      |CC00002    | Credit Card           | CCDE         | all              | Co-Applicant       |







    # Pre-requisite: Configuration for GST consolidation button is set as true/false in DB
#Pre-requisite: GST consolidation third party link is added at NIF
    #Pre-requisite: User should have the VIEW_GST_CONSOLIDATION_BUTTON authority

  Scenario Outline: Validate GST consolidation history to be for present for deleted <ApplicantType> with <ProductType> LogicalID <LogicalID> at <ApplicationStage> for <ApplicantType>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    And user selects "<ApplicantType>"
    And user click on  GST consolidation button
    And service initiated successfully
    And user deleted the "<ApplicantType>"
    And add another "<ApplicantType>"
    Then history should be available in transaction report history
    Examples:
      | LogicalID | ProductType           | ApplicationStage | MandatoryAll | ApplicantType      |
      | PL00001   | Personal Loan         | Lead Details     | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | Lead Details     | all          | Co-Applicant       |
      | PL00001   | Personal Loan         | DDE              | all          | Primary Applicant  |
      | PL00001   | Personal Loan         | DDE              | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | Lead Details     | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | Lead Details     | all          | Co-Applicant       |
      | EDU00001  | Education Loan        | DDE              | all          | Primary Applicant  |
      | EDU00001  | Education Loan        | DDE              | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | Lead Details     | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | Lead Details     | all          | Co-Applicant       |
      | AL00001   | Auto Loan             | DDE              | all          | Primary Applicant  |
      | AL00001   | Auto Loan             | DDE              | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | Lead Details     | all          | Co-Applicant       |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Primary Applicant  |
      | KCC00001  | Kisan Credit Card     | DDE              | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | Lead Details     | all          | Co-Applicant       |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Primary Applicant  |
      | MHF00001  | Micro Housing Finance | DDE              | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | Lead Details     | all          | Co-Applicant       |
      | FE00001   | Farm Equipment        | DDE              | all          | Primary Applicant  |
      | FE00001   | Farm Equipment        | DDE              | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | Lead Details     | all          | Co-Applicant       |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Primary Applicant  |
      | AGRL00001 | Agriculture Loan      | DDE              | all          | Co-Applicant       |
      | HL00001   | Home Loan             | Lead Details     | all          | Primary Applicant  |
      | HL00001   | Home Loan             | Lead Details     | all          | Co-Applicant       |
      | HL00001   | Home Loan             | DDE              | all          | Primary Applicant  |
      | HL00001   | Home Loan             | DDE              | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | Lead Details     | all          | Co-Applicant       |
      | LAP00001  | Loan Against Property | DDE              | all          | Primary Applicant  |
      | LAP00001  | Loan Against Property | DDE              | all          | Co-Applicant       |
      | JLG00001  | Joint Liability Group | DDE              | all          | Primary Applicant  |
      | JLG00001  | Joint Liability Group | DDE              | all          | Co-Applicant       |
      | SHG00001  | Self Help Group       | DDE              | all          | Primary Applicant  |
      | SHG00001  | Self Help Group       | DDE              | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | Lead Details     | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | Lead Details     | all          | Co-Applicant       |
      | GL00001   | Gold Loan             | DDE              | all          | Primary Applicant  |
      | GL00001   | Gold Loan             | DDE              | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | Lead Details     | all          | Co-Applicant       |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Primary Applicant  |
      | CV00004   | Commercial Vehicle    | DDE              | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | Lead Details     | all          | Co-Applicant       |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Primary Applicant  |
      | CEQ00001  | Commercial Equipment  | DDE              | all          | Co-Applicant       |
      | FAS00001  |Finance Against Securities| DDE           | all          | Primary Applicant  |
      | FAS00001  |Finance Against Securities| DDE           | all          | Co-Applicant       |
      |CC00002    | Credit Card           | CCDE         | all              | Primary Applicant  |
      |CC00002    | Credit Card           | CCDE         | all              | Co-Applicant       |



#------------------------------------------------------------------------------------------------------------------------------

    #Base Scenario for primary applicant for Omni
    #${ApplicantType:["Individual","Non-Individual"]}
  Scenario Outline: Validate GST authentication data to be visible for <ProductType> at <ApplicationStage> and <ApplicantType>
    When user opens an application at "<ApplicationStage>" stage of "<ProductType>" from application grid
    And user enters "<MandatoryAll>" personal information details
    And user clicks on save button
    And user clicks on GST tab
    And user clicks on GST details accordion
    And user selects "<ApplicantType>"
    And user enters "<MandatoryAll>" GST details
    And user clicks on save button
    And user clicks on GST authentication accordion
    Then GST details authentication should be visible
    Examples:
      | ProductType           | ApplicationStage | MandatoryAll | ApplicantType   |
      | Omni Loan             | Lead Details     | all          | <ApplicantType> |
      | Omni Loan             | DDE              | all          | <ApplicantType> |
