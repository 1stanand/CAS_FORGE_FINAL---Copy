@Epic-RCU
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-aman.nagarkoti
@ImplementedBy-manish.yadav2
@Release3
@ReviewedByDEV
@Reconciled
#FeatureID- ACAUTOCAS-514
Feature:Advance Search In Rcu Verification

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user is agent of the agency who is doing rcu verification
    And user is the team lead of agency team

  Scenario Outline: ACAUTOCAS-3546: Search application of rcu verification stage using application id along with <var> in rcu verification
    And user reads data from the excel file "<RcuVerificationWB>" under sheet "<RcuVerification_SheetName>" and row <RcuVerification_RowNum>
    And user moves the application to "<Var_Stage>" stage
    When user navigates to rcu verification screen
    And user searches the application using application id along with "<var>" in rcu verification
    Then respective applications are visible in rcu verification page according to their id
    Examples:
      | var      | RcuVerificationWB     | RcuVerification_SheetName | RcuVerification_RowNum |Var_Stage    |
      | Product  | rcu_verification.xlsx | home                      | 14                     |RCU          |
      | Scheme   | rcu_verification.xlsx | home                      | 14                     |RCU          |
      | Date     | rcu_verification.xlsx | home                      | 14                     |RCU          |
      | End Date | rcu_verification.xlsx | home                      | 14                     |RCU          |

  Scenario Outline: ACAUTOCAS-3547: Search application of rcu verification stage using status as in progress along with <var> in rcu verification
    And user reads data from the excel file "<RcuVerificationWB>" under sheet "<RcuVerification_SheetName>" and row <RcuVerification_RowNum>
    And user moves the application to "<Var_Stage>" stage
    When user navigates to rcu verification screen
    And user searches the application using application id along with "<var>" in rcu verification and status as in progress
    Then respective applications are visible in rcu verification page according to their id and status as in progress
    Examples:
      | var      | RcuVerificationWB     | RcuVerification_SheetName | RcuVerification_RowNum |Var_Stage    |
      | Product  | rcu_verification.xlsx | home                      | 14                     |RCU          |
      | Scheme   | rcu_verification.xlsx | home                      | 14                     |RCU          |
      | Date     | rcu_verification.xlsx | home                      | 14                     |RCU          |
      | End Date | rcu_verification.xlsx | home                      | 14                     |RCU          |

  Scenario Outline: ACAUTOCAS-3548: Unable to search application of rcu verification stage using status as <status> along with <var> in rcu verification
    When user navigates to rcu verification screen
    And user reads data from the excel file "<RcuVerificationWB>" under sheet "<RcuVerification_SheetName>" and row <RcuVerification_RowNum>
    And user searches the application using status as "<status>" along with "<var>" in rcu verification
    Then respective applications are not visible in rcu verification page
    Examples:
      | status        | var      | RcuVerificationWB     | RcuVerification_SheetName | RcuVerification_RowNum |
      | initiated     | Product  | rcu_verification.xlsx | home                      | 0                      |
      | not initiated | Product  | rcu_verification.xlsx | home                      | 0                      |
      | completed     | Product  | rcu_verification.xlsx | home                      | 0                      |
      | waived        | Product  | rcu_verification.xlsx | home                      | 0                      |
      | initiated     | Scheme   | rcu_verification.xlsx | home                      | 0                      |
      | not initiated | Scheme   | rcu_verification.xlsx | home                      | 0                      |
      | completed     | Scheme   | rcu_verification.xlsx | home                      | 0                      |
      | waived        | Scheme   | rcu_verification.xlsx | home                      | 0                      |
      | initiated     | Date     | rcu_verification.xlsx | home                      | 0                      |
      | not initiated | Date     | rcu_verification.xlsx | home                      | 0                      |
      | completed     | Date     | rcu_verification.xlsx | home                      | 0                      |
      | waived        | Date     | rcu_verification.xlsx | home                      | 0                      |
      | initiated     | End Date | rcu_verification.xlsx | home                      | 0                      |
      | not initiated | End Date | rcu_verification.xlsx | home                      | 0                      |
      | completed     | End Date | rcu_verification.xlsx | home                      | 0                      |
      | waived        | End Date | rcu_verification.xlsx | home                      | 0                      |

     #FeatureID-ACAUTOCAS-7156
  Scenario Outline: ACAUTOCAS-3549:Search the application of rcu verification stage using only <var> in rcu verification
    And user reads data from the excel file "<RcuVerificationWB>" under sheet "<RcuVerification_SheetName>" and row <RcuVerification_RowNum>
    And user moves the application to "<Var_Stage>" stage
    When user navigates to rcu verification screen
    And user searches the application using only "<var>"
    Then application is displayed

    Examples:
      | var      | RcuVerificationWB     | RcuVerification_SheetName | RcuVerification_RowNum |Var_Stage    |
      | Product  | rcu_verification.xlsx | home                      | 14                     |RCU          |
      | Scheme   | rcu_verification.xlsx | home                      | 14                     |RCU          |
      | End Date | rcu_verification.xlsx | home                      | 14                     |RCU          |
      | Date     | rcu_verification.xlsx | home                      | 14                     |RCU          |