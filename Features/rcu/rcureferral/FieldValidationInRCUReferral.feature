@Epic-RCU
@ReviewedBy-aman.nagarkoti
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-yash.sharma
@Release3
@ReviewedByDEV
#FeatureID-ACAUTOCAS-4161
Feature:Field Validation In Rcu Referral

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  Scenario Outline: ACAUTOCAS-3534: Entering <Validity> <Field_Name> <Validity_Reason> in rcu referral screen
    When user navigates to rcu referral screen
    And user reads data from the excel file "<rcuReferralWB>" under sheet "<rcuReferralSheetName>" and row <rcuReferralWB_rowNum>
    And user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in rcu referral
    Then application "<Throws_notThrows>" in rcu referral

    Examples:
      | Validity | Field_Name     | Validity_Reason                        | Throws_notThrows                 | rcuReferralWB     | rcuReferralSheetName | rcuReferralWB_rowNum |
      | valid    | customer name  |                                        | does not throw any error message | rcu_referral.xlsx | rcu_referral         | 0                    |
      | valid    | customer name  | with spaces                            | does not throw any error message | rcu_referral.xlsx | rcu_referral         | 1                    |
      | valid    | customer name  | with ',/-&()$                          | does not throw any error message | rcu_referral.xlsx | rcu_referral         | 2                    |
      | valid    | customer name  | with alphanumeric characters           | does not throw any error message | rcu_referral.xlsx | rcu_referral         | 3                    |
      | invalid  | customer name  | with special character except ',/-&()$ | throws proper error message      | rcu_referral.xlsx | rcu_referral         | 4                    |
      | valid    | application id |                                        | does not throw any error message | rcu_referral.xlsx | rcu_referral         | 4                    |


  Scenario Outline: ACAUTOCAS-3535: <Field_Name> field should be visible in rcu referral screen
    When user navigates to rcu referral screen
    Then "<Field_Name>" should be visible in rcu referral
    Examples:
      | Field_Name       |
      | activity         |
      | application id   |
      | customer Name    |
      | product type     |
      | status           |
      | screening status |


  Scenario Outline: ACAUTOCAS-3536: On clicking advance search checkbox <Field_Name> fields are visible in rcu referral
    When user navigates to rcu referral screen
    And user opens advance search accordion in rcu referral
    Then "<Field_Name>" should be visible in rcu referral
    Examples:
      | Field_Name |
      | product    |
      | scheme     |
      | date       |
      | end date   |


  Scenario Outline: ACAUTOCAS-3537: <Field_Name> fields are non editable in rcu referral
    When user navigates to rcu referral screen
    Then "<Field_Name>" should be non editable
    Examples:
      | Field_Name               |
      | verification date        |
      | sampling status          |
      | agency remarks           |
      | document sampling status |
