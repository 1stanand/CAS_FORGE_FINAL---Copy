@Epic-RCU
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-kanika.mahal
@ReviewedBy-aman.nagarkoti
@ReviewedByDEV
#FeatureID-ACAUTOCAS-513
Feature:Search Application In rcu referral

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  @Release3
  Scenario: ACAUTOCAS-2583: Search application of rcu referral stage using only application id in rcu referral
    When user navigates to rcu referral screen
    And user reads data from the excel file "rcu_referral.xlsx" under sheet "rcu_referral" and row 13
    And user searches the application using application id
    Then respective applications are visible in rcu referral page according to their id

  @Release3
  Scenario: ACAUTOCAS-2584: Search application of rcu referral stage using status as in progress in rcu referral
    When user navigates to rcu referral screen
    And user searches the application using status as in progress
    Then application with status as in progress are visible

  @Release3
  Scenario Outline: ACAUTOCAS-3540: Unable to search application of rcu referral stage using status as <var> in rcu referral
    When user navigates to rcu referral screen
    And user reads data from the excel file "rcu_referral.xlsx" under sheet "rcu_referral" and row 13
    And user searches the application using status as "<var>"
    Then application with status as "<var>" are not visible
    Examples:
      | var           |
      | initiated     |
      | not initiated |
      | completed     |
      | waived        |

  @Release3
  Scenario Outline: ACAUTOCAS-3541: Search application of rcu referral stage using application id along with <var> in rcu referral
    When user navigates to rcu referral screen
    And user reads data from the excel file "<rcu_referralWB>" under sheet "<sheet>" and row <row>
    And user searches the application using application id along with "<var>"
    Then applications are visible in rcu referral page according to their id
    Examples:
      | var                           | rcu_referralWB    | sheet        | row |
      | Activity                      | rcu_referral.xlsx | rcu_referral | 48  |
      | Customer Name                 | rcu_referral.xlsx | rcu_referral | 48  |
      | Product Type                  | rcu_referral.xlsx | rcu_referral | 48  |
      | Screening Status Screening OK | rcu_referral.xlsx | rcu_referral | 48  |

  @Release3
  Scenario Outline: ACAUTOCAS-3542: Unable to search application of rcu referral stage using application id along with <var> in rcu referral
    When user navigates to rcu referral screen
    And user reads data from the excel file "rcu_referral.xlsx" under sheet "rcu_referral" and row 16
    And user searches the application using application id along with "<var>"
    Then application with screening status as "<var>" are not visible
    Examples:
      | var                                |
      | Screening Status Waived            |
      | Screening Status RCU Pending       |
      | Screening Status Screening Not Ok  |
      | Screening Status Sampling Not Ok   |
      | Screening Status Sampling Required |

  Scenario Outline: ACAUTOCAS-3544: Unable to search application of rcu referral stage using status as <status> along with <var> in rcu referral
    When user navigates to rcu referral screen
    And user reads data from the excel file "<rcu_referralWB>" under sheet "<sheet>" and row <row>
    And user searches the application using status as "<status>" along with "<var>"
    Then application with screening status as "<var>" are not visible
    @Release3
    Examples:
      | status        | var                                | rcu_referralWB    | sheet        | row |
      | initiated     | Activity                           | rcu_referral.xlsx | rcu_referral | 15  |
      | not-initiated | Activity                           | rcu_referral.xlsx | rcu_referral | 15  |
      | completed     | Activity                           | rcu_referral.xlsx | rcu_referral | 16  |
      | waived        | Activity                           | rcu_referral.xlsx | rcu_referral | 15  |
      | initiated     | Customer Name                      | rcu_referral.xlsx | rcu_referral | 15  |
      | not-initiated | Customer Name                      | rcu_referral.xlsx | rcu_referral | 15  |
      | completed     | Customer Name                      | rcu_referral.xlsx | rcu_referral | 16  |
      | waived        | Customer Name                      | rcu_referral.xlsx | rcu_referral | 15  |
      | initiated     | Product Type                       | rcu_referral.xlsx | rcu_referral | 15  |
      | not-initiated | Product Type                       | rcu_referral.xlsx | rcu_referral | 16  |
      | completed     | Product Type                       | rcu_referral.xlsx | rcu_referral | 16  |
      | waived        | Product Type                       | rcu_referral.xlsx | rcu_referral | 15  |
      | initiated     | Screening Status Waived            | rcu_referral.xlsx | rcu_referral | 15  |
      | not-initiated | Screening Status Waived            | rcu_referral.xlsx | rcu_referral | 15  |
      | completed     | Screening Status Waived            | rcu_referral.xlsx | rcu_referral | 15  |
      | waived        | Screening Status Waived            | rcu_referral.xlsx | rcu_referral | 15  |
      | initiated     | Screening Status RCU Pending       | rcu_referral.xlsx | rcu_referral | 15  |
      | not-initiated | Screening Status RCU Pending       | rcu_referral.xlsx | rcu_referral | 15  |
      | completed     | Screening Status RCU Pending       | rcu_referral.xlsx | rcu_referral | 15  |
      | waived        | Screening Status RCU Pending       | rcu_referral.xlsx | rcu_referral | 15  |
      | initiated     | Screening Status Sampling Required | rcu_referral.xlsx | rcu_referral | 15  |
      | not-initiated | Screening Status Sampling Required | rcu_referral.xlsx | rcu_referral | 15  |
      | waived        | Screening Status Sampling Required | rcu_referral.xlsx | rcu_referral | 15  |
      | initiated     | Screening Status Screening Not Ok  | rcu_referral.xlsx | rcu_referral | 15  |
      | not-initiated | Screening Status Screening Not Ok  | rcu_referral.xlsx | rcu_referral | 15  |
      | completed     | Screening Status Screening Not Ok  | rcu_referral.xlsx | rcu_referral | 15  |
      | waived        | Screening Status Screening Not Ok  | rcu_referral.xlsx | rcu_referral | 15  |
      | initiated     | Screening Status Screening Ok      | rcu_referral.xlsx | rcu_referral | 15  |
      | not-initiated | Screening Status Screening Ok      | rcu_referral.xlsx | rcu_referral | 15  |
      | completed     | Screening Status Screening Ok      | rcu_referral.xlsx | rcu_referral | 15  |
      | waived        | Screening Status Screening Ok      | rcu_referral.xlsx | rcu_referral | 15  |
      | completed     | Screening Status Sampling Required | rcu_referral.xlsx | rcu_referral | 16  |

    @NotImplemented
    Examples:
      | status        | var                                |
      | in-progress   | Screening Status Waived            |
      | in-progress   | Screening Status RCU Pending       |
  @Release3
  Scenario Outline: ACAUTOCAS-3545: Unable to search the application of rcu referral stage using only <var> in rcu referral
    When user navigates to rcu referral screen
    And user reads data from the excel file "<rcu_referralWB>" under sheet "<sheet>" and row <row>
    And user searches the application using "<var>"
    Then No application is shown with proper error message
    Examples:
      | var                               | rcu_referralWB    | sheet        | row |
      | Activity                          | rcu_referral.xlsx | rcu_referral | 14  |
      | Customer Name                     | rcu_referral.xlsx | rcu_referral | 14  |
      | Product Type                      | rcu_referral.xlsx | rcu_referral | 14  |
      | Screening Status RCU Pending      | rcu_referral.xlsx | rcu_referral | 14  |
      | Screening Status Screening Not Ok | rcu_referral.xlsx | rcu_referral | 16  |

  @NotImplemented
  Scenario Outline: ACAUTOCAS-3543: Search application of rcu referral stage using status as in progress along with <var> in rcu referral
    When user navigates to rcu referral screen
    And user searches the application using application id along with "<var>"
    Then respective applications are visible
    Examples:
      | var               |
      | Activity          |
      | Customer Name     |
      | Product Type      |
      | Sampling Required |
