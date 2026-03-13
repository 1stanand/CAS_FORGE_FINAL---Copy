@Epic-RCU
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Reconciled
@ReviewedByDEV
#FeatureID-ACAUTOCAS-510
Feature:Re-Initiate RCU

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3520: The rcu re-initiate button appears for completed rcu stage applications in rcu initiation
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Rcu_Status>" status
    When user navigates to rcu initiation screen
    And user searches the application using application id along with "<Field_Type>"
    And user selects the application
    Then rcu re-initiate button is visible
    Examples:
      | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | Field_Type | Var_Stage                 | Rcu_Status |
      | rcu_initiation.xlsx | home               | 10                        | Status     | dde_indiv_rcuinitiated_pl | Completed  |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3521: The rcu re-initiate button is not visible for applications having status as <Status>
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user searches the application using application id along with "<Field_Type>"
    And user selects the application
    Then rcu re-initiate button is not visible
    Examples:
      | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | Field_Type | Status        | Var_Stage                             |
      | rcu_initiation.xlsx | home               | 0                         | Status     | Initiated     | dde_indiv_rcuinitiated_pl             |
      | rcu_initiation.xlsx | home               | 1                         | Status     | Not-Initiated | dde_indiv_rcuinitiated_pl             |
      | rcu_initiation.xlsx | home               | 3                         | Status     | Waived        | recommendation_indiv_rcuwaived_pl     |
      | rcu_initiation.xlsx | home               | 4                         | Status     | In-Progress   | recommendation_indiv_rcuinprogress_pl |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3522: Re-initiate rcu for completed rcu stage applications in rcu initiation
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user searches the application using application id along with "<Field_Type>"
    And user selects the application
    And user re-initiate rcu
    And user selects status of application as "<RcuStatus>" in rcu initiation page
    And user searches the application in rcu initiation page
    Then rcu status is changed to "<RcuStatus>"
    Examples:
      | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | Field_Type | RcuStatus | Var_Stage                            | Status    |
      | rcu_initiation.xlsx | home               | 2                         | Status     | Initiated | recommendation_indiv_rcucompleted_pl | Completed |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3524: Re-initiate rcu of an application at credit approval stage
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    When user opens an application of "<Var_Stage>" stage variant from credit approval grid
    And user re-initiate rcu in applicant profile tab
    Then rcu status is changed to "<RcuStatus>" in credit approval page
    Examples:
      | RcuStatus | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | Var_Stage                | Status    |
      | Initiated | rcu_initiation.xlsx | home               | 2                         | credit approval_indiv_pl | Completed |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3525: Unable to re-initiate rcu of an application at reconsideration stage
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Stage>" stage to rcu "<Status>" status
    And user opens an application at "<Stage>" stage from application grid
    And user verifies update details checkbox is unchecked
    When user re-initiate rcu in intent indicator tab in reconsideration page
    Then rcu re-initiate button is not clickable
    Examples:
      | Stage                                 | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | Status    |
      | reconsideration_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 2                         | Completed |

  @ImplementedBy-rishabh.sachan
    @Release3
  Scenario Outline: ACAUTOCAS-3523: Re-initiate rcu of an application at recommendation stage
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Stage>" stage to rcu "<Status>" status
    When user opens an application at "<Stage>" stage from application grid
    And user re-initiate rcu in intent indicator tab in recommendation stage
    And user opens an application at "<Stage>" stage from application grid
    Then rcu status is changed to "<RcuStatus>" in recommendation page
    Examples:
      | Stage                                | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | Status    | RcuStatus |
      | recommendation_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 2                         | Completed | Initiated |


  #FeatureID-ACAUTOCAS-510
  @NotImplemented
  Scenario Outline: ACAUTOCAS-10169: Re-initiate rcu of an application at reconsideration stage
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    When user selects an application whose rcu is completed in application grid
    And user verifies update details checkbox is checked
    And user re-initiate rcu in intent indicator tab
    Then rcu is re-initiated successfully
    Examples:
      | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | rcu_initiation.xlsx | home               |                           |
