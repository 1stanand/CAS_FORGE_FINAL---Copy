@Epic-RCU
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ImplementedBy-ayush.garg
@Release2
@ReviewedByDEV
#FeatureID-ACAUTOCAS-4159
Feature: Raise Query in RCU Initiation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  Scenario Outline: ACAUTOCAS-2576: User should not able to assign query to himself in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RcuInitiationWB>" under sheet "<RcuInitiation_home>" and row <RcuInitiation_home_rowNum>
    And user searches application on RCU Initiation Page to raise query
    And user opens raise query
    And user assigns query to itself with filling mandatory fields
    Then user unable to find the user in raise to user field
    Examples:
      | RcuInitiationWB     | RcuInitiation_home | RcuInitiation_home_rowNum |
      | rcu_initiation.xlsx | raise_query        | 0                         |

  Scenario Outline:ACAUTOCAS-3509:Raise query with <Fields> fields in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RcuInitiationWB>" under sheet "<RcuInitiation_home>" and row <RcuInitiation_home_rowNum>
    And user searches application on RCU Initiation Page to raise query
    And user opens raise query
    And user fills "<Fields>" fields to raise query
    Then query should be raised successfully

    Examples:
      | Fields    | RcuInitiationWB     | RcuInitiation_home | RcuInitiation_home_rowNum |
      | mandatory | rcu_initiation.xlsx | raise_query        | 0                         |
      | all       | rcu_initiation.xlsx | raise_query        | 0                         |

  Scenario Outline:ACAUTOCAS-3510: Raise multiple queries with <Fields> fields in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RcuInitiationWB>" under sheet "<RcuInitiation_home>" and row <RcuInitiation_home_rowNum>
    And user searches application on RCU Initiation Page to raise query
    And user opens raise query
    And user fills "<Fields>" fields for raise multiple queries
    Then multiple queries raised successfully
    Examples:
      | Fields    | RcuInitiationWB     | RcuInitiation_home | RcuInitiation_home_rowNum |
      | mandatory | rcu_initiation.xlsx | raise_query        | 0                         |
      | all       | rcu_initiation.xlsx | raise_query        | 0                         |

  Scenario Outline:ACAUTOCAS-3511: Query is raised to <UserOrTeam> in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RcuInitiationWB>" under sheet "<RcuInitiation_home>" and row <RcuInitiation_home_rowNum>
    And user searches application on RCU Initiation Page to raise query
    And user opens raise query
    And user raises a query to "<UserOrTeam>"
    Then query should be raised successfully
    And query status is raised
    Examples:
      | UserOrTeam | RcuInitiationWB     | RcuInitiation_home | RcuInitiation_home_rowNum |
      | user       | rcu_initiation.xlsx | raise_query        | 0                         |
      | team       | rcu_initiation.xlsx | raise_query        | 0                         |

  Scenario Outline:ACAUTOCAS-2577:  Unquery the raised query in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RcuInitiationWB>" under sheet "<RcuInitiation_home>" and row <RcuInitiation_home_rowNum>
    And user searches application on RCU Initiation Page to raise query
    And user opens raise query
    And user raise a query
    And user unquery the raised query
    Then query status is unquery
    Examples:
      | RcuInitiationWB     | RcuInitiation_home | RcuInitiation_home_rowNum |
      | rcu_initiation.xlsx | raise_query        | 0                         |

  Scenario Outline:ACAUTOCAS-2578: Unquery the multiple raised query in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RcuInitiationWB>" under sheet "<RcuInitiation_home>" and row <RcuInitiation_home_rowNum>
    And user searches application on RCU Initiation Page to raise query
    And user opens raise query
    And user raise multiple queries
    And user unquery all the raised queries
    Then query status of all raised querries is unquery
    Examples:
      | RcuInitiationWB     | RcuInitiation_home | RcuInitiation_home_rowNum |
      | rcu_initiation.xlsx | raise_query        | 0                         |

  Scenario Outline:ACAUTOCAS-3512:User can not <Action> the query once it unquery in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RcuInitiationWB>" under sheet "<RcuInitiation_home>" and row <RcuInitiation_home_rowNum>
    And user searches application on RCU Initiation Page to raise query
    And user opens raise query
    And user raise a query
    And user unquery the raised query
    Then unquery should not be "<Action>"
    Examples:
      | Action   | RcuInitiationWB     | RcuInitiation_home | RcuInitiation_home_rowNum |
      | reassign | rcu_initiation.xlsx | raise_query        | 0                         |
      | unquery  | rcu_initiation.xlsx | raise_query        | 0                         |

  Scenario Outline:ACAUTOCAS-3513: Reassign the raised query to the new <TeamOrUser> in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RcuInitiationWB>" under sheet "<RcuInitiation_home>" and row <RcuInitiation_home_rowNum>
    And user searches application on RCU Initiation Page to raise query
    And user opens raise query
    And user raises a query to "<TeamOrUser>"
    And user reassign the raised query with filling mandatory fields
    Then query is reassigned successfully
    Examples:
      | TeamOrUser | RcuInitiationWB     | RcuInitiation_home | RcuInitiation_home_rowNum |
      | user       | rcu_initiation.xlsx | raise_query        | 0                         |
      | team       | rcu_initiation.xlsx | raise_query        | 0                         |

  Scenario Outline:ACAUTOCAS-2579: Unable to assign more than one query with same query code to the same team is not possible in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RcuInitiationWB>" under sheet "<RcuInitiation_home>" and row <RcuInitiation_home_rowNum>
    And user searches application on RCU Initiation Page to raise query
    And user opens raise query
    And user assign more than one query with same query code to the same team
    Then query is not raised with proper error message
    Examples:
      | RcuInitiationWB     | RcuInitiation_home | RcuInitiation_home_rowNum |
      | rcu_initiation.xlsx | raise_query        | 0                         |

  Scenario Outline:  ACAUTOCAS-2580: Query history records of raise query once query is raised in rcu initiation
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RcuInitiationWB>" under sheet "<RcuInitiation_home>" and row <RcuInitiation_home_rowNum>
    And user searches application on RCU Initiation Page to raise query
    And user opens raise query
    And user raise a query
    And user checks the query history records with help of query code
    Then query history record is displayed
    Examples:
      | RcuInitiationWB     | RcuInitiation_home | RcuInitiation_home_rowNum |
      | rcu_initiation.xlsx | raise_query        | 0                         |

  Scenario Outline: ACAUTOCAS-3514: Query history records <With_Without> query raised in rcu initiation stage
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RcuInitiationWB>" under sheet "<RcuInitiation_home>" and row <RcuInitiation_home_rowNum>
    And user searches application on RCU Initiation Page to raise query
    And user opens raise query
    And user checks for query history records "<With_Without>" query raised
    Then query history record is "<Created_NotCreated>"
    Examples:
      | With_Without | Created_NotCreated | RcuInitiationWB     | RcuInitiation_home | RcuInitiation_home_rowNum |
      | with         | created            | rcu_initiation.xlsx | raise_query        | 0                         |
      | without      | not created        | rcu_initiation.xlsx | raise_query        | 0                         |

  Scenario: ACAUTOCAS-2581: Select the documents to raise query in rcu initiation
    When user navigates to rcu initiation screen
    And user searches application on RCU Initiation Page to raise query
    And user opens raise query
    And user selects a document
    Then name of the selected documents will appear in the documents field
