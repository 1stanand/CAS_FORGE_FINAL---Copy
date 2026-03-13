@Epic-RCU
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-aman.nagarkoti
@ImplementedBy-manish.yadav2
@Release3
@ReviewedByDEV
@Reconciled
# not executing due to perishable data
#FeatureID-ACAUTOCAS-4111
Feature:RCU Referral Decision


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  Scenario Outline: ACAUTOCAS-3538: Rcu referral is done on setting rcu referral decision as <decision>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user set the result as "<Var>" in rcu initiation
    And user saves the result after adding the reason for "<Var>"
    When user navigates to rcu referral screen
    And user reads data from the excel file "<rcuReferralWB>" under sheet "<RcuReferral_rcuReferral>" and row <RcuReferral_rcuReferral_rowNum>
    And user searches the application using application id
    And user selects the application in rcu referral page
    And user sets the final decision as "<decision>"
    And user saves the decision in rcu referral page
    Then status of the application is completed in rcu initiation

    Examples:
      | decision                    | rcuReferralWB     | RcuReferral_rcuReferral | RcuReferral_rcuReferral_rowNum | Var_Stage     | Status    | Var          | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | Positive                    | rcu_referral.xlsx | rcu_referral            | 11                             | dde_indiv_mal | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Could not Verify            | rcu_referral.xlsx | rcu_referral            | 2                              | dde_indiv_mal | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Document Decline            | rcu_referral.xlsx | rcu_referral            | 3                              | dde_indiv_mal | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Profile Decline             | rcu_referral.xlsx | rcu_referral            | 4                              | dde_indiv_mal | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Referral Referred To Credit | rcu_referral.xlsx | rcu_referral            | 5                              | dde_indiv_mal | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |

  Scenario Outline: ACAUTOCAS-3539: Application is not visible in rcu referral screen on setting rcu referral decision as <decision>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user set the result as "<Var>" in rcu initiation
    And user saves the result after adding the reason for "<Var>"
    When user navigates to rcu referral screen
    And user reads data from the excel file "<rcuReferralWB>" under sheet "<RcuReferral_rcuReferral>" and row <RcuReferral_rcuReferral_rowNum>
    And user searches the application using application id
    And user selects the application in rcu referral page
    And user sets the final decision as "<decision>"
    And user saves the decision in rcu referral page
    Then application is not visible in rcu referral page

    Examples:
      | decision                    | rcuReferralWB     | RcuReferral_rcuReferral | RcuReferral_rcuReferral_rowNum | Var_Stage    | Status    | Var          | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | Positive                    | rcu_referral.xlsx | rcu_referral            | 6                              | dde_indiv_pl | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Could not Verify            | rcu_referral.xlsx | rcu_referral            | 7                              | dde_indiv_pl | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Document Decline            | rcu_referral.xlsx | rcu_referral            | 8                              | dde_indiv_pl | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Profile Decline             | rcu_referral.xlsx | rcu_referral            | 9                              | dde_indiv_pl | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
      | Referral Referred To Credit | rcu_referral.xlsx | rcu_referral            | 10                             | dde_indiv_pl | Initiated | Screening Ok | rcu_initiation.xlsx | home               | 37                        |
