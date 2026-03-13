@Epic-RCU
@ReviewedBy-None
@ImplementedBy-aman.nagarkoti
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Release2
@ReviewedByDEV
#FeatureID-ACAUTOCAS-513
Feature:Search Application In Rcu Verification

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7
    And user is agent of the agency who is doing rcu verification
    And user is the team lead of agency team

  @Perishable
  Scenario: ACAUTOCAS-2585: Search application of rcu verification stage using only application id in rcu verification
    When user navigates to rcu verification screen
    And user searches the application using application id at "rcu_indiv_verification_pl" stage in rcu verification
    Then application should be visible according to the application id

  Scenario: ACAUTOCAS-2586: Search application of rcu verification stage using status as in progress in rcu verification
    When user navigates to rcu verification screen
    And user searches the application using status as in progress
    Then application with status as in progress are visible

  Scenario Outline: ACAUTOCAS-3556: Unable to search application of rcu verification stage using status as <var> in rcu verification
    When user navigates to rcu verification screen
    And user searches the application using status as "<var>" in rcu verification
    Then application with status as "<var>" are not visible
    Examples:
      | var           |
      | initiated     |
      | not-initiated |
      | completed     |
      | waived        |

  @Perishable
  Scenario Outline: ACAUTOCAS-3557: Search application of rcu verification stage using application id along with <var> in rcu verification
    When user navigates to rcu verification screen
    And user searches the application using application id at "<Stage>" stage in rcu verification
    And user searches the application using "<var>"
    Then application should be visible according to the application id
    Examples:
      | var                                | Stage                     |
      | Activity                           | rcu_indiv_verification_pl |
      | Customer Name                      | rcu_indiv_verification_pl |
      | Product Type                       | rcu_indiv_verification_pl |
      | Screening Status Sampling Required | rcu_indiv_verification_pl |

  @Perishable
  Scenario Outline: ACAUTOCAS-3558: Unable to search application of rcu verification stage using application id along with <var> in rcu verification
    When user navigates to rcu verification screen
    And user searches the application using application id at "<Stage>" stage in rcu verification
    And user searches the application using "<var>"
    Then No application is shown in rcu verification
    Examples:
      | var                               | Stage                     |
      | Screening Status Waived           | rcu_indiv_verification_pl |
      | Screening Status RCU Pending      | rcu_indiv_verification_pl |
      | Screening Status Screening Not Ok | rcu_indiv_verification_pl |
      | Screening Status Screening Ok     | rcu_indiv_verification_pl |
      | Screening Status Sampling Not Ok  | rcu_indiv_verification_pl |

  Scenario Outline: ACAUTOCAS-3559: Search application of rcu verification stage using status as in progress along with <var> in rcu verification
    When user navigates to rcu verification screen
    And user reads data from the excel file "rcu_verification.xlsx" under sheet "home" and row <rcu_initiation_rowNumber>
    And user searches the application using status as "in-progress" along with "<var>"
    Then applications with status as "in- progress" are visible in rcu verification page
    Examples:
      | var                                | rcu_initiation_rowNumber |
      | Activity                           | 13                       |
      | Customer Name                      | 13                       |
      | Product Type                       | 13                       |
      | Screening Status Sampling Required | 13                       |

  Scenario Outline: ACAUTOCAS-3560: Unable to search application of rcu verification stage using status as <status> along with <var> in rcu verification
    When user navigates to rcu verification screen
    And user reads data from the excel file "rcu_initiation.xlsx" under sheet "home" and row <rcu_initiation_rowNumber>
    And user searches the application using status as "<status>" along with "<var>"
    Then no applications are shown in rcu verification screen
    Examples:
      | status        | var                                | rcu_initiation_rowNumber |
      | initiated     | Activity                           | 6                        |
      | not-initiated | Activity                           | 6                        |
      | completed     | Activity                           | 6                        |
      | waived        | Activity                           | 6                        |
      | initiated     | Customer Name                      | 6                        |
      | not-initiated | Customer Name                      | 6                        |
      | completed     | Customer Name                      | 6                        |
      | waived        | Customer Name                      | 6                        |
      | initiated     | Product Type                       | 6                        |
      | not-initiated | Product Type                       | 6                        |
      | completed     | Product Type                       | 6                        |
      | waived        | Product Type                       | 6                        |
      | in-progress   | Screening Status Waived            | 6                        |
      | initiated     | Screening Status Waived            | 6                        |
      | not-initiated | Screening Status Waived            | 6                        |
      | completed     | Screening Status Waived            | 6                        |
      | waived        | Screening Status Waived            | 6                        |
      | initiated     | Screening Status RCU Pending       | 6                        |
      | not-initiated | Screening Status RCU Pending       | 6                        |
      | completed     | Screening Status RCU Pending       | 6                        |
      | waived        | Screening Status RCU Pending       | 6                        |
      | in-progress   | Screening Status RCU Pending       | 6                        |
      | initiated     | Screening Status Sampling Required | 6                        |
      | not-initiated | Screening Status Sampling Required | 6                        |
      | completed     | Screening Status Sampling Required | 6                        |
      | waived        | Screening Status Sampling Required | 6                        |
      | initiated     | Screening Status Screening Not Ok  | 6                        |
      | not-initiated | Screening Status Screening Not Ok  | 6                        |
      | completed     | Screening Status Screening Not Ok  | 6                        |
      | waived        | Screening Status Screening Not Ok  | 6                        |
      | in-progress   | Screening Status Screening Not Ok  | 6                        |
      | initiated     | Screening Status Screening Ok      | 6                        |
      | not-initiated | Screening Status Screening Ok      | 6                        |
      | completed     | Screening Status Screening Ok      | 6                        |
      | waived        | Screening Status Screening Ok      | 6                        |
      | in-progress   | Screening Status Screening Ok      | 6                        |

  Scenario Outline: ACAUTOCAS-3561: Search the application of rcu verification stage using only <var> in rcu verification
    When user navigates to rcu verification screen
    And user reads data from the excel file "rcu_initiation.xlsx" under sheet "home" and row <rcu_initiation_rowNumber>
    And user searches the application using "<var>"
    Then applications are visible in rcu verification page
    Examples:
      | var              | rcu_initiation_rowNumber |
      | Activity         | 6                        |
      | Customer Name    | 6                        |
      | Product Type     | 6                        |
      | Screening Status | 6                        |
