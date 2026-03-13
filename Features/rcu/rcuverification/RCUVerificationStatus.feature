@Epic-RCU
@ReviewedBy-None
@ImplementedBy-deep.maurya
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Release3
@Reconciled
#FeatureID-ACAUTOCAS-508
Feature:Advance Search In Rcu Verification

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
# And user is agent of the agency who is doing rcu verification
# And user is the team lead of agency team
  @Perishable
  Scenario Outline: ACAUTOCAS-3554: Rcu verification is complete on setting sampling status as <status>
    When user navigates to rcu verification screen
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user searches the application using application id at "<Stage>"
    And user selects the application in rcu verification page
    And user sets the sampling status as "<status>" in rcu verification page
    And user saves the status in rcu verification in rcu verification page
    Then application is on rcu referral stage
    Examples:
      | status   | RCUInitiationWB       | RCUInitiation_home | RCUInitiation_home_rowNum | Stage                     |
      | Positive | rcu_verification.xlsx | home               | 6                         | rcu_indiv_verification_pl |
      | Negative | rcu_verification.xlsx | home               | 7                         | rcu_indiv_verification_pl |
      | Neutral  | rcu_verification.xlsx | home               | 8                         | rcu_indiv_verification_pl |

  @Perishable
  Scenario Outline: ACAUTOCAS-3555: Application is not visible in rcu verification screen on setting rcu verification status as <status>
    When user navigates to rcu verification screen
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user searches the application using application id at "<Stage>"
    And user selects the application in rcu verification page
    And user sets the sampling status as "<status>" in rcu verification page
    And user saves the status in rcu verification in rcu verification page
    Then respective applications are not visible in rcu verification page
    Examples:
      | status   | RCUInitiationWB       | RCUInitiation_home | RCUInitiation_home_rowNum | Stage                     |
      | Positive | rcu_verification.xlsx | home               | 9                         | rcu_indiv_verification_pl |
      | Negative | rcu_verification.xlsx | home               | 10                        | rcu_indiv_verification_pl |
      | Neutral  | rcu_verification.xlsx | home               | 11                        | rcu_indiv_verification_pl |
