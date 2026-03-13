@Epic-RCU
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-aman.nagarkoti
@ImplementedBy-manish.yadav2
@Release3
@Reconciled
@ReviewedByDEV
#FeatureID-ACAUTOCAS-514
Feature:Advance Search In rcu referral


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7


  Scenario Outline: ACAUTOCAS-3530: Search application of rcu referral stage using application id along with <var> in rcu referral
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user set the result as "<Var1>" in rcu initiation
    And user saves the result after adding the reason for "<Var1>"
    When user navigates to rcu referral screen
    And user reads data from the excel file "<RcuReferralWB>" under sheet "<RcuReferral_rcuReferral>" and row <RcuReferral_rcuReferral_rowNum>
    And user searches the application using application id and along with "<var>"
    Then respective applications are visible in rcu referral page according to their id
    Examples:
      | var      | RcuReferralWB     | RcuReferral_rcuReferral | RcuReferral_rcuReferral_rowNum | Var_Stage                             | Status    | Var1         | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | Product  | rcu_referral.xlsx | rcu_referral            | 67                             | disbursal_indiv_pl                    | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Scheme   | rcu_referral.xlsx | rcu_referral            | 20                             | recommendation_indiv_rcuinprogress_pl | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Date     | rcu_referral.xlsx | rcu_referral            | 67                             | disbursal_indiv_pl                    | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | End Date | rcu_referral.xlsx | rcu_referral            | 20                             | recommendation_indiv_rcuinprogress_pl | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |


  Scenario Outline: ACAUTOCAS-3531: Search application of rcu referral stage using status as in progress along with <var> in rcu referral
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user set the result as "<Var1>" in rcu initiation
    And user saves the result after adding the reason for "<Var1>"
    When user navigates to rcu referral screen
    And user reads data from the excel file "<RcuReferralWB>" under sheet "<RcuReferral_rcuReferral>" and row <RcuReferral_rcuReferral_rowNum>
    And user searches the application using application id and along with "<var>"
    Then respective applications are visible in rcu referral page according to their id and status as in progress
    Examples:
      | var      | RcuReferralWB     | RcuReferral_rcuReferral | RcuReferral_rcuReferral_rowNum | Var_Stage                             | Status    | Var1         | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | Product  | rcu_referral.xlsx | rcu_referral            | 20                             | recommendation_indiv_rcuinprogress_pl | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Scheme   | rcu_referral.xlsx | rcu_referral            | 67                             | disbursal_indiv_pl                    | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Date     | rcu_referral.xlsx | rcu_referral            | 20                             | recommendation_indiv_rcuinprogress_pl | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | End Date | rcu_referral.xlsx | rcu_referral            | 67                             | disbursal_indiv_pl                    | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |


  Scenario Outline: ACAUTOCAS-3532: Unable to search application of rcu referral stage using status as <status> along with <var> in rcu referral
    When user navigates to rcu referral screen
    And user reads data from the excel file "<RcuReferralWB>" under sheet "<RcuReferral_rcuReferral>" and row <RcuReferral_rcuReferral_rowNum>
    And user searches the application using status as "<status>" along with "<var>" in rcu referral
    Then respective applications are not visible in rcu referral page
    Examples:
      | status        | var      | RcuReferralWB     | RcuReferral_rcuReferral | RcuReferral_rcuReferral_rowNum |
      | initiated     | Product  | rcu_referral.xlsx | rcu_referral            | 0                              |
      | not initiated | Product  | rcu_referral.xlsx | rcu_referral            | 0                              |
      | completed     | Product  | rcu_referral.xlsx | rcu_referral            | 0                              |
      | waived        | Product  | rcu_referral.xlsx | rcu_referral            | 0                              |
      | initiated     | Scheme   | rcu_referral.xlsx | rcu_referral            | 0                              |
      | not initiated | Scheme   | rcu_referral.xlsx | rcu_referral            | 0                              |
      | completed     | Scheme   | rcu_referral.xlsx | rcu_referral            | 0                              |
      | waived        | Scheme   | rcu_referral.xlsx | rcu_referral            | 0                              |
      | initiated     | Date     | rcu_referral.xlsx | rcu_referral            | 0                              |
      | not initiated | Date     | rcu_referral.xlsx | rcu_referral            | 0                              |
      | completed     | Date     | rcu_referral.xlsx | rcu_referral            | 0                              |
      | waived        | Date     | rcu_referral.xlsx | rcu_referral            | 0                              |
      | initiated     | End Date | rcu_referral.xlsx | rcu_referral            | 0                              |
      | not initiated | End Date | rcu_referral.xlsx | rcu_referral            | 0                              |
      | completed     | End Date | rcu_referral.xlsx | rcu_referral            | 0                              |
      | waived        | End Date | rcu_referral.xlsx | rcu_referral            | 0                              |

    #FeatureID-ACAUTOCAS-7111
  Scenario Outline: ACAUTOCAS-3533:Search the application of rcu referral stage using only <var> in rcu referral
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user set the result as "<Var1>" in rcu initiation
    And user saves the result after adding the reason for "<Var1>"
    When user navigates to rcu referral screen
    And user reads data from the excel file "<RcuReferralWB>" under sheet "<RcuReferral_rcuReferral>" and row <RcuReferral_rcuReferral_rowNum>
    And user searches the application using only "<var>"
    Then application is displayed

    Examples:
      | var      | RcuReferralWB     | RcuReferral_rcuReferral | RcuReferral_rcuReferral_rowNum | Var_Stage                             | Status    | Var1         | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | Scheme   | rcu_referral.xlsx | rcu_referral            | 67                             | disbursal_indiv_pl                    | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | End Date | rcu_referral.xlsx | rcu_referral            | 20                             | recommendation_indiv_rcuinprogress_pl | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Product  | rcu_referral.xlsx | rcu_referral            | 67                             | disbursal_indiv_pl                    | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Date     | rcu_referral.xlsx | rcu_referral            | 20                             | recommendation_indiv_rcuinprogress_pl | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
