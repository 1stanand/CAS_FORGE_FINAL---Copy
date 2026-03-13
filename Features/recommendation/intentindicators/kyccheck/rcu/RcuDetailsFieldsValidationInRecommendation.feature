@Epic-RCU
@Epic-Recommendation
@AuthoredBy-harshita.nayak
@ReviewedBy-
@Release3
@ReviewedByDEV
Feature: Intent Indicators for RCU field validation in Recommendation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Perishable
  @ImplementedBy-yash.sharma
  Scenario Outline: ACAUTOCAS-4845: Viewing the <status> of RCU Details with their <field_name> in Intent Indicators at Recommendation for Individual
    And user moves the application at "<Var_Stage>" stage to rcu "<status>" status
    And user opens an application at "<Var_Stage>" stage from application grid
    And user check RCU tab with "<status>" on recommendation
    When user check the "<status>" of Field Investigations Details at Recommendation
    Then "<field_name>" should be present for view mode in Field Investigations Details

    Examples:
      | status        | field_name     | Var_Stage               |
      | Initiated     | Applicant Name | recommendation_indiv_hl |
      | Initiated     | RCU Status     | recommendation_indiv_hl |
      | Initiated     | RCU Result     | recommendation_indiv_hl |
      | Initiated     | Completion By  | recommendation_indiv_hl |
      | Initiated     | Applicant Name | recommendation_indiv_pl |
      | Initiated     | RCU Status     | recommendation_indiv_pl |
      | Initiated     | RCU Result     | recommendation_indiv_pl |
      | Initiated     | Completion By  | recommendation_indiv_pl |
      | Initiated     | Applicant Name | recommendation_indiv_mal |
      | Initiated     | RCU Status     | recommendation_indiv_mal |
      | Initiated     | RCU Result     | recommendation_indiv_mal |
      | Initiated     | Completion By  | recommendation_indiv_mal |
      | Not-Initiated | RCU Status     | recommendation_indiv_hl |
      | Not-Initiated | Applicant Name | recommendation_indiv_hl |
      | Not-Initiated | RCU Result     | recommendation_indiv_hl |
      | Not-Initiated | Completion By  | recommendation_indiv_hl |
      | Not-Initiated | Applicant Name | recommendation_indiv_pl |
      | Not-Initiated | RCU Status     | recommendation_indiv_pl |
      | Not-Initiated | RCU Result     | recommendation_indiv_pl |
      | Not-Initiated | Completion By  | recommendation_indiv_pl |
      | Not-Initiated | Applicant Name | recommendation_indiv_mal |
      | Not-Initiated | RCU Result     | recommendation_indiv_mal |
      | Not-Initiated | RCU Status     | recommendation_indiv_mal |
      | Not-Initiated | Completion By  | recommendation_indiv_mal |
      | Waived        | Applicant Name | recommendation_indiv_hl |
      | Waived        | RCU Status     | recommendation_indiv_hl |
      | Waived        | RCU Result     | recommendation_indiv_hl |
      | Waived        | Completion By  | recommendation_indiv_hl |
      | Waived        | Applicant Name | recommendation_indiv_pl |
      | Waived        | RCU Status     | recommendation_indiv_pl |
      | Waived        | RCU Result     | recommendation_indiv_pl |
      | Waived        | Completion By  | recommendation_indiv_pl |
      | Waived        | Applicant Name | recommendation_indiv_mal |
      | Waived        | RCU Status     | recommendation_indiv_mal |
      | Waived        | RCU Result     | recommendation_indiv_mal |
      | Waived        | Completion By  | recommendation_indiv_mal |
      | Waived        | Applicant Name | recommendation_indiv_hl |
      | Waived        | RCU Status     | recommendation_indiv_hl |
      | Waived        | RCU Result     | recommendation_indiv_hl |
      | Waived        | Completion By  | recommendation_indiv_hl |
      | Waived        | Applicant Name | recommendation_indiv_pl |
      | Waived        | RCU Status     | recommendation_indiv_pl |
      | Waived        | RCU Result     | recommendation_indiv_pl |
      | Waived        | Completion By  | recommendation_indiv_pl |
      | Waived        | Applicant Name | recommendation_indiv_mal |
      | Waived        | RCU Status     | recommendation_indiv_mal |
      | Waived        | RCU Result     | recommendation_indiv_mal |
      | Waived        | Completion By  | recommendation_indiv_mal |
      | Completed     | Applicant Name | recommendation_indiv_hl |
      | Completed     | RCU Status     | recommendation_indiv_hl |
      | Completed     | RCU Result     | recommendation_indiv_hl |
      | Completed     | Completion By  | recommendation_indiv_hl |
      | Completed     | Applicant Name | recommendation_indiv_pl |
      | Completed     | RCU Status     | recommendation_indiv_pl |
      | Completed     | RCU Result     | recommendation_indiv_pl |
      | Completed     | Completion By  | recommendation_indiv_pl |
      | Completed     | Applicant Name | recommendation_indiv_mal |
      | Completed     | RCU Status     | recommendation_indiv_mal |
      | Completed     | RCU Result     | recommendation_indiv_mal |
      | Completed     | Completion By  | recommendation_indiv_mal |
      | In-Progress   | Applicant Name | recommendation_indiv_hl |
      | In-Progress   | RCU Status     | recommendation_indiv_hl |
      | In-Progress   | RCU Result     | recommendation_indiv_hl |
      | In-Progress   | Completion By  | recommendation_indiv_hl |
      | In-Progress   | Applicant Name | recommendation_indiv_pl |
      | In-Progress   | RCU Status     | recommendation_indiv_pl |
      | In-Progress   | RCU Result     | recommendation_indiv_pl |
      | In-Progress   | Completion By  | recommendation_indiv_pl |
      | In-Progress   | Applicant Name | recommendation_indiv_mal |
      | In-Progress   | RCU Status     | recommendation_indiv_mal |
      | In-Progress   | RCU Result     | recommendation_indiv_mal |
      | In-Progress   | Completion By  | recommendation_indiv_mal |

  @Perishable
  @ImplementedBy-yash.sharma
  Scenario Outline: ACAUTOCAS-4846: Viewing the <status> of RCU Details with their <field_name> in Intent Indicators at Recommendation for Non-Individual
    And user moves the application at "<Var_Stage>" stage to rcu "<status>" status
    And user opens an application at "<Var_Stage>" stage from application grid
    And user check RCU tab with "<status>" on recommendation
    When user check the "<status>" of Field Investigations Details at Recommendation
    Then "<field_name>" should be present for view mode in Field Investigations Details

    Examples:
      | status        | field_name     | Var_Stage                  |
      | Initiated     | Applicant Name | recommendation_nonindiv_hl |
      | Initiated     | RCU Status     | recommendation_nonindiv_hl |
      | Initiated     | RCU Result     | recommendation_nonindiv_hl |
      | Initiated     | Completion By  | recommendation_nonindiv_hl |
      | Initiated     | Applicant Name | recommendation_nonindiv_pl |
      | Initiated     | RCU Status     | recommendation_nonindiv_pl |
      | Initiated     | RCU Result     | recommendation_nonindiv_pl |
      | Initiated     | Completion By  | recommendation_nonindiv_pl |
      | Initiated     | Applicant Name | recommendation_nonindiv_mal |
      | Initiated     | RCU Status     | recommendation_nonindiv_mal |
      | Initiated     | RCU Result     | recommendation_nonindiv_mal |
      | Initiated     | Completion By  | recommendation_nonindiv_mal |
      | Not-Initiated | Applicant Name | recommendation_nonindiv_hl |
      | Not-Initiated | RCU Status     | recommendation_nonindiv_hl |
      | Not-Initiated | RCU Result     | recommendation_nonindiv_hl |
      | Not-Initiated | Completion By  | recommendation_nonindiv_hl |
      | Not-Initiated | Applicant Name | recommendation_nonindiv_pl |
      | Not-Initiated | RCU Status     | recommendation_nonindiv_pl |
      | Not-Initiated | RCU Result     | recommendation_nonindiv_pl |
      | Not-Initiated | Completion By  | recommendation_nonindiv_pl |
      | Not-Initiated | Applicant Name | recommendation_nonindiv_mal |
      | Not-Initiated | RCU Status     | recommendation_nonindiv_mal |
      | Not-Initiated | RCU Result     | recommendation_nonindiv_mal |
      | Not-Initiated | Completion By  | recommendation_nonindiv_mal |
      | Waived        | Applicant Name | recommendation_nonindiv_hl |
      | Waived        | RCU Status     | recommendation_nonindiv_hl |
      | Waived        | RCU Result     | recommendation_nonindiv_hl |
      | Waived        | Completion By  | recommendation_nonindiv_hl |
      | Waived        | Applicant Name | recommendation_nonindiv_pl |
      | Waived        | RCU Status     | recommendation_nonindiv_pl |
      | Waived        | RCU Result     | recommendation_nonindiv_pl |
      | Waived        | Completion By  | recommendation_nonindiv_pl |
      | Waived        | Applicant Name | recommendation_nonindiv_mal |
      | Waived        | RCU Status     | recommendation_nonindiv_mal |
      | Waived        | RCU Result     | recommendation_nonindiv_mal |
      | Waived        | Completion By  | recommendation_nonindiv_mal |
      | Completed     | Applicant Name | recommendation_nonindiv_hl |
      | Completed     | RCU Status     | recommendation_nonindiv_hl |
      | Completed     | RCU Result     | recommendation_nonindiv_hl |
      | Completed     | Completion By  | recommendation_nonindiv_hl |
      | Completed     | Applicant Name | recommendation_nonindiv_pl |
      | Completed     | RCU Status     | recommendation_nonindiv_pl |
      | Completed     | RCU Result     | recommendation_nonindiv_pl |
      | Completed     | Completion By  | recommendation_nonindiv_pl |
      | Completed     | Applicant Name | recommendation_nonindiv_mal |
      | Completed     | RCU Status     | recommendation_nonindiv_mal |
      | Completed     | RCU Result     | recommendation_nonindiv_mal |
      | Completed     | Completion By  | recommendation_nonindiv_mal |
      | In-Progress   | Applicant Name | recommendation_nonindiv_hl |
      | In-Progress   | RCU Status     | recommendation_nonindiv_hl |
      | In-Progress   | RCU Result     | recommendation_nonindiv_hl |
      | In-Progress   | Completion By  | recommendation_nonindiv_hl |
      | In-Progress   | Applicant Name | recommendation_nonindiv_pl |
      | In-Progress   | RCU Status     | recommendation_nonindiv_pl |
      | In-Progress   | RCU Result     | recommendation_nonindiv_pl |
      | In-Progress   | Completion By  | recommendation_nonindiv_pl |
      | In-Progress   | Applicant Name | recommendation_nonindiv_mal |
      | In-Progress   | RCU Status     | recommendation_nonindiv_mal |
      | In-Progress   | RCU Result     | recommendation_nonindiv_mal |
      | In-Progress   | Completion By  | recommendation_nonindiv_mal |


  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-4902: RCU status is waived than view RCU History all data filled in RCU Details with their <field_name> in Intent Indicators at Recommendation for Individual
    And user moves the application at "<Var_Stage>" stage to rcu "<Rcu_Status>" status
    And user opens an application at "<Var_Stage>" stage from application grid
    And user check RCU tab with "waived" on recommendation
    When user select RCU History
    Then "<field_name>" should be filled for view mode in RCU Details

    Examples:
      | field_name            | Rcu_Status | Var_Stage                         |
      | Application ID        | Waived     | recommendation_indiv_rcuwaived_hl |
      | Customer Name         | Waived     | recommendation_indiv_rcuwaived_hl |
      | Product Type          | Waived     | recommendation_indiv_rcuwaived_hl |
      | Product               | Waived     | recommendation_indiv_rcuwaived_hl |
      | Scheme / Card Type    | Waived     | recommendation_indiv_rcuwaived_hl |
      | RCU Status            | Waived     | recommendation_indiv_rcuwaived_hl |
      | RCU Initiation Result | Waived     | recommendation_indiv_rcuwaived_hl |
      | Verification Date     | Waived     | recommendation_indiv_rcuwaived_hl |
      | Completion by         | Waived     | recommendation_indiv_rcuwaived_hl |
      | RCU Result            | Waived     | recommendation_indiv_rcuwaived_hl |
      | Application ID        | Waived     | recommendation_indiv_rcuwaived_pl |
      | Customer Name         | Waived     | recommendation_indiv_rcuwaived_pl |
      | Product Type          | Waived     | recommendation_indiv_rcuwaived_pl |
      | Product               | Waived     | recommendation_indiv_rcuwaived_pl |
      | Scheme / Card Type    | Waived     | recommendation_indiv_rcuwaived_pl |
      | RCU Status            | Waived     | recommendation_indiv_rcuwaived_pl |
      | RCU Initiation Result | Waived     | recommendation_indiv_rcuwaived_pl |
      | Verification Date     | Waived     | recommendation_indiv_rcuwaived_pl |
      | Completion by         | Waived     | recommendation_indiv_rcuwaived_pl |
      | RCU Result            | Waived     | recommendation_indiv_rcuwaived_pl |
      | Application ID        | Waived     | recommendation_indiv_rcuwaived_mal |
      | Customer Name         | Waived     | recommendation_indiv_rcuwaived_mal |
      | Product Type          | Waived     | recommendation_indiv_rcuwaived_mal |
      | Product               | Waived     | recommendation_indiv_rcuwaived_mal |
      | Scheme / Card Type    | Waived     | recommendation_indiv_rcuwaived_mal |
      | RCU Status            | Waived     | recommendation_indiv_rcuwaived_mal |
      | RCU Initiation Result | Waived     | recommendation_indiv_rcuwaived_mal |
      | Verification Date     | Waived     | recommendation_indiv_rcuwaived_mal |
      | Completion by         | Waived     | recommendation_indiv_rcuwaived_mal |
      | RCU Result            | Waived     | recommendation_indiv_rcuwaived_mal |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-4903: RCU status is Completed than view RCU History all data filled in RCU Details with their <field_name> in Intent Indicators at Recommendation for Individual
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Rcu_Status>" status
    And user opens an application at "<Var_Stage>" stage from application grid
    And user check RCU tab with "completed" on recommendation
    When user select RCU History
    Then "<field_name>" should be filled for view mode in RCU Details

    Examples:
      | field_name            | Rcu_Status | Var_Stage                            | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | Application ID        | Completed  | recommendation_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Customer Name         | Completed  | recommendation_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Product Type          | Completed  | recommendation_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Product               | Completed  | recommendation_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Scheme / Card Type    | Completed  | recommendation_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Status            | Completed  | recommendation_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Initiation Result | Completed  | recommendation_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Verification Date     | Completed  | recommendation_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Completion by         | Completed  | recommendation_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Result            | Completed  | recommendation_indiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Application ID        | Completed  | recommendation_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Customer Name         | Completed  | recommendation_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Product Type          | Completed  | recommendation_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Product               | Completed  | recommendation_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Scheme / Card Type    | Completed  | recommendation_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Status            | Completed  | recommendation_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Initiation Result | Completed  | recommendation_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Verification Date     | Completed  | recommendation_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Completion by         | Completed  | recommendation_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Result            | Completed  | recommendation_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Application ID        | Completed  | recommendation_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Customer Name         | Completed  | recommendation_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Product Type          | Completed  | recommendation_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Product               | Completed  | recommendation_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Scheme / Card Type    | Completed  | recommendation_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | RCU Status            | Completed  | recommendation_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | RCU Initiation Result | Completed  | recommendation_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Verification Date     | Completed  | recommendation_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Completion by         | Completed  | recommendation_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | RCU Result            | Completed  | recommendation_indiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-4904: RCU status is waived than view RCU History all data filled in RCU Details with their <field_name> in Intent Indicators at Recommendation for Non-Individual
    And user moves the application at "<Var_Stage>" stage to rcu "<Rcu_Status>" status
    And user opens an application at "<Var_Stage>" stage from application grid
    And user check RCU tab with "waived" on recommendation
    When user select RCU History
    Then "<field_name>" should be filled for view mode in RCU Details

    Examples:
      | field_name            | Rcu_Status | Var_Stage                            |
      | Application ID        | Waived     | recommendation_nonindiv_rcuwaived_hl |
      | Customer Name         | Waived     | recommendation_nonindiv_rcuwaived_hl |
      | Product Type          | Waived     | recommendation_nonindiv_rcuwaived_hl |
      | Product               | Waived     | recommendation_nonindiv_rcuwaived_hl |
      | Scheme / Card Type    | Waived     | recommendation_nonindiv_rcuwaived_hl |
      | RCU Status            | Waived     | recommendation_nonindiv_rcuwaived_hl |
      | RCU Initiation Result | Waived     | recommendation_nonindiv_rcuwaived_hl |
      | Verification Date     | Waived     | recommendation_nonindiv_rcuwaived_hl |
      | Completion by         | Waived     | recommendation_nonindiv_rcuwaived_hl |
      | RCU Result            | Waived     | recommendation_nonindiv_rcuwaived_hl |
      | Application ID        | Waived     | recommendation_nonindiv_rcuwaived_pl |
      | Customer Name         | Waived     | recommendation_nonindiv_rcuwaived_pl |
      | Product Type          | Waived     | recommendation_nonindiv_rcuwaived_pl |
      | Product               | Waived     | recommendation_nonindiv_rcuwaived_pl |
      | Scheme / Card Type    | Waived     | recommendation_nonindiv_rcuwaived_pl |
      | RCU Status            | Waived     | recommendation_nonindiv_rcuwaived_pl |
      | RCU Initiation Result | Waived     | recommendation_nonindiv_rcuwaived_pl |
      | Verification Date     | Waived     | recommendation_nonindiv_rcuwaived_pl |
      | Completion by         | Waived     | recommendation_nonindiv_rcuwaived_pl |
      | RCU Result            | Waived     | recommendation_nonindiv_rcuwaived_pl |
      | Application ID        | Waived     | recommendation_nonindiv_rcuwaived_mal |
      | Customer Name         | Waived     | recommendation_nonindiv_rcuwaived_mal |
      | Product Type          | Waived     | recommendation_nonindiv_rcuwaived_mal |
      | Product               | Waived     | recommendation_nonindiv_rcuwaived_mal |
      | Scheme / Card Type    | Waived     | recommendation_nonindiv_rcuwaived_mal |
      | RCU Status            | Waived     | recommendation_nonindiv_rcuwaived_mal |
      | RCU Initiation Result | Waived     | recommendation_nonindiv_rcuwaived_mal |
      | Verification Date     | Waived     | recommendation_nonindiv_rcuwaived_mal |
      | Completion by         | Waived     | recommendation_nonindiv_rcuwaived_mal |
      | RCU Result            | Waived     | recommendation_nonindiv_rcuwaived_mal |


  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-4905: RCU status is Completed than view RCU History all data filled in RCU Details with their <field_name> in Intent Indicators at Recommendation for Non-Individual
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Rcu_Status>" status
    And user opens an application at "<Var_Stage>" stage from application grid
    And user check RCU tab with "completed" on recommendation
    When user select RCU History
    Then "<field_name>" should be filled for view mode in RCU Details

    Examples:
      | field_name            | Rcu_Status | Var_Stage                               | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | Application ID        | Completed  | recommendation_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Customer Name         | Completed  | recommendation_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Product Type          | Completed  | recommendation_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Product               | Completed  | recommendation_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Scheme / Card Type    | Completed  | recommendation_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Status            | Completed  | recommendation_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Initiation Result | Completed  | recommendation_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Verification Date     | Completed  | recommendation_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Completion by         | Completed  | recommendation_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Result            | Completed  | recommendation_nonindiv_rcucompleted_hl | rcu_initiation.xlsx | home               | 36                        |
      | Application ID        | Completed  | recommendation_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Customer Name         | Completed  | recommendation_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Product Type          | Completed  | recommendation_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Product               | Completed  | recommendation_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Scheme / Card Type    | Completed  | recommendation_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Status            | Completed  | recommendation_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Initiation Result | Completed  | recommendation_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Verification Date     | Completed  | recommendation_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Completion by         | Completed  | recommendation_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | RCU Result            | Completed  | recommendation_nonindiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 36                        |
      | Application ID        | Completed  | recommendation_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Customer Name         | Completed  | recommendation_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Product Type          | Completed  | recommendation_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Product               | Completed  | recommendation_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Scheme / Card Type    | Completed  | recommendation_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | RCU Status            | Completed  | recommendation_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | RCU Initiation Result | Completed  | recommendation_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Verification Date     | Completed  | recommendation_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | Completion by         | Completed  | recommendation_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
      | RCU Result            | Completed  | recommendation_nonindiv_rcucompleted_mal | rcu_initiation.xlsx | home               | 36                        |
