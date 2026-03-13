@Epic-E2E
@AuthoredBy-anshika.gupta
@Conventional
@E2EOrder
@Release
@RcuReferral
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise


########################################## STAGE : RCU REFERRAL #################################################################################

  @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19862: Save rcu referral decision in rcu referral screen for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to rcu referral screen
    And user reads data from the excel file "<rcuReferralWB>" under sheet "<RcuReferral_rcuReferral>" and row <RcuReferral_rcuReferral_rowNum>
    When user search the application in rcu referral
    And user selects the application in rcu referral page
    And user sets the final decision as "<decision>"
    And user saves the decision in rcu referral page
    Then referral result should be saved successfully
    Examples:
      | LogicalID | ProductType                | decision | rcuReferralWB     | RcuReferral_rcuReferral | RcuReferral_rcuReferral_rowNum |
      | AL00001   | Auto Loan                  | Positive | rcu_referral.xlsx | rcu_referral            | 11                             |
      | PL00001   | Personal Loan              | Positive | rcu_referral.xlsx | rcu_referral            | 11                             |
      | HL00001   | Home Loan                  | Positive | rcu_referral.xlsx | rcu_referral            | 11                             |
      | LAP00001  | Loan Against Property      | Positive | rcu_referral.xlsx | rcu_referral            | 11                             |
      | OL00001   | Omni Loan                  | Positive | rcu_referral.xlsx | rcu_referral            | 11                             |
      | PL00002   | Personal Loan              | Positive | rcu_referral.xlsx | rcu_referral            | 11                             |
      | CC00002   | Credit Card Application    | Positive | rcu_referral.xlsx | rcu_referral            | 11                             |
      | AL00002   | Auto Loan                  | Positive | rcu_referral.xlsx | rcu_referral            | 11                             |
      | AL00003   | Auto Loan                  | Positive | rcu_referral.xlsx | rcu_referral            | 11                             |
      | MHF00002  | Micro Housing Finance      | Positive | rcu_referral.xlsx | rcu_referral            | 11                             |
      | FAS00001  | Finance Against Securities | Positive | rcu_referral.xlsx | rcu_referral            | 11                             |