@Epic-Cancel_Application
@AuthoredBy-shailja.mishra
@ImplementedBy-akash.bansal
@ReviewedBy-None
@Release2
@Reconciled
@ReviewedByDEV
Feature: Cancel Application and cancel approval of selected Application at multiple workflow stages

  Scenario Outline: ACAUTOCAS-956: Provision to initiate Cancel Application at <StageVar> from Menu
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills and saves employment details for occupation as salaried
    When user searches application at "<StageVar>" from Cancel Application option in Menu
    Then user should be able to search the active application for cancellation initiation at "<StageVar>"

    Examples:
      | StageVar     | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Loan_Type     |
      | Lead Details | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | employment_details.xlsx | home                   | 7                             | Personal Loan |

  @Perishable
  Scenario Outline: Initiate Cancel Application at <StageVar> from Menu
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills and saves employment details for occupation as salaried
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    When user searches application at "<StageVar>" from Cancel Application option in Menu
    And user initiates cancellation for the searched application at "<StageVar>"
    Then cancellation should be initiated successfully

    Examples:
      | StageVar     | SourceDataFile       | SheetName | RowNumber | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Loan_Type     | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | Lead Details | LoginDetailsCAS.xlsx | LoginData | 0         | personal_information.xlsx | home              | 24                       | employment_details.xlsx | home                   | 7                             | Personal Loan | cancel_application.xlsx | cancel_application | 1                        |

#Cancelled Application - APPL00077353
  Scenario Outline: ACAUTOCAS-957: System to stop the initiation of Cancellation if the application is already marked for cancellation approval at <StageVar> from Menu
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reassigns the application on "<Stage>" stage to itself
    When user searches already cancelled application at "<StageVar>" from Cancel Application option in Menu
    Then user should not be able to search the application for cancellation initiation in Pool, Assigned, hold grid

    Examples:
      | StageVar     | SourceDataFile       | SheetName | RowNumber | Stage        | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | Lead Details | LoginDetailsCAS.xlsx | LoginData | 0         | Cancellation | cancel_application.xlsx | cancel_application | 12                       |


  Scenario Outline: ACAUTOCAS-958: <StageVar> Application should show status as cancelled in application manager
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user reassigns the application "<CancelledApplication>" on "<Stage>" stage to itself
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reassigns the application on "<Stage>" stage to itself
    When user searches already marked cancelled application in Application Manager
    Then user should be able to see the application with status marked as Cancelled
#Cancelled Application - APPL00077353
    Examples:
      | StageVar               | SourceDataFile       | SheetName | RowNumber | Stage        | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | Cancellation Initiated | LoginDetailsCAS.xlsx | LoginData | 0         | Cancellation | cancel_application.xlsx | cancel_application | 12                       |
#Cancelled Application - APPL00010011
    @PotentialBug
    Examples:
      | StageVar              | SourceDataFile       | SheetName | RowNumber | Stage        | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | Cancellation Approved | LoginDetailsCAS.xlsx | LoginData | 0         | Cancellation | cancel_application.xlsx | cancel_application | 13                       |

#Cancelled Application - APPL00077353
  Scenario Outline: ACAUTOCAS-959: Cancelled Application can be reassigned to team or branch from application manager
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    When user searches already marked cancelled application in Application Manager from excel
    And user reassigns the application to branch or team or user for further action
    Then user should be able to reassign the application to branch or team or user for further action

    Examples:
      | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 12                       |


    # Needs new application with Cancellation Initiated by different user
  @Perishable
  Scenario Outline: ACAUTOCAS-960: Cancel Application approval by user who has not initiated cancellation
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "lead details_indiv_pl" stage from application grid
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reassigns the application on "<Stage>" stage to itself
    When user who has not cancelled the application searches already marked cancelled application in Cancelled Application Menu
    Then user should be able to see the cancelled application for further action

    Examples:
      | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum | Stage        |
      | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 14                       | Cancellation |


    # Needs new application without cancellation initiation
#    USER SHOULD NOT BE ABLE TO ASSIGN APPLICATION TO ITSELF
  @Perishable
    @PotentialBug
  Scenario Outline: ACAUTOCAS-961: Cancel Application review by user who has initiated cancellation
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "lead details_indiv_pl" stage from application grid
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user searches application at "<StageVar>" from Cancel Application option
    And user initiates cancellation for the searched application at "<StageVar>"
    When user who has cancelled the application searches already marked cancelled application in Cancelled Application Menu
    Then user should not be able to see the cancelled application for further action

    Examples:
      | StageVar     | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | Lead Details | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 15                       |


  Scenario Outline: ACAUTOCAS-962: Reviewer for cancelled application should see the reason of initiating the cancellation
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reassigns the application on "<Stage>" stage to itself
    When user searches cancelled application for approval
    Then user should be able to see the reason for cancellation initiation

    Examples:
      | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum | Stage        |
      | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 2                        | Cancellation |


  Scenario Outline: ACAUTOCAS-963: Cancelled application reviewer should put the review actions
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reassigns the application on "<Stage>" stage to itself
    When user searches cancelled application for approval
    And user adds review action
    Then user should be able to add the review action

    Examples:
      | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum | Stage        |
      | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 3                        | Cancellation |

