@Epic-Loan_Application_Details
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ImplementedBy-ayush.garg
@ReviewedByDEV
@Conventional
@Islamic

#FeatureID-ACAUTOCAS-784
Feature: Raise Query via more option

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user create new application of personal loan for individual
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 0
    And user fills home page of personal information

  @Release2
  Scenario Outline: ACAUTOCAS-1816: Application search for raising query
    When user selects application at "<StageVar>" for raising Query
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user raises a query
    Then user should be able to raise Query for selected application
    Examples:
      | StageVar    | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum |
      | LeadDetails | more_actions.xlsx | raise_query      | 0                       |

  @Release2
  Scenario Outline: ACAUTOCAS-1817: User should not assign query to himself
    When user selects application at "<StageVar>" for raising Query
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user assigns the query to itself with filling mandatory fields
    Then user should not able to assign query to himself
    Examples:
      | StageVar    | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum |
      | LeadDetails | more_actions.xlsx | raise_query      | 0                       |

  @Release2
  Scenario Outline: ACAUTOCAS-1818: Raise query by filling <Fields> fields
    And user selects application at "<StageVar>" for raising Query
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    When user fills "<Fields>" fields for raise query
    Then query raised successfully

    Examples:
      | StageVar    | Fields        | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum |
      | LeadDetails | Query Code    | more_actions.xlsx | raise_query      | 0                       |
      | LeadDetails | Query         | more_actions.xlsx | raise_query      | 0                       |
      | LeadDetails | Raise To Team | more_actions.xlsx | raise_query      | 0                       |

  @Release2
  Scenario Outline: ACAUTOCAS-1819: Query is raised to a <UserOrTeam> of selected application is visible in raise query grid
    And user selects application at "<StageVar>" for raising Query
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    When user raise query to "<UserOrTeam>"
    Then query should be visible in raise query grid

    Examples:
      | StageVar    | UserOrTeam | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum |
      | LeadDetails | user       | more_actions.xlsx | raise_query      | 0                       |
      | LeadDetails | team       | more_actions.xlsx | raise_query      | 0                       |

  @Release2
  Scenario Outline: ACAUTOCAS-1821: User can not <Action> the query once it unquery
    And user selects application at "<StageVar>" for raising Query
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    When user raise query
    And user wants to "<Action>" the query
    Then user should not be able to "<Action>" again

    Examples:
      | StageVar    | Action   | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum |
      | LeadDetails | unquery  | more_actions.xlsx | raise_query      | 0                       |
      | LeadDetails | reassign | more_actions.xlsx | raise_query      | 0                       |

  @Release2
  Scenario Outline: ACAUTOCAS-1822: Reassign the raised query to the new <TeamOrUser>
    And user selects application at "<StageVar>" for raising Query
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    And user raise query
    When user fills mandatory fields for reassign the query to "<TeamOrUser>"
    Then query should be reassigned successfully

    Examples:
      | StageVar    | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum | TeamOrUser |
      | LeadDetails | more_actions.xlsx | raise_query      | 0                       | Team       |
      | LeadDetails | more_actions.xlsx | raise_query      | 0                       | User       |

  @Release2
  Scenario Outline: ACAUTOCAS-1823: Assigning more than one query with same Query code to the same team is not possible
    And user selects application at "<StageVar>" for raising Query
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_home>" and row <MoreActions_home_rowNum>
    When user assigns more than one query with same Query code to the same team
    Then query should not be raised

    Examples:
      | StageVar    | MoreActionsWB     | MoreActions_home | MoreActions_home_rowNum |
      | LeadDetails | more_actions.xlsx | raise_query      | 0                       |

  @Release2
  Scenario Outline: ACAUTOCAS-1824:  check available documents to raise query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application of personal loan for individual
    And user selects application at "<StageVar>" for raising Query
    When user checks available documents
    Then available documents should be display
    Examples:
      | StageVar    | SourceDataFile       | SheetName | RowNumber |
      | LeadDetails | LoginDetailsCAS.xlsx | LoginData | 1         |

  @Release2
  Scenario Outline: ACAUTOCAS-1825: Select the documents to raise query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application of personal loan for individual
    And user selects application at "<StageVar>" for raising Query
    When user selects documents
    Then name of the selected documents will appear in the Documents field
    Examples:
      | StageVar    | SourceDataFile       | SheetName | RowNumber |
      | LeadDetails | LoginDetailsCAS.xlsx | LoginData | 1         |

  @Release2
  Scenario Outline: ACAUTOCAS-1826: Select the documents that needs to be uploaded
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application of personal loan for individual
    And user selects application at "<StageVar>" for raising Query
    When user choose documents
    Then documents uploaded successfully
    Examples:
      | StageVar    | SourceDataFile       | SheetName | RowNumber |
      | LeadDetails | LoginDetailsCAS.xlsx | LoginData | 1         |

  @Release2
  Scenario Outline: ACAUTOCAS-1827: Select the multiple documents that needs to be uploaded
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application of personal loan for individual
    And user selects application at "<StageVar>" for raising Query
    When user choose "<NoOfDocuments>" documents
    Then "<NoOfDocuments>" documents uploaded successfully
    Examples:
      | StageVar    | SourceDataFile       | SheetName | RowNumber | NoOfDocuments |
      | LeadDetails | LoginDetailsCAS.xlsx | LoginData | 1         | 3             |

  @Release2
  Scenario Outline: ACAUTOCAS-1820:  Unquery the raised query
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application of personal loan for individual
    And user selects application at "<StageVar>" for raising Query
    And user raise query
    When user fills "<Fields>" fields for unquery the raise query
    Then raised query should be unquery successfully

    Examples:
      | StageVar    | SourceDataFile       | SheetName | RowNumber | Fields    |
      | LeadDetails | LoginDetailsCAS.xlsx | LoginData | 1         | mandatory |
      | LeadDetails | LoginDetailsCAS.xlsx | LoginData | 1         | all       |


