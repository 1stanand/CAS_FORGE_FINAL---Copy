@Epic-Reconsideration
@AuthoredBy-harshita.nayak
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@Release3

Feature: Intent Indicators for RCU field validation in Reconsideration

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-3564: Viewing the <status> of RCU Details with their <field_name> in Intent Indicators at Reconsideration for Individual
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<status>" status
    And user opens an application at "<Var_Stage>" stage from application grid
    And user check RCU tab with "<status>" on reconsideration
    When user check the "<status>" of RCU Details at Reconsideration
    Then "<field_name>" should be present for view mode in RCU Details

    Examples:
      | status        | field_name     | Var_Stage                              | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | Initiated     | Applicant Name | reconsideration_indiv_rcuinitiated_hl  | rcu_initiation.xlsx | home               | 36                        |
      | Initiated     | RCU Status     | reconsideration_indiv_rcuinitiated_hl  | rcu_initiation.xlsx | home               | 36                        |
      | Initiated     | RCU Result     | reconsideration_indiv_rcuinitiated_hl  | rcu_initiation.xlsx | home               | 36                        |
      | Initiated     | Completion By  | reconsideration_indiv_rcuinitiated_hl  | rcu_initiation.xlsx | home               | 36                        |
      | Initiated     | Applicant Name | reconsideration_indiv_rcuinitiated_pl  | rcu_initiation.xlsx | home               | 36                        |
      | Initiated     | RCU Status     | reconsideration_indiv_rcuinitiated_pl  | rcu_initiation.xlsx | home               | 36                        |
      | Initiated     | RCU Result     | reconsideration_indiv_rcuinitiated_pl  | rcu_initiation.xlsx | home               | 36                        |
      | Initiated     | Completion By  | reconsideration_indiv_rcuinitiated_pl  | rcu_initiation.xlsx | home               | 36                        |
      | Initiated     | Applicant Name | reconsideration_indiv_rcuinitiated_mal  | rcu_initiation.xlsx | home               | 36                        |
      | Initiated     | RCU Status     | reconsideration_indiv_rcuinitiated_mal  | rcu_initiation.xlsx | home               | 36                        |
      | Initiated     | RCU Result     | reconsideration_indiv_rcuinitiated_mal  | rcu_initiation.xlsx | home               | 36                        |
      | Initiated     | Completion By  | reconsideration_indiv_rcuinitiated_mal  | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | Applicant Name | reconsideration_indiv_hl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | RCU Status     | reconsideration_indiv_hl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | RCU Result     | reconsideration_indiv_hl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | Completion By  | reconsideration_indiv_hl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | Applicant Name | reconsideration_indiv_pl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | RCU Status     | reconsideration_indiv_pl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | RCU Result     | reconsideration_indiv_pl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | Completion By  | reconsideration_indiv_pl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | Applicant Name | reconsideration_indiv_mal               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | RCU Status     | reconsideration_indiv_mal               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | RCU Result     | reconsideration_indiv_mal               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | Completion By  | reconsideration_indiv_mal               | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | Applicant Name | reconsideration_indiv_rcuwaived_hl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | RCU Status     | reconsideration_indiv_rcuwaived_hl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | RCU Result     | reconsideration_indiv_rcuwaived_hl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | Completion By  | reconsideration_indiv_rcuwaived_hl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | Applicant Name | reconsideration_indiv_rcuwaived_pl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | RCU Status     | reconsideration_indiv_rcuwaived_pl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | RCU Result     | reconsideration_indiv_rcuwaived_pl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | Completion By  | reconsideration_indiv_rcuwaived_pl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | Applicant Name | reconsideration_indiv_rcuwaived_mal     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | RCU Status     | reconsideration_indiv_rcuwaived_mal     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | RCU Result     | reconsideration_indiv_rcuwaived_mal     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | Completion By  | reconsideration_indiv_rcuwaived_mal     | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | Applicant Name | reconsideration_indiv_rcucompleted_hl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | RCU Status     | reconsideration_indiv_rcucompleted_hl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | RCU Result     | reconsideration_indiv_rcucompleted_hl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | Completion By  | reconsideration_indiv_rcucompleted_hl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | Applicant Name | reconsideration_indiv_rcucompleted_pl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | RCU Status     | reconsideration_indiv_rcucompleted_pl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | RCU Result     | reconsideration_indiv_rcucompleted_pl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | Completion By  | reconsideration_indiv_rcucompleted_pl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | Applicant Name | reconsideration_indiv_rcucompleted_mal  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | RCU Status     | reconsideration_indiv_rcucompleted_mal  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | RCU Result     | reconsideration_indiv_rcucompleted_mal  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | Completion By  | reconsideration_indiv_rcucompleted_mal  | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | Applicant Name | reconsideration_indiv_rcuinprogress_hl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | RCU Status     | reconsideration_indiv_rcuinprogress_hl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | RCU Result     | reconsideration_indiv_rcuinprogress_hl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | Completion By  | reconsideration_indiv_rcuinprogress_hl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | Applicant Name | reconsideration_indiv_rcuinprogress_pl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | RCU Status     | reconsideration_indiv_rcuinprogress_pl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | RCU Result     | reconsideration_indiv_rcuinprogress_pl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | Completion By  | reconsideration_indiv_rcuinprogress_pl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | Applicant Name | reconsideration_indiv_rcuinprogress_mal | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | RCU Status     | reconsideration_indiv_rcuinprogress_mal | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | RCU Result     | reconsideration_indiv_rcuinprogress_mal | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | Completion By  | reconsideration_indiv_rcuinprogress_mal | rcu_initiation.xlsx | home               | 36                        |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-4743: Viewing the <Rcu_status> of RCU Details with their <field_name> in Intent Indicators at Reconsideration for Non-Individual
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Rcu_status>" status
    And user opens an application at "<Var_Stage>" stage from application grid
    And user check RCU tab with "<Rcu_status>" on reconsideration
    When user check the "<Rcu_status>" of RCU Details at Reconsideration
    Then "<field_name>" should be present for view mode in RCU Details

    Examples:
      | Rcu_status    | field_name     | Var_Stage                                 | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | initiate      | Applicant Name | reconsideration_nonindiv_rcuinitiated_hl  | rcu_initiation.xlsx | home               | 36                        |
      | initiate      | RCU Status     | reconsideration_nonindiv_rcuinitiated_hl  | rcu_initiation.xlsx | home               | 36                        |
      | initiate      | RCU Result     | reconsideration_nonindiv_rcuinitiated_hl  | rcu_initiation.xlsx | home               | 36                        |
      | initiate      | Completion By  | reconsideration_nonindiv_rcuinitiated_hl  | rcu_initiation.xlsx | home               | 36                        |
      | initiate      | Applicant Name | reconsideration_nonindiv_rcuinitiated_pl  | rcu_initiation.xlsx | home               | 36                        |
      | initiate      | RCU Status     | reconsideration_nonindiv_rcuinitiated_pl  | rcu_initiation.xlsx | home               | 36                        |
      | initiate      | RCU Result     | reconsideration_nonindiv_rcuinitiated_pl  | rcu_initiation.xlsx | home               | 36                        |
      | initiate      | Completion By  | reconsideration_nonindiv_rcuinitiated_pl  | rcu_initiation.xlsx | home               | 36                        |
      | initiate      | Applicant Name | reconsideration_nonindiv_rcuinitiated_mal  | rcu_initiation.xlsx | home               | 36                        |
      | initiate      | RCU Status     | reconsideration_nonindiv_rcuinitiated_mal  | rcu_initiation.xlsx | home               | 36                        |
      | initiate      | RCU Result     | reconsideration_nonindiv_rcuinitiated_mal  | rcu_initiation.xlsx | home               | 36                        |
      | Initiate      | Completion By  | reconsideration_nonindiv_rcuinitiated_mal  | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | Applicant Name | reconsideration_nonindiv_hl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | RCU Status     | reconsideration_nonindiv_hl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | RCU Result     | reconsideration_nonindiv_hl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | Completion By  | reconsideration_nonindiv_hl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | Applicant Name | reconsideration_nonindiv_pl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | RCU Status     | reconsideration_nonindiv_pl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | RCU Result     | reconsideration_nonindiv_pl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | Completion By  | reconsideration_nonindiv_pl               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | Applicant Name | reconsideration_nonindiv_mal               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | RCU Status     | reconsideration_nonindiv_mal               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | RCU Result     | reconsideration_nonindiv_mal               | rcu_initiation.xlsx | home               | 36                        |
      | Not-Initiated | Completion By  | reconsideration_nonindiv_mal               | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | Applicant Name | reconsideration_nonindiv_rcuwaived_hl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | RCU Status     | reconsideration_nonindiv_rcuwaived_hl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | RCU Result     | reconsideration_nonindiv_rcuwaived_hl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | Completion By  | reconsideration_nonindiv_rcuwaived_hl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | Applicant Name | reconsideration_nonindiv_rcuwaived_pl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | RCU Status     | reconsideration_nonindiv_rcuwaived_pl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | RCU Result     | reconsideration_nonindiv_rcuwaived_pl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | Completion By  | reconsideration_nonindiv_rcuwaived_pl     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | Applicant Name | reconsideration_nonindiv_rcuwaived_mal     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | RCU Status     | reconsideration_nonindiv_rcuwaived_mal     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | RCU Result     | reconsideration_nonindiv_rcuwaived_mal     | rcu_initiation.xlsx | home               | 36                        |
      | Waived        | Completion By  | reconsideration_nonindiv_rcuwaived_mal     | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | Applicant Name | reconsideration_nonindiv_rcucompleted_hl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | RCU Status     | reconsideration_nonindiv_rcucompleted_hl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | RCU Result     | reconsideration_nonindiv_rcucompleted_hl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | Completion By  | reconsideration_nonindiv_rcucompleted_hl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | Applicant Name | reconsideration_nonindiv_rcucompleted_pl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | RCU Status     | reconsideration_nonindiv_rcucompleted_pl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | RCU Result     | reconsideration_nonindiv_rcucompleted_pl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | Completion By  | reconsideration_nonindiv_rcucompleted_pl  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | Applicant Name | reconsideration_nonindiv_rcucompleted_mal  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | RCU Status     | reconsideration_nonindiv_rcucompleted_mal  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | RCU Result     | reconsideration_nonindiv_rcucompleted_mal  | rcu_initiation.xlsx | home               | 36                        |
      | Completed     | Completion By  | reconsideration_nonindiv_rcucompleted_mal  | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | Applicant Name | reconsideration_nonindiv_rcuinprogress_hl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | RCU Status     | reconsideration_nonindiv_rcuinprogress_hl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | RCU Result     | reconsideration_nonindiv_rcuinprogress_hl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | Completion By  | reconsideration_nonindiv_rcuinprogress_hl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | Applicant Name | reconsideration_nonindiv_rcuinprogress_pl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | RCU Status     | reconsideration_nonindiv_rcuinprogress_pl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | RCU Result     | reconsideration_nonindiv_rcuinprogress_pl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | Completion By  | reconsideration_nonindiv_rcuinprogress_pl | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | Applicant Name | reconsideration_nonindiv_rcuinprogress_mal | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | RCU Status     | reconsideration_nonindiv_rcuinprogress_mal | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | RCU Result     | reconsideration_nonindiv_rcuinprogress_mal | rcu_initiation.xlsx | home               | 36                        |
      | In-Progress   | Completion By  | reconsideration_nonindiv_rcuinprogress_mal | rcu_initiation.xlsx | home               | 36                        |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-4900: RCU status is waived than view RCU History all data filled in RCU Details with their <field_name> in Intent Indicators at Reconsideration for Individual
    And user moves the application at "<Var_Stage>" stage to rcu "<Rcu_status>" status
    And user opens an application at "<Var_Stage>" stage from application grid
    And user check RCU tab with "waived" on reconsideration
    When user select RCU History
    Then "<field_name>" should be filled for view mode in RCU Details

    Examples:
      | field_name            | Var_Stage                          | Rcu_status |
      | Application ID        | reconsideration_indiv_rcuwaived_hl | Waived     |
      | Customer Name         | reconsideration_indiv_rcuwaived_hl | Waived     |
      | Product Type          | reconsideration_indiv_rcuwaived_hl | Waived     |
      | Product               | reconsideration_indiv_rcuwaived_hl | Waived     |
      | Scheme / Card Type    | reconsideration_indiv_rcuwaived_hl | Waived     |
      | RCU Status            | reconsideration_indiv_rcuwaived_hl | Waived     |
      | RCU Initiation Result | reconsideration_indiv_rcuwaived_hl | Waived     |
      | Verification Date     | reconsideration_indiv_rcuwaived_hl | Waived     |
      | Completion by         | reconsideration_indiv_rcuwaived_hl | Waived     |
      | RCU Result            | reconsideration_indiv_rcuwaived_hl | Waived     |
      | Application ID        | reconsideration_indiv_rcuwaived_pl | Waived     |
      | Customer Name         | reconsideration_indiv_rcuwaived_pl | Waived     |
      | Product Type          | reconsideration_indiv_rcuwaived_pl | Waived     |
      | Product               | reconsideration_indiv_rcuwaived_pl | Waived     |
      | Scheme / Card Type    | reconsideration_indiv_rcuwaived_pl | Waived     |
      | RCU Status            | reconsideration_indiv_rcuwaived_pl | Waived     |
      | RCU Initiation Result | reconsideration_indiv_rcuwaived_pl | Waived     |
      | Verification Date     | reconsideration_indiv_rcuwaived_pl | Waived     |
      | Completion by         | reconsideration_indiv_rcuwaived_pl | Waived     |
      | RCU Result            | reconsideration_indiv_rcuwaived_pl | Waived     |
      | Application ID        | reconsideration_indiv_rcuwaived_mal | Waived     |
      | Customer Name         | reconsideration_indiv_rcuwaived_mal | Waived     |
      | Product Type          | reconsideration_indiv_rcuwaived_mal | Waived     |
      | Product               | reconsideration_indiv_rcuwaived_mal | Waived     |
      | Scheme / Card Type    | reconsideration_indiv_rcuwaived_mal | Waived     |
      | RCU Status            | reconsideration_indiv_rcuwaived_mal | Waived     |
      | RCU Initiation Result | reconsideration_indiv_rcuwaived_mal | Waived     |
      | Verification Date     | reconsideration_indiv_rcuwaived_mal | Waived     |
      | Completion by         | reconsideration_indiv_rcuwaived_mal | Waived     |
      | RCU Result            | reconsideration_indiv_rcuwaived_mal | Waived     |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-4901: RCU status is waived than view RCU History all data filled in RCU Details with their <field_name> in Intent Indicators at Reconsideration for Non-Individual
    And user moves the application at "<Var_Stage>" stage to rcu "<Rcu_status>" status
    And user opens an application at "<Var_Stage>" stage from application grid
    And user check RCU tab with "waived" on reconsideration
    When user select RCU History
    Then "<field_name>" should be filled for view mode in RCU Details

    Examples:
      | field_name            | Var_Stage                             | Rcu_status |
      | Application ID        | reconsideration_nonindiv_rcuwaived_hl | Waived     |
      | Customer Name         | reconsideration_nonindiv_rcuwaived_hl | Waived     |
      | Product Type          | reconsideration_nonindiv_rcuwaived_hl | Waived     |
      | Product               | reconsideration_nonindiv_rcuwaived_hl | Waived     |
      | Scheme / Card Type    | reconsideration_nonindiv_rcuwaived_hl | Waived     |
      | RCU Status            | reconsideration_nonindiv_rcuwaived_hl | Waived     |
      | RCU Initiation Result | reconsideration_nonindiv_rcuwaived_hl | Waived     |
      | Verification Date     | reconsideration_nonindiv_rcuwaived_hl | Waived     |
      | Completion by         | reconsideration_nonindiv_rcuwaived_hl | Waived     |
      | RCU Result            | reconsideration_nonindiv_rcuwaived_hl | Waived     |
      | Application ID        | reconsideration_nonindiv_rcuwaived_pl | Waived     |
      | Customer Name         | reconsideration_nonindiv_rcuwaived_pl | Waived     |
      | Product Type          | reconsideration_nonindiv_rcuwaived_pl | Waived     |
      | Product               | reconsideration_nonindiv_rcuwaived_pl | Waived     |
      | Scheme / Card Type    | reconsideration_nonindiv_rcuwaived_pl | Waived     |
      | RCU Status            | reconsideration_nonindiv_rcuwaived_pl | Waived     |
      | RCU Initiation Result | reconsideration_nonindiv_rcuwaived_pl | Waived     |
      | Verification Date     | reconsideration_nonindiv_rcuwaived_pl | Waived     |
      | Completion by         | reconsideration_nonindiv_rcuwaived_pl | Waived     |
      | RCU Result            | reconsideration_nonindiv_rcuwaived_pl | Waived     |
      | Application ID        | reconsideration_nonindiv_rcuwaived_mal | Waived     |
      | Customer Name         | reconsideration_nonindiv_rcuwaived_mal | Waived     |
      | Product Type          | reconsideration_nonindiv_rcuwaived_mal | Waived     |
      | Product               | reconsideration_nonindiv_rcuwaived_mal | Waived     |
      | Scheme / Card Type    | reconsideration_nonindiv_rcuwaived_mal | Waived     |
      | RCU Status            | reconsideration_nonindiv_rcuwaived_mal | Waived     |
      | RCU Initiation Result | reconsideration_nonindiv_rcuwaived_mal | Waived     |
      | Verification Date     | reconsideration_nonindiv_rcuwaived_mal | Waived     |
      | Completion by         | reconsideration_nonindiv_rcuwaived_mal | Waived     |
      | RCU Result            | reconsideration_nonindiv_rcuwaived_mal | Waived     |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-4744: RCU status is Completed than view RCU History all data filled in RCU Details with their <field_name> in Intent Indicators at Reconsideration for Individual
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Rcu_status>" status
    And user opens an application at "<Var_Stage>" stage from application grid
    And user check RCU tab with "completed" on reconsideration
    When user select RCU History
    Then "<field_name>" should be filled for view mode in RCU Details

    Examples:
      | field_name            | Rcu_status | Var_Stage                             | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | Application ID        | Completed  | reconsideration_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Customer Name         | Completed  | reconsideration_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Product Type          | Completed  | reconsideration_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Product               | Completed  | reconsideration_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Scheme / Card Type    | Completed  | reconsideration_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Status            | Completed  | reconsideration_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Initiation Result | Completed  | reconsideration_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Verification Date     | Completed  | reconsideration_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Completion by         | Completed  | reconsideration_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Result            | Completed  | reconsideration_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Application ID        | Completed  | reconsideration_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Customer Name         | Completed  | reconsideration_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Product Type          | Completed  | reconsideration_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Product               | Completed  | reconsideration_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Scheme / Card Type    | Completed  | reconsideration_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Status            | Completed  | reconsideration_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Initiation Result | Completed  | reconsideration_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Verification Date     | Completed  | reconsideration_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Completion by         | Completed  | reconsideration_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Result            | Completed  | reconsideration_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Application ID        | Completed  | reconsideration_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Customer Name         | Completed  | reconsideration_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Product Type          | Completed  | reconsideration_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Product               | Completed  | reconsideration_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Scheme / Card Type    | Completed  | reconsideration_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | RCU Status            | Completed  | reconsideration_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | RCU Initiation Result | Completed  | reconsideration_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Verification Date     | Completed  | reconsideration_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Completion by         | Completed  | reconsideration_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | RCU Result            | Completed  | reconsideration_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-4744: RCU status is Completed than view RCU History all data filled in RCU Details with their <field_name> in Intent Indicators at Reconsideration for Non-Individual
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Rcu_Status>" status
    And user opens an application at "<Var_Stage>" stage from application grid
    And user check RCU tab with "completed" on reconsideration
    When user select RCU History
    Then "<field_name>" should be filled for view mode in RCU Details

    Examples:
      | field_name            | Rcu_Status | Var_Stage                                | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | Application ID        | Completed  | reconsideration_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Customer Name         | Completed  | reconsideration_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Product Type          | Completed  | reconsideration_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Product               | Completed  | reconsideration_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Scheme / Card Type    | Completed  | reconsideration_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Status            | Completed  | reconsideration_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Initiation Result | Completed  | reconsideration_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Verification Date     | Completed  | reconsideration_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Completion by         | Completed  | reconsideration_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Result            | Completed  | reconsideration_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Application ID        | Completed  | reconsideration_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Customer Name         | Completed  | reconsideration_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Product Type          | Completed  | reconsideration_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Product               | Completed  | reconsideration_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Scheme / Card Type    | Completed  | reconsideration_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Status            | Completed  | reconsideration_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Initiation Result | Completed  | reconsideration_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Verification Date     | Completed  | reconsideration_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Completion by         | Completed  | reconsideration_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Result            | Completed  | reconsideration_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Application ID        | Completed  | reconsideration_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Customer Name         | Completed  | reconsideration_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Product Type          | Completed  | reconsideration_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Product               | Completed  | reconsideration_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Scheme / Card Type    | Completed  | reconsideration_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | RCU Status            | Completed  | reconsideration_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | RCU Initiation Result | Completed  | reconsideration_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Verification Date     | Completed  | reconsideration_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Completion by         | Completed  | reconsideration_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | RCU Result            | Completed  | reconsideration_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |

  @ImplementedBy-tushar.chauhan
  Scenario Outline:ACAUTOCAS-3570:Validating the <visibility> of RCU in Intent Indicators at Reconsideration for <Applicant> applicant in <Loan_Type>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<check>" update details
    And user is on Intent Indicators RCU details
    Then RCU details should be "<visibility>"

    Examples:
      | Applicant      | visibility   | Loan_Type     | check    | Var_Stage                        |
      | Individual     | non-editable | Home Loan     | unchecks | reconsideration_individual_hl    |
      | Individual     | editable     | Home Loan     | checks   | reconsideration_individual_hl    |
      | Individual     | non-editable | Personal Loan | unchecks | reconsideration_individual_pl    |
      | Individual     | editable     | Personal Loan | checks   | reconsideration_individual_pl    |
      | Individual     | non-editable | Auto Loan     | unchecks | reconsideration_individual_mal    |
      | Individual     | editable     | Auto Loan     | checks   | reconsideration_individual_mal    |
      | Non-Individual | non-editable | Home Loan     | unchecks | reconsideration_nonindividual_hl |
      | Non-Individual | editable     | Home Loan     | checks   | reconsideration_nonindividual_hl |
      | Non-Individual | non-editable | Personal Loan | unchecks | reconsideration_nonindividual_pl |
      | Non-Individual | editable     | Personal Loan | checks   | reconsideration_nonindividual_pl |
      | Non-Individual | non-editable | Auto Loan     | unchecks | reconsideration_nonindividual_mal |
      | Non-Individual | editable     | Auto Loan     | checks   | reconsideration_nonindividual_mal |

  @ImplementedBy-tushar.chauhan
  #FeatureID-ACAUTOCAS-594
  Scenario Outline: ACAUTOCAS-4745:  Re-initiate RCU Details of Intent Indicators at Reconsideration for <Applicant> applicant in <Loan_Type>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user "<check>" update details
    And user is on Intent Indicators RCU details
    When user clicks Re-initiate tab with "<visibility>" status
    Then RCU Re-initiate "<behaviour>" execute successfully with rerun

    Examples:
      | Applicant      | visibility | Loan_Type     | check    | behaviour  | Var_Stage                        | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | Individual     | disable    | Home Loan     | unchecks | should not | reconsideration_individual_hl    | rcu_initiation.xlsx | home               | 104                       |
      | Individual     | enable     | Home Loan     | checks   | should     | reconsideration_individual_hl    | rcu_initiation.xlsx | home               | 104                       |
      | Individual     | disable    | Personal Loan | unchecks | should not | reconsideration_individual_pl    | rcu_initiation.xlsx | home               | 104                       |
      | Individual     | enable     | Personal Loan | checks   | should     | reconsideration_individual_pl    | rcu_initiation.xlsx | home               | 104                       |
      | Individual     | disable    | Auto Loan     | unchecks | should not | reconsideration_individual_mal    | rcu_initiation.xlsx | home               | 104                       |
      | Individual     | enable     | Auto Loan     | checks   | should     | reconsideration_individual_mal    | rcu_initiation.xlsx | home               | 104                       |
      | Non-Individual | disable    | Home Loan     | unchecks | should not | reconsideration_nonindividual_hl | rcu_initiation.xlsx | home               | 104                       |
      | Non-Individual | enable     | Home Loan     | checks   | should     | reconsideration_nonindividual_hl | rcu_initiation.xlsx | home               | 104                       |
      | Non-Individual | disable    | Personal Loan | unchecks | should not | reconsideration_nonindividual_pl | rcu_initiation.xlsx | home               | 104                       |
      | Non-Individual | enable     | Personal Loan | checks   | should     | reconsideration_nonindividual_pl | rcu_initiation.xlsx | home               | 104                       |
      | Non-Individual | disable    | Auto Loan     | unchecks | should not | reconsideration_nonindividual_mal | rcu_initiation.xlsx | home               | 104                       |
      | Non-Individual | enable     | Auto Loan     | checks   | should     | reconsideration_nonindividual_mal | rcu_initiation.xlsx | home               | 104                       |