# Needs new cancellation initiated application id by different user
  @Perishable
  Scenario Outline: ACAUTOCAS-964: Cancelled application reviewer can confirm cancellation the application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "lead details_indiv_pl" stage from application grid
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reassigns the application on "<Stage>" stage to itself
    And user searches cancelled application for approval
    When user confirms the cancellation
    Then user should be able to give the reason for the application cancellation confirmation

    Examples:
      | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum | Stage        | Stage        |
      | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 16                       | Cancellation | Cancellation |


  Scenario Outline: ACAUTOCAS-965: Cancelled application reviewer can send back the application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reassigns the application on "<Stage>" stage to itself
    When user searches cancelled application for approval
    And user marks application for sending back
    And user should be able to select the activity on which application can be send back
    Then user should be able to select activity to send back from "<Stage>"

    Examples:
      | Stage        | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | Lead Details | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 11                       |


  Scenario Outline: ACAUTOCAS-966: Application reviewer can send back the application to the application stages which are configured in the system for <Stage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reassigns the application on "<StageVar>" stage to itself
    When user searches cancelled application for approval
    And user marks application for sending back
    Then user should be able to see the send back stages which are configured in the workflow configuration for the Workflow of the application product type

    Examples:
      | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum | Stage | StageVar     |
      | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 21                       | DDE   | Cancellation |


##to be edited further once raise query feature file is written and completed
#  Scenario Outline: ACAUTOCAS-967: Application  reviewer can rasie Query
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user searched cancelled application for approval
#    When user see the application details
#    Then user should be able to successfully raise query
#
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber |
#      | LoginDetailsCAS.xlsx | LoginData | 0         |
#
  Scenario Outline: ACAUTOCAS-968: For Cancel application reason as <Mandatory_reason> description field <editable> validation
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reassigns the application on "<Stage>" stage to itself
    When user searches cancelled application for approval
    And user selects data with "<Mandatory_reason>" fields
    Then reason description should be "<editable>" with reason as "<Mandatory_reason>"

    Examples:
      | Mandatory_reason     | editable     | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum | Stage        |
      | Other                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 5                        | Cancellation |
      #PotentialBug
    Examples:
      | Mandatory_reason     | editable     | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum | Stage        |
      | any_other_than_Other | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 6                        | Cancellation |

# Needs new cancellation initiated application id by different user
  @Perishable
  Scenario Outline: ACAUTOCAS-969: For Cancel application multiple reasons can be added with <Mandatory> fields
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "lead details_indiv_pl" stage from application grid
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reassigns the application on "<Stage>" stage to itself
    When user searches cancelled application for approval
    And user fills data with "<Mandatory>" fields
    And user wants to add another reason and description
    And user saves cancellation approval
#    Then new reason can be added
    Then application is cancelled successfully

    Examples:
      | Mandatory | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum | Stage        |
      | Mandatory | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 17                       | Cancellation |
      | All       | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 18                       | Cancellation |

# Needs new cancellation initiated application id by different user
  @Perishable
  Scenario Outline: ACAUTOCAS-970: For Cancel application duplicate reasons with reasons as <Mandatory_reason> cannot be added with <Mandatory> fields
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "lead details_indiv_pl" stage from application grid
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reassigns the application on "<Stage>" stage to itself
    When user searches cancelled application for approval
    And user fills data with "<Mandatory>" fields
    And user wants to add another reason and description
    Then duplicate reason code should not be saved

    Examples:
      | Mandatory | Mandatory_reason | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum | Stage        |
      | Mandatory | Confirm          | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 20                       | Cancellation |
      | All       | Confirm          | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 20                       | Cancellation |

    @PotentialBug
    Examples:
      | Mandatory | Mandatory_reason | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum | Stage        |
      | Mandatory | Others           | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 19                       | Cancellation |
      | All       | Others           | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 22                       | Cancellation |


  Scenario Outline: ACAUTOCAS-971: Application  reviewer can see the Cancellation initiation non editable details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    When user searches cancelled application for approval
    Then user should be able to see the user who Cancelled the application, stage from where it is being cancelled, date and time of the cancellation initiation

    Examples:
      | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum |
      | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 8                        |


  Scenario Outline: ACAUTOCAS-972: Application reviewer can see the Cancellation history
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
    And user reassigns the application on "<Stage>" stage to itself
    When user searches cancelled application for approval
    Then user should be able to successfully see the cancellation history

    Examples:
      | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum | Stage        |
      | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 8                        | Cancellation |

#  @Logged_Bug
#  Scenario Outline: ACAUTOCAS-973: Application reviewer can initiate the IMD Refund in case IMD Refund Policy is attached with the product or scheme of the loan
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user reads data from the excel file "<CancelApplicationWB>" under sheet "<CancelApplication>" and row <CancelApplication_rowNum>
#    And user reassigns the application on "<Stage>" stage to itself
#    And user searches cancelled application for approval
#    When user see the application details
#    Then user should be able to successfully initiate the IMD Refund in case IMD Policy is atatched to the product or scheme of loan
#
#    Examples:
#      | SourceDataFile       | SheetName | RowNumber | CancelApplicationWB     | CancelApplication  | CancelApplication_rowNum | Stage        |
#      | LoginDetailsCAS.xlsx | LoginData | 0         | cancel_application.xlsx | cancel_application | 8                        | Cancellation |
