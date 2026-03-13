@AuthoredBy-yuvraj.raghuwanshi
@ReviewedBy-Tarun.Gupta
@TechReviewedBy-
@ImplementedBy-
#Epic- Under Assigned applications queue, My, Team, and All bucket should be visible for all users
@Story_CAS_266700
@DevTrack
@GA-9.0

Feature: Under Assigned applications queue, My, Team, and All bucket should be visible for all users

#config.applications.hideshowtask Configuration is maintained as true
#Configuration to show All, My, Team task to all users is maintained as true
  Scenario Outline: Check applications in assigned grid when team lead user is logged in
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user check assigned application
    Then All, Team, My tasks should be visible

    Examples:
      | SourceDataFile       | SheetName | RowNumber |
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |

#config.applications.hideshowtask Configuration is maintained as true
#Configuration to show All, My, Team task to all users is maintained as true
  Scenario Outline: Check My tasks in assigned grid when team lead user is logged in (Tasks assigned to the logged in user should be visible)
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "" with key ""
    And user open application grid
    When user check assigned application
    And user clicks on My tasks
    And user search the <ApplicationID>
    Then application should get searched

    Examples:
      | SourceDataFile       | SheetName | RowNumber |ProductType|ApplicantType|ApplicationStage|
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |PL         |indiv        |DDE             |

#config.applications.hideshowtask Configuration is maintained as true
#Configuration to show All, My, Team task to all users is maintained as true
  Scenario Outline: Check team tasks in assigned grid when team lead user is logged in (Tasks assigned to the team members of the logged in user should be visible)
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "" with key ""
    And user open application grid
    When user check assigned application
    And user clicks on Team tasks
    And user search the <ApplicationID>
    Then application should get searched

    Examples:
      | SourceDataFile       | SheetName | RowNumber |ProductType|ApplicantType|ApplicationStage|
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |PL         |indiv        |DDE             |

#config.applications.hideshowtask Configuration is maintained as true
#Configuration to show All, My, Team task to all users is maintained as true
  Scenario Outline: Check All tasks in assigned grid when team lead user is logged in (tasks assigned to their team members, tasks of teams they belong to, and tasks of teams led by members of their team)
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "" with key ""
    And user open application grid
    When user check assigned application
    And user clicks on All tasks
    And user search the <ApplicationID>
    Then application should get searched

    Examples:
      | SourceDataFile       | SheetName | RowNumber |ProductType|ApplicantType|ApplicationStage|
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |PL         |indiv        |DDE             |

#config.applications.hideshowtask Configuration is maintained as true
#Configuration to show All, My, Team task to all users is maintained as true
  Scenario Outline: Check applications in assigned grid when non team lead user is logged in
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user check assigned application
    Then All, Team, My tasks should be visible

    Examples:
      | SourceDataFile       | SheetName | RowNumber |
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |

#config.applications.hideshowtask Configuration is maintained as true
#Configuration to show All, My, Team task to all users is maintained as true
  Scenario Outline: Check My tasks in assigned grid when a non team lead user is logged in (Task assigned to the logged in user should be visible)
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "" with key ""
    And user open application grid
    When user check assigned application
    And user clicks on My tasks
    And user search the <ApplicationID>
    Then application should get searched

    Examples:
      | SourceDataFile       | SheetName | RowNumber |ProductType|ApplicantType|ApplicationStage|
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |PL         |indiv        |DDE             |

#config.applications.hideshowtask Configuration is maintained as true
#Configuration to show All, My, Team task to all users is maintained as true
  Scenario Outline: Check Team tasks in assigned grid when a non team lead user is logged in (No tasks should be visible)
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "" with key ""
    And user open application grid
    When user check assigned application
    And user clicks on Team tasks
    And user searches the <ApplicationID>
    Then application should not get searched

    Examples:
      | SourceDataFile       | SheetName | RowNumber |ProductType|ApplicantType|ApplicationStage|
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |PL         |indiv        |DDE             |

#config.applications.hideshowtask Configuration is maintained as true
#Configuration to show All, My, Team task to all users is maintained as true
  Scenario Outline: Check All tasks in assigned grid when a non team lead user is logged (Tasks assigned to the team of the logged in user should be visible)
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user picks an application of "<ProductType>" product type as "<ApplicantType>" applicant at stage "<ApplicationStage>" for category "" with key ""
    And user open application grid
    When user check assigned application
    And user clicks on All tasks
    And user search the <ApplicationID>
    Then application should get searched

    Examples:
      | SourceDataFile       | SheetName | RowNumber |ProductType|ApplicantType|ApplicationStage|
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |PL         |indiv        |DDE             |


#config.applications.hideshowtask Configuration is maintained as true
#Configuration to show All, My, Team task to all users is maintained as false
  Scenario Outline: Check applications in assigned grid when team lead user is logged in
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user check assigned application
    Then All, Team, My tasks should be visible

    Examples:
      | SourceDataFile       | SheetName | RowNumber |
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |

#config.applications.hideshowtask Configuration is maintained as true
#Configuration to show All, My, Team task to all users is maintained as false
  Scenario Outline: Check applications in assigned grid when team non lead user is logged in
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user check assigned application
    Then All, Team, My tasks should not be visible

    Examples:
      | SourceDataFile       | SheetName | RowNumber |
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |

#config.applications.hideshowtask Configuration is maintained as false
#Configuration to show All, My, Team task to all users is maintained as true
  Scenario Outline: Check applications in assigned grid when team lead user is logged in
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user check assigned application
    Then All, Team, My tasks should not be visible

    Examples:
      | SourceDataFile       | SheetName | RowNumber |
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |

#config.applications.hideshowtask Configuration is maintained as false
#Configuration to show All, My, Team task to all users is maintained as true
  Scenario Outline: Check applications in assigned grid when team lead user is logged in
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user check assigned application
    Then All, Team, My tasks should not be visible

    Examples:
      | SourceDataFile       | SheetName | RowNumber |
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |

#config.applications.hideshowtask Configuration is maintained as false
#Configuration to show All, My, Team task to all users is maintained as false
  Scenario Outline: Check applications in assigned grid when team lead user is logged in
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user check assigned application
    Then All, Team, My tasks should not be visible

    Examples:
      | SourceDataFile       | SheetName | RowNumber |
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |

#config.applications.hideshowtask Configuration is maintained as false
#Configuration to show All, My, Team task to all users is maintained as false
  Scenario Outline: Check applications in assigned grid when team lead user is logged in
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user open application grid
    When user check assigned application
    Then All, Team, My tasks should not be visible

    Examples:
      | SourceDataFile       | SheetName | RowNumber |
      | LoginDetailsCAS.xlsx | UserCAS   | 0         |
