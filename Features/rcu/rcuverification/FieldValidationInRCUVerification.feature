@Epic-RCU
@ReviewedBy-aman.nagarkoti
@ImplementedBy-deep.maurya
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Release3
@ReviewedByDEV
#FeatureID-ACAUTOCAS-4160
Feature:Field Validation In RCU Verification

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  Scenario Outline: ACAUTOCAS-3550:  Entering <Validity> <Field_Name> <Validity_Reason> in rcu verification screen
    When user navigates to rcu verification screen
    And user reads data from the excel file "<RCUVerificationWB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And  user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in rcu verification
    Then application "<Throws_notThrows>" in rcu verification page
    Examples:
      | Validity | Field_Name    | Validity_Reason                        | Throws_notThrows                 | RCUVerificationWB     | RCUVerification_home | RCUVerification_home_rowNum |
      | valid    | customer name |                                        | does not throw any error message | rcu_verification.xlsx | home                 | 1                           |
      | valid    | customer name | with spaces                            | does not throw any error message | rcu_verification.xlsx | home                 | 2                           |
      | valid    | customer name | with ',/-&()$                          | does not throw any error message | rcu_verification.xlsx | home                 | 3                           |
      | valid    | customer name | with alphanumeric characters           | does not throw any error message | rcu_verification.xlsx | home                 | 4                           |
      | invalid  | customer name | with special character except ',/-&()$ | throws proper error message      | rcu_verification.xlsx | home                 | 5                           |


  Scenario Outline: ACAUTOCAS-3551: <Field_Name> field should be visible in rcu verification screen
    When user navigates to rcu verification screen
    Then "<Field_Name>" should be visible in rcu verification page
    Examples:
      | Field_Name       |
      | activity         |
      | application id   |
      | customer Name    |
      | product type     |
      | status           |
      | screening status |


  Scenario Outline: ACAUTOCAS-3552: On clicking advance search checkbox <Field_Name> fields are visible in rcu verification
    When user navigates to rcu verification screen
    And user opens advance search accordion in rcu verification
    Then "<Field_Name>" should be visible in rcu verification page
    Examples:
      | Field_Name |
      | product    |
      | scheme     |
      | date       |
      | end date   |


  Scenario Outline: ACAUTOCAS-3553: <Field_Name> fields are editable in rcu referral
    When user navigates to rcu verification screen
    Then "<Field_Name>" should be editable in rcu verification page
    Examples:
      | Field_Name        |
      | verification date |
      | sampling status   |

