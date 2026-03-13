@Epic-Holdunhold_Application
@AuthoredBy-shailja.mishra
@ReviewedBy-None
@Perishable
@ReviewedByDEV

Feature: Perform actions on Hold Unhold Application

  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-1659:  CAS-24545:Auto Reassignment of the Hold application
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application at "<StageVar>" stage from application grid
    When user selects Hold queue at "<StageVar>"
    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
    And fills data with all fields
    Then application should get successfully reassiged to the same user who has hold the application on Reassignment date and time

    Examples:
      | StageVar                 | SourceDataFile       | SheetName | RowNumber | HoldApplicationWB    | HoldApplication | HoldApplication_rownum | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | lead details_indiv_hl    | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      | personal_information.xlsx | home              | 0                        |
      | credit approval_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      | personal_information.xlsx | home              | 0                        |
      | dde_indiv_al             | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      | personal_information.xlsx | home              | 0                        |
      | recommendation_indiv_hl  | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      | personal_information.xlsx | home              | 0                        |
      | reconsideration_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      | personal_information.xlsx | home              | 0                        |
      | disbursal_indiv_hl       | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      | personal_information.xlsx | home              | 0                        |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-1660:  CAS-24545: Application TAT should not be calculated for the Hold application at <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<StageVar>" stage from application grid
    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
    When user holds the application
    Then Application TAT calculation should stop

    Examples:
      | StageVar                 | SourceDataFile       | SheetName | RowNumber | SourceDataFile       | SheetName | RowNumber | HoldApplicationWB    | HoldApplication | HoldApplication_rownum |
      | lead details_indiv_hl    | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | credit approval_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | dde_indiv_al             | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | recommendation_indiv_hl  | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | reconsideration_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | disbursal_indiv_hl       | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |

  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-1661:  CAS-24545: Application TAT should restart after application is unhold at <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<StageVar>" stage from application grid
    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
    When user holds the application
    And user unholds the hold application
    Then Application TAT calculation should start again
    Examples:
      | StageVar                 | SourceDataFile       | SheetName | RowNumber | SourceDataFile       | SheetName | RowNumber | HoldApplicationWB    | HoldApplication | HoldApplication_rownum |
      | lead details_indiv_hl    | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | credit approval_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | dde_indiv_al             | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | recommendation_indiv_hl  | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | reconsideration_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | disbursal_indiv_hl       | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |

  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-1662:  Hold application should be shown in Enquiry screen
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<StageVar>" stage from application grid
    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
    When user holds the application
    And user searches application in enquiry screen
    Then application should show the stage at which application has been put on hold
    Examples:
      | StageVar                 | SourceDataFile       | SheetName | RowNumber | HoldApplicationWB    | HoldApplication | HoldApplication_rownum |
      | lead details_indiv_hl    | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | credit approval_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | dde_indiv_al             | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | recommendation_indiv_hl  | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | reconsideration_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | disbursal_indiv_hl       | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |

  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline:ACAUTOCAS-1663: Hold application should be shown in Enquiry  should show the reason for the hold <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<StageVar>" stage from application grid
    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
    When user holds the application
    And user searches application in enquiry screen
    Then application should show reason of holding application
    Examples:
      | StageVar                 | SourceDataFile       | SheetName | RowNumber | HoldApplicationWB    | HoldApplication | HoldApplication_rownum |
      | lead details_indiv_hl    | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | credit approval_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | dde_indiv_al             | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | recommendation_indiv_hl  | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | reconsideration_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | disbursal_indiv_hl       | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |

  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-1664:  Hold application at <StageVar> details should be visible in Enquiry
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<StageVar>" stage from application grid
    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
    When user holds the application
    And user searches application in enquiry screen
    Then user should be able to see the application details

    Examples:
      | StageVar                 | SourceDataFile       | SheetName | RowNumber | HoldApplicationWB    | HoldApplication | HoldApplication_rownum |
      | lead details_indiv_hl    | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | credit approval_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | dde_indiv_al             | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | recommendation_indiv_hl  | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | reconsideration_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | disbursal_indiv_hl       | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-1665:  Hold application at <StageVar> should be non-editable in Enquiry screen
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<StageVar>" stage from application grid
    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
    When user holds the application
    And user searches application in enquiry screen
    Then application should show details of the application as non-editable
    Examples:
      | StageVar                 | SourceDataFile       | SheetName | RowNumber | HoldApplicationWB    | HoldApplication | HoldApplication_rownum |
      | lead details_indiv_hl    | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | credit approval_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | dde_indiv_al             | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | recommendation_indiv_hl  | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | reconsideration_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | disbursal_indiv_hl       | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |

  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-1666:  Hold application visibility to user who has put it on hold at <StageVar> for unholding
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<StageVar>" stage from application grid
    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
    When user holds the application
    And user who has put application on hold searches application in hold queue
    Then application should be visible to the User for unholding

    Examples:
      | StageVar                 | SourceDataFile       | SheetName | RowNumber | HoldApplicationWB    | HoldApplication | HoldApplication_rownum |
      | lead details_indiv_hl    | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | credit approval_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | dde_indiv_al             | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | recommendation_indiv_hl  | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | reconsideration_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | disbursal_indiv_hl       | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline:ACAUTOCAS-1666: Hold application  visibility to team lead of the user who has put it on hold at <StageVar> for unholding
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<StageVar>" stage from application grid
    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
    When user holds the application
    And team lead of the user who has put application on hold searches application in hold queue
    Then application should be visible to the team lead for unholding
    Examples:
      | StageVar                 | SourceDataFile       | SheetName | RowNumber | HoldApplicationWB    | HoldApplication | HoldApplication_rownum |
      | lead details_indiv_hl    | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | credit approval_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | dde_indiv_al             | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | recommendation_indiv_hl  | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | reconsideration_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | disbursal_indiv_hl       | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline:  ACAUTOCAS-1667:Hold application  visibility to team lead of the user who has put it on hold at <StageVar> for Reallocation
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<StageVar>" stage from application grid
    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
    When user holds the application
    And team lead of the user who has put applciation on hold searches application in Application Manager
    Then application should be visible to the team lead for unholding applciation

    Examples:
      | StageVar                 | SourceDataFile       | SheetName | RowNumber | HoldApplicationWB    | HoldApplication | HoldApplication_rownum |
      | lead details_indiv_hl    | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | credit approval_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | dde_indiv_al             | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | recommendation_indiv_hl  | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | reconsideration_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | disbursal_indiv_hl       | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline:  ACAUTOCAS-1669: Hold application reassignment  by user who has put it on hold at <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<StageVar>" stage from application grid
    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
    When user who has put application on hold searches application in Application Manager
    And user reassigns application to another user
    Then application should be successfully reassigned to another user
    And application should appear in the assigned grid of the assigned user

    Examples:
      | StageVar                 | SourceDataFile       | SheetName | RowNumber | HoldApplicationWB    | HoldApplication | HoldApplication_rownum |
      | lead details_indiv_hl    | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | credit approval_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | dde_indiv_al             | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | recommendation_indiv_hl  | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | reconsideration_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | disbursal_indiv_hl       | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-1670:  CAS-62880: Hold application reassignment by team lead of the user who has put it on hold at <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<StageVar>" stage from application grid
    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
    When user who has put application on hold searches application in Application Manager
    And team lead of the user who has put application on hold searches application
    And user reassigns application to another user
    Then application should be successfully reassigned to another user
    And application should appear in the assigned grid of the assigned user

    Examples:
      | StageVar                 | SourceDataFile       | SheetName | RowNumber | HoldApplicationWB    | HoldApplication | HoldApplication_rownum |
      | lead details_indiv_hl    | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | credit approval_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | dde_indiv_al             | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | recommendation_indiv_hl  | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | reconsideration_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |
      | disbursal_indiv_hl       | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      |


  @Release2
  @ImplementedBy-ayush.garg
  Scenario Outline: ACAUTOCAS-1671:  CAS-62880: Hold application reassignment from application manager by the admin user at <StageVar>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens an application at "<StageVar>" stage from application grid
    When user selects Hold queue at "<StageVar>"
    And user reads data from the excel file "<HoldApplicationWB>" under sheet "<HoldApplication>" and row <HoldApplication_rownum>
    And fills data with all fields
    And admin user searches hold application in Application manager
    And user reassigns application to another user
    Then application should be successfully reassigned to another user
    And application should appear in the assigned grid of the assigned user

    Examples:
      | StageVar                 | SourceDataFile       | SheetName | RowNumber | HoldApplicationWB    | HoldApplication | HoldApplication_rownum | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | lead details_indiv_hl    | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      | personal_information.xlsx | home              | 0                        |
      | credit approval_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      | personal_information.xlsx | home              | 0                        |
      | dde_indiv_al             | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      | personal_information.xlsx | home              | 0                        |
      | recommendation_indiv_hl  | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      | personal_information.xlsx | home              | 0                        |
      | reconsideration_indiv_hl | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      | personal_information.xlsx | home              | 0                        |
      | disbursal_indiv_hl       | LoginDetailsCAS.xlsx | LoginData | 7         | HoldApplication.xlsx | HoldApplication | 0                      | personal_information.xlsx | home              | 0                        |


